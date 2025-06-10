import 'package:active_fit/core/utils/off_const.dart';
import 'package:active_fit/features/add_meal/data/dto/fdc/fdc_const.dart';
import 'package:active_fit/features/add_meal/domain/entity/meal_entity.dart';
import 'package:active_fit/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class MealInfoButton extends StatelessWidget {
  final String? url;
  final MealSourceEntity source;

  const MealInfoButton({super.key, required this.url, required this.source});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _launchUrl(_getInfoUrl()),
      child: Text(
        _getInfoLabelText(context),
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(decoration: TextDecoration.underline),
        textAlign: TextAlign.center,
      ),
    );
  }

  String _getInfoUrl() {
    String siteUrl;
    switch (source) {
      case MealSourceEntity.unknown:
        siteUrl = "";
        break;
      case MealSourceEntity.custom:
        siteUrl = "";
        break;
      case MealSourceEntity.off:
        siteUrl = url ?? OFFConst.offWebsiteUrl;
        break;
      case MealSourceEntity.fdc:
        siteUrl = url ?? FDCConst.fdcWebsiteUrl;
        break;
    }
    return siteUrl;
  }

  String _getInfoLabelText(BuildContext context) {
    String infoLabel;
    switch (source) {
      case MealSourceEntity.unknown:
        infoLabel = S.of(context).additionalInfoLabelUnknown;
        break;
      case MealSourceEntity.custom:
        infoLabel = S.of(context).additionalInfoLabelCustom;
        break;
      case MealSourceEntity.off:
        infoLabel = S.of(context).additionalInfoLabelOFF;
        break;
      case MealSourceEntity.fdc:
        infoLabel = S.of(context).additionalInfoLabelFDC;
    }
    return infoLabel;
  }

  Future<void> _launchUrl(String siteUrl) async {
    if (!await launchUrl(Uri.parse(siteUrl),
        mode: LaunchMode.externalApplication)) {}
  }
}
