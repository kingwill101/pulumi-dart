/// The version number associated with the source control
enum Version {
  valueV1("V1"),
  valueV2("V2");

  const Version(this.wireValue);
  final String wireValue;

  static Version fromValue(String value) {
    for (final item in Version.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Version value: $value');
  }
}
