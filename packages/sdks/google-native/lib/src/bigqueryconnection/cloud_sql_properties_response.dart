// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_credential_response.dart';

/// Connection properties specific to the Cloud SQL.
class CloudSqlPropertiesResponse {
  /// Input only. Cloud SQL credential.
  final pulumi.Input<CloudSqlCredentialResponse> credential;

  /// Database name.
  final pulumi.Input<String> database;

  /// Cloud SQL instance ID in the form `project:location:instance`.
  final pulumi.Input<String> instanceId;

  /// The account ID of the service used for the purpose of this connection. When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  final pulumi.Input<String> serviceAccountId;

  /// Type of the Cloud SQL database.
  final pulumi.Input<String> type;

  /// Creates a new [CloudSqlPropertiesResponse].
  /// [credential] Input only. Cloud SQL credential.
  /// [database] Database name.
  /// [instanceId] Cloud SQL instance ID in the form `project:location:instance`.
  /// [serviceAccountId] The account ID of the service used for the purpose of this connection. When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  /// [type] Type of the Cloud SQL database.
  CloudSqlPropertiesResponse({
    required this.credential,
    required this.database,
    required this.instanceId,
    required this.serviceAccountId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential':
          pulumi.Input.mapInputValue<
            CloudSqlCredentialResponse,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'database': database,
      'instanceId': instanceId,
      'serviceAccountId': serviceAccountId,
      'type': type,
    };
  }

  factory CloudSqlPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlPropertiesResponse(
      credential: pulumi.Input.fromValue(
        CloudSqlCredentialResponse.fromMap(
          (map['credential']! as Map).cast<String, dynamic>(),
        ),
      ),
      database: pulumi.Input.fromValue(map['database'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      serviceAccountId: pulumi.Input.fromValue(
        map['serviceAccountId'] as String,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
