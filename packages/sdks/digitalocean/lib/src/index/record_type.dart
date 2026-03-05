enum RecordType {
  a("A"),
  aAAA("AAAA"),
  cAA("CAA"),
  cNAME("CNAME"),
  mX("MX"),
  nS("NS"),
  tXT("TXT"),
  sRV("SRV");

  const RecordType(this.wireValue);
  final String wireValue;

  static RecordType fromValue(String value) {
    for (final item in RecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordType value: $value');
  }
}

