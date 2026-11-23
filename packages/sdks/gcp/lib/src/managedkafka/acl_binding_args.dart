// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedkafka_acl_binding_acl_binding_args_doc}
/// The set of arguments for AclBinding.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_acl_binding_acl_binding_args_doc}
class AclBindingArgs {
  /// The ID of the acl this entry belongs to, which is the final component
  /// of the acl's name. The structure of `aclId` defines the Resource
  /// Pattern (resource_type, resource_name, pattern_type) of the acl.
  /// `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  final pulumi.Input<String> aclId;
  /// The cluster name.
  final pulumi.Input<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The host. Must be set to "*" for Managed Service for Apache Kafka.
  final pulumi.Input<String?>? host;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The operation type. Allowed values are (case insensitive): ALL, READ,
  /// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS,
  /// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See
  /// https://kafka.apache.org/documentation/#operations_resources_and_protocols
  /// for valid combinations of resourceType and operation for different
  /// Kafka API requests.
  final pulumi.Input<String> operation;
  /// The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  final pulumi.Input<String?>? permissionType;
  /// The principal. Specified as a Google Cloud account, with the Kafka
  /// StandardAuthorizer prefix "User:". For example:
  /// "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be
  /// the wildcard "User:*" to refer to all users.
  final pulumi.Input<String> principal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AclBindingArgs].
  /// [aclId] The ID of the acl this entry belongs to, which is the final component
  /// [cluster] The cluster name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [host] The host. Must be set to "*" for Managed Service for Apache Kafka.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [operation] The operation type. Allowed values are (case insensitive): ALL, READ,
  /// [permissionType] The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  /// [principal] The principal. Specified as a Google Cloud account, with the Kafka
  /// [project] The ID of the project in which the resource belongs.
  const AclBindingArgs({
    required this.aclId,
    required this.cluster,
    this.deletionPolicy,
    this.host,
    required this.location,
    required this.operation,
    this.permissionType,
    required this.principal,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'cluster': cluster,
      'deletionPolicy': ?deletionPolicy,
      'host': ?host,
      'location': location,
      'operation': operation,
      'permissionType': ?permissionType,
      'principal': principal,
      'project': ?project,
    };
  }

  factory AclBindingArgs.fromMap(Map<String, dynamic> map) {
    return AclBindingArgs(
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(map['principal'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
