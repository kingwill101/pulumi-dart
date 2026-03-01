/// Represents a supported Fabric/Infra. (AKSEdge etc...).
enum Distro {
  aKSEdge("AKSEdge");

  const Distro(this.value);
  final String value;

  static Distro fromValue(String value) {
    for (final item in Distro.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Distro value: $value');
  }
}

