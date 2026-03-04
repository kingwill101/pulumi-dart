/// SQL Server connectivity option.
enum ConnectivityType {
  lOCAL("LOCAL"),
  pRIVATE("PRIVATE"),
  pUBLIC("PUBLIC");

  const ConnectivityType(this.wireValue);
  final String wireValue;

  static ConnectivityType fromValue(String value) {
    for (final item in ConnectivityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityType value: $value');
  }
}
