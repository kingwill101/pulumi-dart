import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace status.
enum NamespaceStatus implements pulumi.PulumiEnum<String> {
  created("Created"),
  creating("Creating"),
  suspended("Suspended"),
  deleting("Deleting");

  const NamespaceStatus(this.wireValue);
  @override
  final String wireValue;

  static NamespaceStatus fromValue(String value) {
    for (final item in NamespaceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceStatus value: $value');
  }
}
