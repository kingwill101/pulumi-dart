enum EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  gws("GWS"),
  gts("GTS"),
  all("ALL");

  const EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem(this.wireValue);
  final String wireValue;

  static EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem value: $value');
  }
}
