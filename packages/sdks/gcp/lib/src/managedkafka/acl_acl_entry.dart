// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclAclEntry {
  /// The host. Must be set to "*" for Managed Service for Apache Kafka.
  final pulumi.Input<String?>? host;
  /// The operation type. Allowed values are (case insensitive): ALL, READ,
  /// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS,
  /// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See https://kafka.apache.org/documentation/#operations_resources_and_protocols
  /// for valid combinations of resourceType and operation for different Kafka API requests.
  final pulumi.Input<String> operation;
  /// The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  final pulumi.Input<String?>? permissionType;
  /// The principal. Specified as Google Cloud account, with the Kafka StandardAuthorizer prefix User:". For example: "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be the wildcard "User:*" to refer to all users.
  final pulumi.Input<String> principal;

  /// Creates a new [AclAclEntry].
  /// [host] The host. Must be set to "*" for Managed Service for Apache Kafka.
  /// [operation] The operation type. Allowed values are (case insensitive): ALL, READ,
  /// [permissionType] The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  /// [principal] The principal. Specified as Google Cloud account, with the Kafka StandardAuthorizer prefix User:". For example: "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be the wildcard "User:*" to refer to all users.
  const AclAclEntry({
    this.host,
    required this.operation,
    this.permissionType,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'operation': operation,
      'permissionType': ?permissionType,
      'principal': principal,
    };
  }

  factory AclAclEntry.fromMap(Map<String, dynamic> map) {
    return AclAclEntry(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}
