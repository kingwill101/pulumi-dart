/// State of FTP / FTPS service
enum FtpsState {
  allAllowed("AllAllowed"),
  ftpsOnly("FtpsOnly"),
  disabled("Disabled");

  const FtpsState(this.wireValue);
  final String wireValue;

  static FtpsState fromValue(String value) {
    for (final item in FtpsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FtpsState value: $value');
  }
}
