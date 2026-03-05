/// WCF relay type.
enum Relaytype {
  valueNetTcp("NetTcp"),
  valueHttp("Http");

  const Relaytype(this.wireValue);
  final String wireValue;

  static Relaytype fromValue(String value) {
    for (final item in Relaytype.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Relaytype value: $value');
  }
}

