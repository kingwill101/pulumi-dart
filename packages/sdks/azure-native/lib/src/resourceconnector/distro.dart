import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a supported Fabric/Infra. (AKSEdge etc...).
enum Distro implements pulumi.PulumiEnum<String> {
  aKSEdge("AKSEdge");

  const Distro(this.wireValue);
  @override
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
