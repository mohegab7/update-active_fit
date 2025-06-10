import 'package:active_fit/core/presentation/main_screen.dart';
import 'package:active_fit/features/login/cubit.dart';
import 'package:active_fit/features/login/states.dart';
import 'package:active_fit/features/register/Register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:active_fit/generated/l10n.dart';
import 'package:active_fit/core/utils/language_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  final emailcontroll = TextEditingController();
  final passwordcontroll = TextEditingController();

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(S.of(context).settingsLanguageLabel),
        children: [
          ListTile(
            leading: const Text("🇬🇧", style: TextStyle(fontSize: 24)),
            title: Text(S.of(context).languageEnglish),
            onTap: () {
              context.read<LanguageProvider>().changeLanguage('en');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Text("🇪🇬", style: TextStyle(fontSize: 24)),
            title: Text(S.of(context).languageArabic),
            onTap: () {
              context.read<LanguageProvider>().changeLanguage('ar');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Text("🇩🇪", style: TextStyle(fontSize: 24)),
            title: Text(S.of(context).languageGerman),
            onTap: () {
              context.read<LanguageProvider>().changeLanguage('de');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Text("🇹🇷", style: TextStyle(fontSize: 24)),
            title: Text(S.of(context).languageTurkish),
            onTap: () {
              context.read<LanguageProvider>().changeLanguage('tr');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocProvider(
      create: (BuildContext context) => LoginCuibt(),
      child: BlocConsumer<LoginCuibt, LoginStates>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 32),
                            Text(
                              S.of(context).loginLabel,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorScheme.primary,
                                  ),
                            ),
                            const SizedBox(height: 24),
                            Image.asset(
                              Theme.of(context).brightness == Brightness.light
                                  ? 'assets/icon/active_banner_top.png'
                                  : 'assets/icon/Active_banner_top_light.png',
                              height: 180,
                              width: 180,
                            ),
                            const SizedBox(height: 32),
                            TextFormField(
                              controller: emailcontroll,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return S.of(context).emailError;
                                }
                                if (!value!.contains('@')) {
                                  return S.of(context).emailInvalidError;
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: S.of(context).emailLabel,
                                labelStyle:
                                    TextStyle(color: colorScheme.primary),
                                prefixIcon: Icon(Icons.email_outlined,
                                    color: colorScheme.primary),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: colorScheme.outline),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: colorScheme.outline),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: colorScheme.primary, width: 2),
                                ),
                                filled: true,
                                fillColor:
                                    colorScheme.surfaceVariant.withOpacity(0.3),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: passwordcontroll,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return S.of(context).passwordEmptyError;
                                }
                                if ((value?.length ?? 0) < 6) {
                                  return S.of(context).passwordError;
                                }
                                return null;
                              },
                              obscureText: LoginCuibt.get(context).ispassword,
                              decoration: InputDecoration(
                                labelText: S.of(context).passwordLabel,
                                labelStyle:
                                    TextStyle(color: colorScheme.primary),
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: colorScheme.primary),
                                suffixIcon: IconButton(
                                  onPressed: () =>
                                      LoginCuibt.get(context).changepassword(),
                                  icon: Icon(
                                    LoginCuibt.get(context).suffix,
                                    color: colorScheme.primary,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: colorScheme.outline),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      BorderSide(color: colorScheme.outline),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: colorScheme.primary, width: 2),
                                ),
                                filled: true,
                                fillColor:
                                    colorScheme.surfaceVariant.withOpacity(0.3),
                              ),
                            ),
                            const SizedBox(height: 24),
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: state is LoginloadingState
                                    ? null
                                    : () {
                                        if (formkey.currentState!.validate()) {
                                          LoginCuibt.get(context).userLogin(
                                            email: emailcontroll.text,
                                            password: passwordcontroll.text,
                                          );
                                        }
                                      },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: colorScheme.onPrimary,
                                  disabledBackgroundColor:
                                      colorScheme.primary.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 2,
                                ),
                                child: state is LoginloadingState
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 3,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  colorScheme.onPrimary),
                                        ),
                                      )
                                    : Text(
                                        S.of(context).loginLabel,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: colorScheme.primary),
                                  foregroundColor: colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  S.of(context).registerLabel,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                      color: colorScheme.outlineVariant),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(
                                    S.of(context).orLabel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                      color: colorScheme.outlineVariant),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            IconButton(
                              onPressed: () =>
                                  LoginCuibt.get(context).signInWithGoogle(),
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                size: 32,
                              ),
                              style: IconButton.styleFrom(
                                foregroundColor: colorScheme.primary,
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: colorScheme.outlineVariant,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: isArabic(context) ? null : 16,
                    left: isArabic(context) ? 16 : null,
                    child: IconButton(
                      onPressed: _showLanguageDialog,
                      icon: Icon(Icons.language, color: colorScheme.primary),
                      tooltip: S.of(context).settingsLanguageLabel,
                      style: IconButton.styleFrom(
                        backgroundColor: colorScheme.surface,
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: colorScheme.outlineVariant,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is LoginErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).loginError),
                backgroundColor: colorScheme.error,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }
          if (state is LoginSuccessState ||
              state is LoginWithGoogleSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}

bool isArabic(BuildContext context) {
  return Localizations.localeOf(context).languageCode == 'ar';
}
