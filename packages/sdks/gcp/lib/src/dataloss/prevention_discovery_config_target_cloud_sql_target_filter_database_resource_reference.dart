// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference {
  /// Required. Name of a database within the instance.
  final String database;
  /// Required. Name of a database resource, for example, a table within the database.
  final String databaseResource;
  /// Required. The instance where this resource is located. For example: Cloud SQL instance ID.
  final String instance;
  /// Required. If within a project-level config, then this must match the config's project ID.
  final String projectId;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference].
  /// [database] Required. Name of a database within the instance.
  /// [databaseResource] Required. Name of a database resource, for example, a table within the database.
  /// [instance] Required. The instance where this resource is located. For example: Cloud SQL instance ID.
  /// [projectId] Required. If within a project-level config, then this must match the config's project ID.
  PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference({
    required this.database,
    required this.databaseResource,
    required this.instance,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'databaseResource': databaseResource,
      'instance': instance,
      'projectId': projectId,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference(
      database: map['database'] as String,
      databaseResource: map['databaseResource'] as String,
      instance: map['instance'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

