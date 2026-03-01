// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_credential.dart';
import 'cloud_sql_properties_type.dart';

/// Connection properties specific to the Cloud SQL.
class CloudSqlProperties {
  /// Input only. Cloud SQL credential.
  final CloudSqlCredential? credential;
  /// Database name.
  final String? database;
  /// Cloud SQL instance ID in the form `project:location:instance`.
  final String? instanceId;
  /// Type of the Cloud SQL database.
  final CloudSqlPropertiesType? type;

  /// Creates a new [CloudSqlProperties].
  /// [credential] Input only. Cloud SQL credential.
  /// [database] Database name.
  /// [instanceId] Cloud SQL instance ID in the form `project:location:instance`.
  /// [type] Type of the Cloud SQL database.
  CloudSqlProperties({
    this.credential,
    this.database,
    this.instanceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential == null ? null : credential!.toMap(),
      'database': ?database,
      'instanceId': ?instanceId,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory CloudSqlProperties.fromMap(Map<String, dynamic> map) {
    return CloudSqlProperties(
      credential: map['credential'] == null ? null : CloudSqlCredential.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      database: map['database'] == null ? null : map['database'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      type: map['type'] == null ? null : CloudSqlPropertiesType.fromValue(map['type'] as String),
    );
  }
}

