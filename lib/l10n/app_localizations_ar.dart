import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Activefit';

  @override
  String appVersionName(Object versionNumber) {
    return 'الإصدار $versionNumber';
  }

  @override
  String get appDescription => 'Active Fit هو تطبيق مجاني ومفتوح المصدر لتتبع السعرات الحرارية والعناصر الغذائية مع احترام خصوصيتك.';

  @override
  String get alphaVersionName => '';

  @override
  String get betaVersionName => '';

  @override
  String get addLabel => 'إضافة';

  @override
  String get createCustomDialogTitle => 'إنشاء عنصر وجبة مخصص؟';

  @override
  String get createCustomDialogContent => 'هل تريد إنشاء عنصر وجبة مخصص؟';

  @override
  String get settingsLabel => 'الإعدادات';

  @override
  String get homeLabel => 'الرئيسية';

  @override
  String get diaryLabel => 'المفكرة';

  @override
  String get profileLabel => 'الملف الشخصي';

  @override
  String get searchLabel => 'بحث';

  @override
  String get searchProductsPage => 'المنتجات';

  @override
  String get searchFoodPage => 'الطعام';

  @override
  String get searchResultsLabel => 'نتائج البحث';

  @override
  String get searchDefaultLabel => 'الرجاء إدخال كلمة بحث';

  @override
  String get allItemsLabel => 'الكل';

  @override
  String get recentlyAddedLabel => 'مضاف حديثاً';

  @override
  String get noMealsRecentlyAddedLabel => 'لا توجد وجبات مضافة حديثاً';

  @override
  String get noActivityRecentlyAddedLabel => 'لا توجد أنشطة مضافة حديثاً';

  @override
  String get dialogOKLabel => 'موافق';

  @override
  String get dialogCancelLabel => 'إلغاء';

  @override
  String get buttonStartLabel => 'بدء';

  @override
  String get buttonNextLabel => 'التالي';

  @override
  String get buttonSaveLabel => 'حفظ';

  @override
  String get buttonYesLabel => 'نعم';

  @override
  String get buttonResetLabel => 'إعادة تعيين';

  @override
  String get onboardingWelcomeLabel => 'مرحباً بك في';

  @override
  String get onboardingOverviewLabel => 'نظرة عامة';

  @override
  String get onboardingYourGoalLabel => 'هدفك من السعرات الحرارية:';

  @override
  String get onboardingYourMacrosGoalLabel => 'أهدافك من المغذيات الكبرى:';

  @override
  String get onboardingKcalPerDayLabel => 'سعرة حرارية في اليوم';

  @override
  String get onboardingIntroDescription => 'لبدء الاستخدام، يحتاج التطبيق إلى بعض المعلومات عنك لحساب هدفك اليومي من السعرات الحرارية.\nجميع المعلومات الخاصة بك مخزنة بأمان على جهازك.';

  @override
  String get onboardingGenderQuestionSubtitle => 'ما هو جنسك؟';

  @override
  String get onboardingEnterBirthdayLabel => 'تاريخ الميلاد';

  @override
  String get onboardingBirthdayHint => 'أدخل التاريخ';

  @override
  String get onboardingBirthdayQuestionSubtitle => 'ما هو تاريخ ميلادك؟';

  @override
  String get onboardingHeightQuestionSubtitle => 'ما هو طولك الحالي؟';

  @override
  String get onboardingWeightQuestionSubtitle => 'ما هو وزنك الحالي؟';

  @override
  String get onboardingWrongHeightLabel => 'أدخل الطول الصحيح';

  @override
  String get onboardingWrongWeightLabel => 'أدخل الوزن الصحيح';

  @override
  String get onboardingWeightExampleHintKg => 'مثال: 60';

  @override
  String get onboardingWeightExampleHintLbs => 'مثال: 132';

  @override
  String get onboardingHeightExampleHintCm => 'مثال: 170';

  @override
  String get onboardingHeightExampleHintFt => 'مثال: 5.8';

  @override
  String get onboardingActivityQuestionSubtitle => 'ما مدى نشاطك؟ (بدون تمارين)';

  @override
  String get onboardingGoalQuestionSubtitle => 'ما هو هدفك الحالي من الوزن؟';

  @override
  String get onboardingSaveUserError => 'إدخال خاطئ، الرجاء المحاولة مرة أخرى';

  @override
  String get settingsUnitsLabel => 'الوحدات';

  @override
  String get settingsCalculationsLabel => 'الحسابات';

  @override
  String get settingsThemeLabel => 'السمة';

  @override
  String get settingsThemeLightLabel => 'فاتح';

  @override
  String get settingsThemeDarkLabel => 'غامق';

  @override
  String get settingsThemeSystemDefaultLabel => 'افتراضي النظام';

  @override
  String get settingsLicensesLabel => 'التراخيص';

  @override
  String get settingsDisclaimerLabel => 'إخلاء المسؤولية';

  @override
  String get settingsReportErrorLabel => 'الإبلاغ عن خطأ';

  @override
  String get settingsPrivacySettings => 'إعدادات الخصوصية';

  @override
  String get settingsSourceCodeLabel => 'الكود المصدري';

  @override
  String get settingFeedbackLabel => 'ملاحظات';

  @override
  String get settingAboutLabel => 'حول';

  @override
  String get settingsMassLabel => 'الكتلة';

  @override
  String get settingsSystemLabel => 'النظام';

  @override
  String get settingsMetricLabel => 'متري (كجم، سم، مل)';

  @override
  String get settingsImperialLabel => 'إمبراطوري (رطل، قدم، أونصة)';

  @override
  String get settingsDistanceLabel => 'المسافة';

  @override
  String get settingsVolumeLabel => 'الحجم';

  @override
  String get disclaimerText => 'active_fit ليس تطبيقاً طبياً. جميع البيانات المقدمة غير معتمدة ويجب استخدامها بحذر. يرجى الحفاظ على نمط حياة صحي واستشارة مختص إذا كانت لديك أي مشاكل. لا يُنصح باستخدامه أثناء المرض أو الحمل أو الرضاعة.\n\nالتطبيق لا يزال قيد التطوير. قد تحدث أخطاء أو أعطال.';

  @override
  String get reportErrorDialogText => 'هل تريد الإبلاغ عن خطأ للمطور؟';

  @override
  String get sendAnonymousUserData => 'إرسال بيانات استخدام مجهولة';

  @override
  String get appLicenseLabel => 'رخصة GPL-3.0';

  @override
  String get calculationsTDEELabel => 'معادلة TDEE';

  @override
  String get calculationsTDEEIOM2006Label => 'معادلة معهد الطب';

  @override
  String get calculationsRecommendedLabel => '(موصى به)';

  @override
  String get calculationsMacronutrientsDistributionLabel => 'توزيع المغذيات الكبرى';

  @override
  String calculationsMacrosDistribution(Object pctCarbs, Object pctFats, Object pctProteins) {
    return '$pctCarbs% كربوهيدرات، $pctFats% دهون، $pctProteins% بروتينات';
  }

  @override
  String get dailyKcalAdjustmentLabel => 'تعديل السعرات اليومية:';

  @override
  String get macroDistributionLabel => 'توزيع المغذيات الكبرى:';

  @override
  String get addItemLabel => 'إضافة عنصر جديد:';

  @override
  String get activityLabel => 'النشاط';

  @override
  String get activityExample => 'مثال: جري، ركوب دراجة، يوجا...';

  @override
  String get breakfastLabel => 'الإفطار';

  @override
  String get breakfastExample => 'مثال: حبوب، حليب، قهوة...';

  @override
  String get lunchLabel => 'الغداء';

  @override
  String get lunchExample => 'مثال: بيتزا، سلطة، أرز...';

  @override
  String get dinnerLabel => 'العشاء';

  @override
  String get dinnerExample => 'مثال: شوربة، دجاج، نبيذ...';

  @override
  String get snackLabel => 'وجبة خفيفة';

  @override
  String get snackExample => 'مثال: تفاح، آيس كريم، شوكولاتة...';

  @override
  String get editItemDialogTitle => 'تعديل العنصر';

  @override
  String get itemUpdatedSnackbar => 'تم تحديث العنصر';

  @override
  String get deleteTimeDialogTitle => 'حذف العنصر؟';

  @override
  String get deleteTimeDialogContent => 'هل تريد حذف العنصر المحدد؟';

  @override
  String get itemDeletedSnackbar => 'تم حذف العنصر';

  @override
  String get copyDialogTitle => 'إلى أي نوع وجبة تريد النسخ؟';

  @override
  String get copyOrDeleteTimeDialogTitle => 'ماذا تريد أن تفعل؟';

  @override
  String get copyOrDeleteTimeDialogContent => 'باستخدام \"نسخ إلى اليوم\" يمكنك نسخ الوجبة إلى اليوم. باستخدام \"حذف\" يمكنك حذف الوجبة.';

  @override
  String get dialogCopyLabel => 'نسخ إلى اليوم';

  @override
  String get dialogDeleteLabel => 'حذف';

  @override
  String get suppliedLabel => 'مٌستهلك';

  @override
  String get burnedLabel => 'محروق';

  @override
  String get kcalLeftLabel => 'سعرات متبقية';

  @override
  String get nutritionInfoLabel => 'المعلومات الغذائية';

  @override
  String get kcalLabel => 'سعرة حرارية';

  @override
  String get carbsLabel => 'كربوهيدرات';

  @override
  String get fatLabel => 'دهون';

  @override
  String get proteinLabel => 'بروتين';

  @override
  String get energyLabel => 'طاقة';

  @override
  String get saturatedFatLabel => 'دهون مشبعة';

  @override
  String get carbohydrateLabel => 'كربوهيدرات';

  @override
  String get sugarLabel => 'سكر';

  @override
  String get fiberLabel => 'ألياف';

  @override
  String get per100gmlLabel => 'لكل 100 جم/مل';

  @override
  String get additionalInfoLabelOFF => 'معلومات أكثر على\nOpenFoodFacts';

  @override
  String get offDisclaimer => 'البيانات المقدمة لك من خلال هذا التطبيق يتم استرجاعها من قاعدة بيانات Open Food Facts. لا يمكن تقديم أي ضمانات لدقة أو اكتمال أو موثوقية المعلومات المقدمة. البيانات مقدمة \"كما هي\" والمصدر الأصلي للبيانات (Open Food Facts) غير مسؤول عن أي أضرار ناتجة عن استخدام البيانات.';

  @override
  String get additionalInfoLabelFDC => 'معلومات أكثر على\nFoodData Central';

  @override
  String get additionalInfoLabelUnknown => 'عنصر وجبة غير معروف';

  @override
  String get additionalInfoLabelCustom => 'عنصر وجبة مخصص';

  @override
  String get additionalInfoLabelCompendium2011 => 'معلومات مقدمة من\n\'2011 Compendium\n of Physical Activities\'';

  @override
  String get quantityLabel => 'الكمية';

  @override
  String get baseQuantityLabel => 'الكمية الأساسية (جم/مل)';

  @override
  String get unitLabel => 'الوحدة';

  @override
  String get scanProductLabel => 'مسح المنتج';

  @override
  String get gramUnit => 'جم';

  @override
  String get milliliterUnit => 'مل';

  @override
  String get gramMilliliterUnit => 'جم/مل';

  @override
  String get ozUnit => 'أونصة';

  @override
  String get flOzUnit => 'أونصة سائلة';

  @override
  String get notAvailableLabel => 'غير متاح';

  @override
  String get missingProductInfo => 'المنتج يفتقد معلومات السعرات الحرارية أو المغذيات الكبرى المطلوبة';

  @override
  String get infoAddedIntakeLabel => 'تمت إضافة استهلاك جديد';

  @override
  String get infoAddedActivityLabel => 'تمت إضافة نشاط جديد';

  @override
  String get editMealLabel => 'تعديل الوجبة';

  @override
  String get mealNameLabel => 'اسم الوجبة';

  @override
  String get mealBrandsLabel => 'العلامات التجارية';

  @override
  String get mealSizeLabel => 'حجم الوجبة (جم/مل)';

  @override
  String get mealSizeLabelImperial => 'حجم الوجبة (أونصة/أونصة سائلة)';

  @override
  String get servingLabel => 'حصة';

  @override
  String get perServingLabel => 'لكل حصة';

  @override
  String get servingSizeLabelMetric => 'حجم الحصة (جم/مل)';

  @override
  String get servingSizeLabelImperial => 'حجم الحصة (أونصة/أونصة سائلة)';

  @override
  String get mealUnitLabel => 'وحدة الوجبة';

  @override
  String get mealKcalLabel => 'سعرة حرارية لكل';

  @override
  String get mealCarbsLabel => 'كربوهيدرات لكل';

  @override
  String get mealFatLabel => 'دهون لكل';

  @override
  String get mealProteinLabel => 'بروتين لكل 100 جم/مل';

  @override
  String get errorMealSave => 'خطأ أثناء حفظ الوجبة. هل أدخلت معلومات الوجبة الصحيحة؟';

  @override
  String get bmiLabel => 'BMI';

  @override
  String get bmiInfo => 'مؤشر كتلة الجسم (BMI) هو مقياس لتصنيف زيادة الوزن والسمنة عند البالغين. يتم تعريفه على أنه الوزن بالكيلوجرام مقسوماً على مربع الطول بالمتر (كجم/م²).\n\nلا يميز مؤشر كتلة الجسم بين كتلة الدهون والعضلات وقد يكون مضللاً لبعض الأفراد.';

  @override
  String get readLabel => 'لقد قرأت سياسة الخصوصية وأوافق عليها.';

  @override
  String get privacyPolicyLabel => 'سياسة الخصوصية';

  @override
  String get dataCollectionLabel => 'دعم التطوير بتقديم بيانات استخدام مجهولة';

  @override
  String get palSedentaryLabel => 'قليل الحركة';

  @override
  String get palSedentaryDescriptionLabel => 'مثال: وظيفة مكتبية ومعظم الأنشطة في وقت الفراغ جالسة';

  @override
  String get palLowLActiveLabel => 'نشاط خفيف';

  @override
  String get palLowActiveDescriptionLabel => 'مثال: الجلوس أو الوقوف في العمل وأنشطة وقت فراغ خفيفة';

  @override
  String get palActiveLabel => 'نشيط';

  @override
  String get palActiveDescriptionLabel => 'معظم الوقت واقف أو يمشي في العمل وأنشطة وقت فراغ نشطة';

  @override
  String get palVeryActiveLabel => 'نشيط جداً';

  @override
  String get palVeryActiveDescriptionLabel => 'معظم الوقت يمشي أو يركض أو يحمل أوزاناً في العمل وأنشطة وقت فراغ نشطة';

  @override
  String get selectPalCategoryLabel => 'اختر مستوى النشاط';

  @override
  String get chooseWeightGoalLabel => 'اختر هدف الوزن';

  @override
  String get goalLoseWeight => 'فقدان الوزن';

  @override
  String get goalMaintainWeight => 'الحفاظ على الوزن';

  @override
  String get goalGainWeight => 'زيادة الوزن';

  @override
  String get goalLabel => 'الهدف';

  @override
  String get selectHeightDialogLabel => 'اختر الطول';

  @override
  String get heightLabel => 'الطول';

  @override
  String get cmLabel => 'سم';

  @override
  String get ftLabel => 'قدم';

  @override
  String get selectWeightDialogLabel => 'اختر الوزن';

  @override
  String get weightLabel => 'الوزن';

  @override
  String get kgLabel => 'كجم';

  @override
  String get lbsLabel => 'رطل';

  @override
  String get ageLabel => 'العمر';

  @override
  String yearsLabel(Object age) {
    return '$age سنوات';
  }

  @override
  String get selectGenderDialogLabel => 'اختر الجنس';

  @override
  String get genderLabel => 'الجنس';

  @override
  String get genderMaleLabel => '♂ ذكر';

  @override
  String get genderFemaleLabel => '♀ أنثى';

  @override
  String get nothingAddedLabel => 'لا شيء مضاف';

  @override
  String get nutritionalStatusUnderweight => 'نقص الوزن';

  @override
  String get nutritionalStatusNormalWeight => 'وزن طبيعي';

  @override
  String get nutritionalStatusPreObesity => 'ما قبل السمنة';

  @override
  String get nutritionalStatusObeseClassI => 'سمنة درجة I';

  @override
  String get nutritionalStatusObeseClassII => 'سمنة درجة II';

  @override
  String get nutritionalStatusObeseClassIII => 'سمنة درجة III';

  @override
  String nutritionalStatusRiskLabel(Object riskValue) {
    return 'خطر الأمراض المصاحبة: $riskValue';
  }

  @override
  String get nutritionalStatusRiskLow => 'منخفض\n(لكن خطر المشاكل\nالسريرية الأخرى مرتفع)';

  @override
  String get nutritionalStatusRiskAverage => 'متوسط';

  @override
  String get nutritionalStatusRiskIncreased => 'مرتفع';

  @override
  String get nutritionalStatusRiskModerate => 'معتدل';

  @override
  String get nutritionalStatusRiskSevere => 'شديد';

  @override
  String get nutritionalStatusRiskVerySevere => 'شديد جداً';

  @override
  String get errorOpeningEmail => 'خطأ أثناء فتح تطبيق البريد';

  @override
  String get errorOpeningBrowser => 'خطأ أثناء فتح متصفح الإنترنت';

  @override
  String get errorFetchingProductData => 'خطأ أثناء جلب بيانات المنتج';

  @override
  String get errorProductNotFound => 'المنتج غير موجود';

  @override
  String get errorLoadingActivities => 'خطأ أثناء تحميل الأنشطة';

  @override
  String get noResultsFound => 'لا توجد نتائج';

  @override
  String get retryLabel => 'إعادة المحاولة';

  @override
  String get paHeadingBicycling => 'ركوب الدراجات';

  @override
  String get paHeadingConditionalExercise => 'تمارين تكييف';

  @override
  String get paHeadingDancing => 'رقص';

  @override
  String get paHeadingRunning => 'جري';

  @override
  String get paHeadingSports => 'رياضات';

  @override
  String get paHeadingWalking => 'مشي';

  @override
  String get paHeadingWaterActivities => 'أنشطة مائية';

  @override
  String get paHeadingWinterActivities => 'أنشطة شتوية';

  @override
  String get paGeneralDesc => 'عام';

  @override
  String get paBicyclingGeneral => 'ركوب الدراجات';

  @override
  String get paBicyclingGeneralDesc => 'عام';

  @override
  String get paBicyclingMountainGeneral => 'ركوب الدراجات الجبلية';

  @override
  String get paBicyclingMountainGeneralDesc => 'عام';

  @override
  String get paUnicyclingGeneral => 'ركوب الدراجة الأحادية';

  @override
  String get paUnicyclingGeneralDesc => 'عام';

  @override
  String get paBicyclingStationaryGeneral => 'ركوب الدراجات الثابتة';

  @override
  String get paBicyclingStationaryGeneralDesc => 'عام';

  @override
  String get paCalisthenicsGeneral => 'تمارين رياضية';

  @override
  String get paCalisthenicsGeneralDesc => 'جهد خفيف أو متوسط، عام (مثل تمارين الظهر)';

  @override
  String get paResistanceTraining => 'تدريب المقاومة';

  @override
  String get paResistanceTrainingDesc => 'رفع الأثقال، أثقال حرة، نوتيلوس أو يونيفرسال';

  @override
  String get paRopeSkippingGeneral => 'القفز بالحبل';

  @override
  String get paRopeSkippingGeneralDesc => 'عام';

  @override
  String get paWaterAerobics => 'تمارين مائية';

  @override
  String get paWaterAerobicsDesc => 'تمارين هوائية مائية، تمارين رياضية مائية';

  @override
  String get paDancingAerobicGeneral => 'هوائي';

  @override
  String get paDancingAerobicGeneralDesc => 'عام';

  @override
  String get paDancingGeneral => 'رقص عام';

  @override
  String get paDancingGeneralDesc => 'مثل ديسكو، فلكلوري، رقص آيرلندي، رقص خطي، بولكا، كونترا، رقص ريفي';

  @override
  String get paJoggingGeneral => 'هرولة';

  @override
  String get paJoggingGeneralDesc => 'عام';

  @override
  String get paRunningGeneral => 'جري';

  @override
  String get paRunningGeneralDesc => 'عام';

  @override
  String get paArcheryGeneral => 'رماية';

  @override
  String get paArcheryGeneralDesc => 'غير صيد';

  @override
  String get paBadmintonGeneral => 'تنس الريشة';

  @override
  String get paBadmintonGeneralDesc => 'فردي وزوجي اجتماعي، عام';

  @override
  String get paBasketballGeneral => 'كرة السلة';

  @override
  String get paBasketballGeneralDesc => 'عام';

  @override
  String get paBilliardsGeneral => 'البلياردو';

  @override
  String get paBilliardsGeneralDesc => 'عام';

  @override
  String get paBowlingGeneral => 'البولينج';

  @override
  String get paBowlingGeneralDesc => 'عام';

  @override
  String get paBoxingBag => 'ملاكمة';

  @override
  String get paBoxingBagDesc => 'ضرب الكيس';

  @override
  String get paBoxingGeneral => 'ملاكمة';

  @override
  String get paBoxingGeneralDesc => 'في الحلبة، عام';

  @override
  String get paBroomball => 'كرة المكنسة';

  @override
  String get paBroomballDesc => 'عام';

  @override
  String get paChildrenGame => 'ألعاب الأطفال';

  @override
  String get paChildrenGameDesc => '(مثل الحجلة، 4 مربعات، كرة الهدف، ألعاب الملعب، تي-بول، كرة الحبل، الكريات، ألعاب الأركيد)، جهد متوسط';

  @override
  String get paCheerleading => 'التشجيع';

  @override
  String get paCheerleadingDesc => 'حركات جمبازية، تنافسية';

  @override
  String get paCricket => 'الكريكت';

  @override
  String get paCricketDesc => 'ضرب، رمي، مجالدة';

  @override
  String get paCroquet => 'الكروكيه';

  @override
  String get paCroquetDesc => 'عام';

  @override
  String get paCurling => 'الكيرلنغ';

  @override
  String get paCurlingDesc => 'عام';

  @override
  String get paDartsWall => 'السهام';

  @override
  String get paDartsWallDesc => 'حائط أو عشب';

  @override
  String get paAutoRacing => 'سباق السيارات';

  @override
  String get paAutoRacingDesc => 'عجلات مفتوحة';

  @override
  String get paFencing => 'المبارزة';

  @override
  String get paFencingDesc => 'عام';

  @override
  String get paAmericanFootballGeneral => 'كرة القدم الأمريكية';

  @override
  String get paAmericanFootballGeneralDesc => 'لمس، علم، عام';

  @override
  String get paCatch => 'كرة القدم أو البيسبول';

  @override
  String get paCatchDesc => 'اللعب بالكرة';

  @override
  String get paFrisbee => 'اللعب بالقرص الطائر';

  @override
  String get paFrisbeeDesc => 'عام';

  @override
  String get paGolfGeneral => 'الجولف';

  @override
  String get paGolfGeneralDesc => 'عام';

  @override
  String get paGymnasticsGeneral => 'الجمباز';

  @override
  String get paGymnasticsGeneralDesc => 'عام';

  @override
  String get paHackySack => 'هاكي ساك';

  @override
  String get paHackySackDesc => 'عام';

  @override
  String get paHandballGeneral => 'كرة اليد';

  @override
  String get paHandballGeneralDesc => 'عام';

  @override
  String get paHangGliding => 'الطيران الشراعي';

  @override
  String get paHangGlidingDesc => 'عام';

  @override
  String get paHockeyField => 'هوكي الحقل';

  @override
  String get paHockeyFieldDesc => 'عام';

  @override
  String get paIceHockeyGeneral => 'هوكي الجليد';

  @override
  String get paIceHockeyGeneralDesc => 'عام';

  @override
  String get paHorseRidingGeneral => 'ركوب الخيل';

  @override
  String get paHorseRidingGeneralDesc => 'عام';

  @override
  String get paJaiAlai => 'جاي ألاي';

  @override
  String get paJaiAlaiDesc => 'عام';

  @override
  String get paMartialArtsSlower => 'فنون قتالية';

  @override
  String get paMartialArtsSlowerDesc => 'أنواع مختلفة، وتيرة أبطأ، للمبتدئين، تدريب';

  @override
  String get paMartialArtsModerate => 'فنون قتالية';

  @override
  String get paMartialArtsModerateDesc => 'أنواع مختلفة، وتيرة متوسطة (مثل الجودو، الجوجيتسو، الكاراتيه، كيك بوكسينغ، تاي كوان دو، تاي بو، ملاكمة مواي تاي)';

  @override
  String get paJuggling => 'اللعبة بالكرات';

  @override
  String get paJugglingDesc => 'عام';

  @override
  String get paKickball => 'الكيك بول';

  @override
  String get paKickballDesc => 'عام';

  @override
  String get paLacrosse => 'لاكروس';

  @override
  String get paLacrosseDesc => 'عام';

  @override
  String get paLawnBowling => 'البولينج على العشب';

  @override
  String get paLawnBowlingDesc => 'بوتشي بول، خارجي';

  @override
  String get paMotoCross => 'الموتوكروس';

  @override
  String get paMotoCrossDesc => 'رياضات المحركات خارج الطرق، مركبات كل التضاريس، عام';

  @override
  String get paOrienteering => 'الملاحة البرية';

  @override
  String get paOrienteeringDesc => 'عام';

  @override
  String get paPaddleball => 'الكرة المضرب';

  @override
  String get paPaddleballDesc => 'عرضي، عام';

  @override
  String get paPoloHorse => 'البولو';

  @override
  String get paPoloHorseDesc => 'على ظهر الحصان';

  @override
  String get paRacquetball => 'الكرة المضرب';

  @override
  String get paRacquetballDesc => 'عام';

  @override
  String get paMountainClimbing => 'تسلق الجبال';

  @override
  String get paMountainClimbingDesc => 'تسلق الصخور أو الجبال';

  @override
  String get paRodeoSportGeneralModerate => 'رياضات الروديو';

  @override
  String get paRodeoSportGeneralModerateDesc => 'عام، جهد متوسط';

  @override
  String get paRopeJumpingGeneral => 'القفز بالحبل';

  @override
  String get paRopeJumpingGeneralDesc => 'وتيرة متوسطة، 100-120 قفزة/دقيقة، عام، قفزة بقدمين، ارتداد عادي';

  @override
  String get paRugbyCompetitive => 'الرجبي';

  @override
  String get paRugbyCompetitiveDesc => 'اتحاد، فريق، تنافسي';

  @override
  String get paRugbyNonCompetitive => 'الرجبي';

  @override
  String get paRugbyNonCompetitiveDesc => 'لمس، غير تنافسي';

  @override
  String get paShuffleboard => 'الشفل بورد';

  @override
  String get paShuffleboardDesc => 'عام';

  @override
  String get paSkateboardingGeneral => 'التزلج على اللوح';

  @override
  String get paSkateboardingGeneralDesc => 'عام، جهد متوسط';

  @override
  String get paSkatingRoller => 'التزلج على العجلات';

  @override
  String get paSkatingRollerDesc => 'عام';

  @override
  String get paRollerbladingLight => 'التزلج بالعجلات';

  @override
  String get paRollerbladingLightDesc => 'تزلج في الخط';

  @override
  String get paSkydiving => 'القفز بالمظلة';

  @override
  String get paSkydivingDesc => 'القفز بالمظلة، القفز القاعدي، القفز بالحبل المطاطي';

  @override
  String get paSoccerGeneral => 'كرة القدم';

  @override
  String get paSoccerGeneralDesc => 'عرضي، عام';

  @override
  String get paSoftballBaseballGeneral => 'الكرة اللينة / البيسبول';

  @override
  String get paSoftballBaseballGeneralDesc => 'رمي سريع أو بطيء، عام';

  @override
  String get paSquashGeneral => 'السكواش';

  @override
  String get paSquashGeneralDesc => 'عام';

  @override
  String get paTableTennisGeneral => 'تنس الطاولة';

  @override
  String get paTableTennisGeneralDesc => 'تنس الطاولة، بينج بونج';

  @override
  String get paTaiChiQiGongGeneral => 'تاي تشي، تشي غونغ';

  @override
  String get paTaiChiQiGongGeneralDesc => 'عام';

  @override
  String get paTennisGeneral => 'التنس';

  @override
  String get paTennisGeneralDesc => 'عام';

  @override
  String get paTrampolineLight => 'الترامبولين';

  @override
  String get paTrampolineLightDesc => 'ترفيهي';

  @override
  String get paVolleyballGeneral => 'الكرة الطائرة';

  @override
  String get paVolleyballGeneralDesc => 'غير تنافسي، فريق 6-9 أعضاء، عام';

  @override
  String get paWrestling => 'المصارعة';

  @override
  String get paWrestlingDesc => 'عام';

  @override
  String get paWallyball => 'الوالي بول';

  @override
  String get paWallyballDesc => 'عام';

  @override
  String get paTrackField => 'ألعاب القوى';

  @override
  String get paTrackField1Desc => '(مثل دفع الجلة، القرص، رمي المطرقة)';

  @override
  String get paTrackField2Desc => '(مثل القفز العالي، القفز الطويل، القفز الثلاثي، الرمح، القفز بالزانة)';

  @override
  String get paTrackField3Desc => '(مثل سباق الحواجز، الموانع)';

  @override
  String get paBackpackingGeneral => 'التنزه بحقيبة الظهر';

  @override
  String get paBackpackingGeneralDesc => 'عام';

  @override
  String get paClimbingHillsNoLoadGeneral => 'تسلق التلال، بدون حمل';

  @override
  String get paClimbingHillsNoLoadGeneralDesc => 'بدون حمل';

  @override
  String get paHikingCrossCountry => 'المشي لمسافات طويلة';

  @override
  String get paHikingCrossCountryDesc => 'عبر البلاد';

  @override
  String get paWalkingForPleasure => 'المشي';

  @override
  String get paWalkingForPleasureDesc => 'للمتعة';

  @override
  String get paWalkingTheDog => 'مشي الكلب';

  @override
  String get paWalkingTheDogDesc => 'عام';

  @override
  String get paCanoeingGeneral => 'التجديف';

  @override
  String get paCanoeingGeneralDesc => 'تجديف، للمتعة، عام';

  @override
  String get paDivingSpringboardPlatform => 'الغطس';

  @override
  String get paDivingSpringboardPlatformDesc => 'اللوح أو المنصة';

  @override
  String get paKayakingModerate => 'التجديف بالكاياك';

  @override
  String get paKayakingModerateDesc => 'جهد متوسط';

  @override
  String get paPaddleBoat => 'قارب التجديف';

  @override
  String get paPaddleBoatDesc => 'عام';

  @override
  String get paSailingGeneral => 'الإبحار';

  @override
  String get paSailingGeneralDesc => 'الإبحار بالقوارب واللوحات، ركوب الأمواج، الإبحار على الجليد، عام';

  @override
  String get paSkiingWaterWakeboarding => 'التزلج على الماء';

  @override
  String get paSkiingWaterWakeboardingDesc => 'التزلج على الماء أو الويك بورد';

  @override
  String get paDivingGeneral => 'الغوص';

  @override
  String get paDivingGeneralDesc => 'الغوص الحر، الغوص بالأسطوانة، عام';

  @override
  String get paSnorkeling => 'الغطس بالسنوركل';

  @override
  String get paSnorkelingDesc => 'عام';

  @override
  String get paSurfing => 'ركوب الأمواج';

  @override
  String get paSurfingDesc => 'بالجسم أو اللوح، عام';

  @override
  String get paPaddleBoarding => 'التجديف باللوح';

  @override
  String get paPaddleBoardingDesc => 'وقوف';

  @override
  String get paSwimmingGeneral => 'السباحة';

  @override
  String get paSwimmingGeneralDesc => 'الطفو، جهد متوسط، عام';

  @override
  String get paWateraerobicsCalisthenics => 'تمارين هوائية مائية';

  @override
  String get paWateraerobicsCalisthenicsDesc => 'تمارين هوائية مائية، تمارين رياضية مائية';

  @override
  String get paWaterPolo => 'كرة الماء';

  @override
  String get paWaterPoloDesc => 'عام';

  @override
  String get paWaterVolleyball => 'الكرة الطائرة المائية';

  @override
  String get paWaterVolleyballDesc => 'عام';

  @override
  String get paIceSkatingGeneral => 'التزلج على الجليد';

  @override
  String get paIceSkatingGeneralDesc => 'عام';

  @override
  String get paSkiingGeneral => 'التزلج';

  @override
  String get paSkiingGeneralDesc => 'عام';

  @override
  String get paSnowShovingModerate => 'إزالة الثلج';

  @override
  String get paSnowShovingModerateDesc => 'باليد، جهد متوسط';

  @override
  String get loginLabel => 'تسجيل الدخول';

  @override
  String get emailError => 'الرجاء إدخال بريدك الإلكتروني';

  @override
  String get emailInvalidError => 'الرجاء إدخال بريد إلكتروني صالح';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get passwordError => 'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل';

  @override
  String get registerLabel => 'تسجيل';

  @override
  String get orLabel => 'أو';

  @override
  String get loginError => 'بريد إلكتروني أو كلمة مرور غير صالحة';

  @override
  String get enterName => 'الرجاء إدخال اسمك';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get enterPhone => 'الرجاء إدخال رقم هاتفك';

  @override
  String get phoneLabel => 'الهاتف';

  @override
  String get passwordEmptyError => 'الرجاء إدخال كلمة المرور';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟ سجل الدخول';

  @override
  String get registerError => 'بريد إلكتروني أو كلمة مرور غير صالحة';

  @override
  String get foodScannerLabel => 'ماسح الطعام';

  @override
  String get cameraLabel => 'ماسح الطعام';

  @override
  String get galleryLabel => 'المعرض';

  @override
  String get scanYourFoodLabel => 'ماسح الطعام';

  @override
  String get scanYourFoodDescription => 'التقط صورة لطعامك أو اختر من المعرض للحصول على معلومات غذائية فورية';

  @override
  String get scanningLabel => 'جاري تحليل الصورة...';

  @override
  String get recognizedFoodLabel => 'الطعام المُعترف عليه:';

  @override
  String get nutritionFactsLabel => 'الحقائق الغذائية';

  @override
  String get addtoDiaryLabel => 'أضف إلى اليوميات';

  @override
  String get settingsLanguageLabel => 'اللغة';

  @override
  String get languageEnglish => 'الانجليزية';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageGerman => 'الألمانية';

  @override
  String get languageTurkish => 'التركية';

  @override
  String get underWeightTips => 'فكّر في زيادة استهلاك السعرات الحرارية من خلال أطعمة مغذية. يمكن أن تساعد تمارين القوة في بناء الكتلة العضلية.';

  @override
  String get normalWeightTips => 'حافظ على نمط حياتك الصحي من خلال نظام غذائي متوازن ونشاط بدني منتظم.';

  @override
  String get preObesityTips => 'حاول دمج المزيد من الأنشطة البدنية ومراقبة استهلاكك للسعرات الحرارية.';

  @override
  String get obesityClassITips => 'فكّر في تقليل الأطعمة المصنعة وزيادة النشاط البدني.';

  @override
  String get obesityClassIITips => 'يمكن أن يساعدك اتباع نظام غذائي صحي وزيادة التمارين على تحسين مؤشر كتلة الجسم.';

  @override
  String get obesityClassIIITips => 'يُفضل استشارة أخصائي رعاية صحية للحصول على نصائح مخصصة.';

  @override
  String get healthRiskLabel => 'مخاطر الصحة:';

  @override
  String get bmiInformation => 'مؤشر كتلة الجسم (BMI) هو قياس كتلة الجسم بناءً على الطول والوزن.';

  @override
  String get teamMembers => 'أعضاء الفريق:';

  @override
  String get teamMember1 => '1.ياسين بركات';

  @override
  String get teamMember2 => '2.يوسف محمود';

  @override
  String get teamMember3 => '3.محمد مجدي';

  @override
  String get teamMember4 => '4.محمد حجاب';

  @override
  String get teamMember5 => '5.أحمد عصام';

  @override
  String get teamMember6 => '6.معتز أشرف';

  @override
  String get teamMember7 => '7.علي محمود';

  @override
  String get settingsReportError => 'حدث خطأ؟  برجاء إعلامنا وسوف نصلحه.';

  @override
  String get signOutLabel => 'تسجيل الخروج';
}
