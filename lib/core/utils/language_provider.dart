import 'package:flutter/material.dart';


import 'package:active_fit/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  static const String _languageKey = 'language_code';
  final SharedPreferences _prefs;
  Locale _currentLocale;

  LanguageProvider(this._prefs) : _currentLocale = Locale('en') {
    _loadLanguage();
  }

  Locale get currentLocale => _currentLocale;

  Future<void> _loadLanguage() async {
    final String? languageCode = _prefs.getString(_languageKey);
    if (languageCode != null) {
      _currentLocale = Locale(languageCode);
      notifyListeners();
    }
  }

  Future<void> changeLanguage(String languageCode) async {
    _currentLocale = Locale(languageCode);
    await _prefs.setString(_languageKey, languageCode);
    await S.load(Locale(languageCode));
    notifyListeners();
  }
}
