/// Cluster principal role.
enum ClusterPrincipalRole {
  valueAllDatabasesAdmin("AllDatabasesAdmin"),
  valueAllDatabasesViewer("AllDatabasesViewer");

  const ClusterPrincipalRole(this.wireValue);
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

