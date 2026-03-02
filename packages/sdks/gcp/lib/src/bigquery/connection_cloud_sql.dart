// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_cloud_sql_credential.dart';

class ConnectionCloudSql {
  /// Cloud SQL properties.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudSqlCredential> credential;
  /// Database name.
  final pulumi.Input<String> database;
  /// Cloud SQL instance ID in the form project:location:instance.
  final pulumi.Input<String> instanceId;
  /// (Output)
  /// When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  final pulumi.Input<String>? serviceAccountId;
  /// Type of the Cloud SQL database.
  /// Possible values are: `DATABASE_TYPE_UNSPECIFIED`, `POSTGRES`, `MYSQL`.
  final pulumi.Input<String> type;

  /// Creates a new [ConnectionCloudSql].
  /// [credential] Cloud SQL properties.
  /// [database] Database name.
  /// [instanceId] Cloud SQL instance ID in the form project:location:instance.
  /// [serviceAccountId] (Output)
  /// [type] Type of the Cloud SQL database.
  ConnectionCloudSql({
    required this.credential,
    required this.database,
    required this.instanceId,
    this.serviceAccountId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': pulumi.Input.mapInputValue<ConnectionCloudSqlCredential, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'database': database,
      'instanceId': instanceId,
      'serviceAccountId': ?serviceAccountId,
      'type': type,
    };
  }

  factory ConnectionCloudSql.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSql(
      credential: (ConnectionCloudSqlCredential.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      database: (map['database'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      serviceAccountId: map['serviceAccountId'] == null ? null : (map['serviceAccountId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

