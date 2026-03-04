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
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CloudSqlCredential,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'database': ?database,
      'instanceId': ?instanceId,
      'type':
          ?pulumi.Input.mapOptionalInputValue<CloudSqlPropertiesType, String>(
            type,
            (value) => value.wireValue,
          ),
    };
  }

  factory CloudSqlProperties.fromMap(Map<String, dynamic> map) {
    return CloudSqlProperties(
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudSqlCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudSqlPropertiesType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
