import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster principal role.
enum ClusterPrincipalRole implements pulumi.PulumiEnum<String> {
  valueAllDatabasesAdmin("AllDatabasesAdmin"),
  valueAllDatabasesViewer("AllDatabasesViewer");

  const ClusterPrincipalRole(this.wireValue);
  @override
  final String wireValue;

  static ClusterPrincipalRole fromValue(String value) {
    for (final item in ClusterPrincipalRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterPrincipalRole value: $value');
  }
}
