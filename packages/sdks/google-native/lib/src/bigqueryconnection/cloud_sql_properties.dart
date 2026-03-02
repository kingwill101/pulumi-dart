// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_credential.dart';
import 'cloud_sql_properties_type.dart';

/// Connection properties specific to the Cloud SQL.
class CloudSqlProperties {
  /// Input only. Cloud SQL credential.
  final pulumi.Input<CloudSqlCredential>? credential;
  /// Database name.
  final pulumi.Input<String>? database;
  /// Cloud SQL instance ID in the form `project:location:instance`.
  final pulumi.Input<String>? instanceId;
  /// Type of the Cloud SQL database.
  final pulumi.Input<CloudSqlPropertiesType>? type;

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
      'credential': ?pulumi.Input.mapOptionalInputValue<CloudSqlCredential, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'database': ?database,
      'instanceId': ?instanceId,
      'type': ?pulumi.Input.mapOptionalInputValue<CloudSqlPropertiesType, String>(type, (value) => value.value),
    };
  }

  factory CloudSqlProperties.fromMap(Map<String, dynamic> map) {
    return CloudSqlProperties(
      credential: map['credential'] == null ? null : (CloudSqlCredential.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      type: map['type'] == null ? null : (CloudSqlPropertiesType.fromValue(map['type'] as String)).input(),
    );
  }
}

