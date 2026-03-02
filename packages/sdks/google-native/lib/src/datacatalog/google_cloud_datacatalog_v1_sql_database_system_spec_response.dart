// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification that applies to entries that are part `SQL_DATABASE` system (user_specified_type)
class GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse {
  /// Version of the database engine.
  final pulumi.Input<String> databaseVersion;
  /// Host of the SQL database enum InstanceHost { UNDEFINED = 0; SELF_HOSTED = 1; CLOUD_SQL = 2; AMAZON_RDS = 3; AZURE_SQL = 4; } Host of the enclousing database instance.
  final pulumi.Input<String> instanceHost;
  /// SQL Database Engine. enum SqlEngine { UNDEFINED = 0; MY_SQL = 1; POSTGRE_SQL = 2; SQL_SERVER = 3; } Engine of the enclosing database instance.
  final pulumi.Input<String> sqlEngine;

  /// Creates a new [GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse].
  /// [databaseVersion] Version of the database engine.
  /// [instanceHost] Host of the SQL database enum InstanceHost { UNDEFINED = 0; SELF_HOSTED = 1; CLOUD_SQL = 2; AMAZON_RDS = 3; AZURE_SQL = 4; } Host of the enclousing database instance.
  /// [sqlEngine] SQL Database Engine. enum SqlEngine { UNDEFINED = 0; MY_SQL = 1; POSTGRE_SQL = 2; SQL_SERVER = 3; } Engine of the enclosing database instance.
  GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse({
    required this.databaseVersion,
    required this.instanceHost,
    required this.sqlEngine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': databaseVersion,
      'instanceHost': instanceHost,
      'sqlEngine': sqlEngine,
    };
  }

  factory GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse(
      databaseVersion: (map['databaseVersion'] as String).input(),
      instanceHost: (map['instanceHost'] as String).input(),
      sqlEngine: (map['sqlEngine'] as String).input(),
    );
  }
}

