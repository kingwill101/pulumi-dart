enum EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  gws("GWS"),
  gts("GTS"),
  all("ALL");

  const EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem value: $value');
  }
}

