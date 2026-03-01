enum RecordType {
  a("A"),
  aAAA("AAAA"),
  cAA("CAA"),
  cNAME("CNAME"),
  mX("MX"),
  nS("NS"),
  tXT("TXT"),
  sRV("SRV");

  const RecordType(this.value);
  final String value;

  static RecordType fromValue(String value) {
    for (final item in RecordType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordType value: $value');
  }
}

