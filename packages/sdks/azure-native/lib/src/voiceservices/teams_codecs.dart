/// The voice codecs expected for communication with Teams.
enum TeamsCodecs {
  pCMA("PCMA"),
  pCMU("PCMU"),
  g722("G722"),
  g7222("G722_2"),
  sILK8("SILK_8"),
  sILK16("SILK_16");

  const TeamsCodecs(this.wireValue);
  final String wireValue;

  static TeamsCodecs fromValue(String value) {
    for (final item in TeamsCodecs.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamsCodecs value: $value');
  }
}

