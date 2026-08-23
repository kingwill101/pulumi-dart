// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// {@template pulumi_managedkafka_acl_acl_args_doc}
/// The set of arguments for Acl.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_acl_acl_args_doc}
class AclArgs {
  /// The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// Structure is documented below.
  final pulumi.Input<List<AclAclEntry>> aclEntries;
  /// The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
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
  final pulumi.Input<String>? deletionPolicy;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AclArgs].
  /// [aclEntries] The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// [aclId] The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// [cluster] The cluster name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  const AclArgs({
    required this.aclEntries,
    required this.aclId,
    required this.cluster,
    this.deletionPolicy,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': pulumi.Input.mapInputValue<List<AclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclId': aclId,
      'cluster': cluster,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
    };
  }

  factory AclArgs.fromMap(Map<String, dynamic> map) {
    return AclArgs(
      aclEntries: pulumi.Input.fromValue(pulumi.Input.decodeList<AclAclEntry>(map['aclEntries']!, (value) => AclAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
