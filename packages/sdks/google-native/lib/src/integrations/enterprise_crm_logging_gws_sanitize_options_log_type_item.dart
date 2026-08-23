enum EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  gws("GWS"),
  gts("GTS"),
  all("ALL");

  const EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem(this.wireValue);
  final String wireValue;

  static EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem value: $value');
  }
}
