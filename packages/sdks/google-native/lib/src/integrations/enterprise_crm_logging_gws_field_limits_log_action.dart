enum EnterpriseCrmLoggingGwsFieldLimitsLogAction {
  logActionUnspecified("LOG_ACTION_UNSPECIFIED"),
  dontLog("DONT_LOG"),
  log("LOG");

  const EnterpriseCrmLoggingGwsFieldLimitsLogAction(this.wireValue);
  final String wireValue;

  static EnterpriseCrmLoggingGwsFieldLimitsLogAction fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsFieldLimitsLogAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsFieldLimitsLogAction value: $value');
  }
}
