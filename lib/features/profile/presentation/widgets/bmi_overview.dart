import 'package:active_fit/core/domain/entity/user_bmi_entity.dart';
import 'package:active_fit/core/presentation/widgets/info_dialog.dart';
import 'package:active_fit/generated/l10n.dart';
import 'package:flutter/material.dart';

class BMIOverview extends StatefulWidget {
  final double bmiValue;
  final UserNutritionalStatus nutritionalStatus;

  const BMIOverview(
      {super.key, required this.bmiValue, required this.nutritionalStatus});

  @override
  _BMIOverviewState createState() => _BMIOverviewState();
}

class _BMIOverviewState extends State<BMIOverview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(36.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getContainerColorTheme(context),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '${widget.bmiValue.toStringAsFixed(1)}',
                    style: getContainerTextStyle(
                        context,
                        Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontWeight: FontWeight.w500)),
                  ),
                  Text(S.of(context).bmiLabel,
                      style: getContainerTextStyle(
                          context, Theme.of(context).textTheme.titleLarge))
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.nutritionalStatus.getName(context),
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Tooltip(
                  message: S.of(context).bmiInformation,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const InfoDialog(
                          title: "BMI",
                          body:
                              'Body Mass Index (BMI) is a measure of body fat based on height and weight.',
                        ),
                      );
                    },
                    child: const Icon(Icons.help_outline_outlined),
                  ),
                ),
              ],
            ),
            Text(
              "${S.of(context).healthRiskLabel} ${widget.nutritionalStatus.getRiskStatus(context)}",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.7),
                  ),
            ),
            const SizedBox(height: 12.0),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Theme.of(context)
                  .colorScheme
                  .primaryContainer
                  .withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const Icon(Icons.tips_and_updates,
                        size: 28, color: Colors.orangeAccent),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        getHealthTips(widget.nutritionalStatus),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getContainerColorTheme(BuildContext context) {
    switch (widget.nutritionalStatus) {
      case UserNutritionalStatus.underWeight:
        return Colors.blue.withOpacity(0.2);
      case UserNutritionalStatus.normalWeight:
        return Colors.green.withOpacity(0.5);
      case UserNutritionalStatus.preObesity:
        return Colors.orange.withOpacity(0.4);
      case UserNutritionalStatus.obesityClassI:
        return Colors.deepOrange.withOpacity(0.5);
      case UserNutritionalStatus.obesityClassII:
        return Colors.red.withOpacity(0.6);
      case UserNutritionalStatus.obesityClassIII:
        return Colors.redAccent;
    }
  }

  TextStyle? getContainerTextStyle(BuildContext context, TextStyle? style) {
    return style?.copyWith(
      color: widget.nutritionalStatus == UserNutritionalStatus.normalWeight
          ? Colors.black
          : Colors.white,
    );
  }

  String getHealthTips(UserNutritionalStatus nutritionalStatus) {
    switch (nutritionalStatus) {
      case UserNutritionalStatus.underWeight:
        return S.of(context).underWeightTips;
      case UserNutritionalStatus.normalWeight:
        return S.of(context).normalWeightTips;
      case UserNutritionalStatus.preObesity:
        return S.of(context).preObesityTips;
      case UserNutritionalStatus.obesityClassI:
        return S.of(context).obesityClassITips;
      case UserNutritionalStatus.obesityClassII:
        return S.of(context).obesityClassIITips;
      case UserNutritionalStatus.obesityClassIII:
        return S.of(context).obesityClassIIITips;
    }
  }
}
