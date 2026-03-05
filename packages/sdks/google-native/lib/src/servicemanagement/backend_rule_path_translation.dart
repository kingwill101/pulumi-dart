enum BackendRulePathTranslation {
  pathTranslationUnspecified("PATH_TRANSLATION_UNSPECIFIED"),
  constantAddress("CONSTANT_ADDRESS"),
  appendPathToAddress("APPEND_PATH_TO_ADDRESS");

  const BackendRulePathTranslation(this.wireValue);
  final String wireValue;

  static BackendRulePathTranslation fromValue(String value) {
    for (final item in BackendRulePathTranslation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendRulePathTranslation value: $value');
  }
}

