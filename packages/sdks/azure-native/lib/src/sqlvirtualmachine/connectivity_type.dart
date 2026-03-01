/// SQL Server connectivity option.
enum ConnectivityType {
  lOCAL("LOCAL"),
  pRIVATE("PRIVATE"),
  pUBLIC("PUBLIC");

  const ConnectivityType(this.value);
  final String value;

  static ConnectivityType fromValue(String value) {
    for (final item in ConnectivityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityType value: $value');
  }
}

