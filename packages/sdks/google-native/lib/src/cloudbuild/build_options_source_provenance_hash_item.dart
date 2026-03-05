enum BuildOptionsSourceProvenanceHashItem {
  none("NONE"),
  sha256("SHA256"),
  md5("MD5"),
  sha512("SHA512");

  const BuildOptionsSourceProvenanceHashItem(this.wireValue);
  final String wireValue;

  static BuildOptionsSourceProvenanceHashItem fromValue(String value) {
    for (final item in BuildOptionsSourceProvenanceHashItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsSourceProvenanceHashItem value: $value');
  }
}

