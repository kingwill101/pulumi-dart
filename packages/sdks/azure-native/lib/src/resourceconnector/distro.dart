/// Represents a supported Fabric/Infra. (AKSEdge etc...).
enum Distro {
  aKSEdge("AKSEdge");

  const Distro(this.wireValue);
  final String wireValue;

  static Distro fromValue(String value) {
    for (final item in Distro.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Distro value: $value');
  }
}
