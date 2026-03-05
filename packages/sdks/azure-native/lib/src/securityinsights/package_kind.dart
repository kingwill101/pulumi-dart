/// the packageKind of the package contains this template
enum PackageKind {
  valueSolution("Solution"),
  valueStandalone("Standalone");

  const PackageKind(this.wireValue);
  final String wireValue;

  static PackageKind fromValue(String value) {
    for (final item in PackageKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageKind value: $value');
  }
}

