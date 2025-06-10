import 'package:active_fit/features/login/login_screen.dart';
import 'package:active_fit/features/register/cubit.dart';
import 'package:active_fit/features/register/states.dart';
import 'package:active_fit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formkey = GlobalKey<FormState>();
  final namecontroll = TextEditingController();
  final phonecontroll = TextEditingController();
  final emailcontroll = TextEditingController();
  final passwordcontroll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocProvider(
      create: (BuildContext context) => RegisterCuibt(),
      child: BlocConsumer<RegisterCuibt, RegisterStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: colorScheme.primary,
                ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).registerLabel,
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
                          controller: namecontroll,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return S.of(context).enterName;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: S.of(context).nameLabel,
                            labelStyle: TextStyle(color: colorScheme.primary),
                            prefixIcon: Icon(Icons.person_outline,
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
                          controller: phonecontroll,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return S.of(context).enterPhone;
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: S.of(context).phoneLabel,
                            labelStyle: TextStyle(color: colorScheme.primary),
                            prefixIcon: Icon(Icons.phone_outlined,
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
                          controller: emailcontroll,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                            labelStyle: TextStyle(color: colorScheme.primary),
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
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                          obscureText: RegisterCuibt.get(context).ispassword,
                          decoration: InputDecoration(
                            labelText: S.of(context).passwordLabel,
                            labelStyle: TextStyle(color: colorScheme.primary),
                            prefixIcon: Icon(Icons.lock_outline,
                                color: colorScheme.primary),
                            suffixIcon: IconButton(
                              onPressed: () =>
                                  RegisterCuibt.get(context).changepassword(),
                              icon: Icon(
                                RegisterCuibt.get(context).suffix,
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
                            onPressed: state is RegisterloadingState
                                ? null
                                : () {
                                    if (formkey.currentState!.validate()) {
                                      RegisterCuibt.get(context).userRegister(
                                        name: namecontroll.text,
                                        email: emailcontroll.text,
                                        password: passwordcontroll.text,
                                        phone: phonecontroll.text,
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
                            child: state is RegisterloadingState
                                ? SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          colorScheme.onPrimary),
                                    ),
                                  )
                                : Text(
                                    S.of(context).registerLabel,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            S.of(context).alreadyHaveAccount,
                            style: TextStyle(color: colorScheme.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is RegisterErrorState || state is CreateUserErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).registerError),
                backgroundColor: colorScheme.error,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }
          if (state is CreateUserSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
