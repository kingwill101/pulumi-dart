// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_acl_entry.dart';

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// Structure is documented below.
  final pulumi.Input<List<AclAclEntry>>? aclEntries;
  /// The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  final pulumi.Input<String>? aclId;
  /// The cluster name.
  final pulumi.Input<String>? cluster;
  /// `etag` is used for concurrency control. An `etag` is returned in the
  /// response to `GetAcl` and `CreateAcl`. Callers are required to put that etag
  /// in the request to `UpdateAcl` to ensure that their change will be applied
  /// to the same version of the acl that exists in the Kafka Cluster.
  /// A terminal 'T' character in the etag indicates that the AclEntries were
  /// truncated due to repeated field limits.
  final pulumi.Input<String>? etag;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String>? location;
  /// The name of the acl. The `ACL_ID` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/acls/ACL_ID`.
  final pulumi.Input<String>? name;
  /// The acl pattern type derived from the name. One of: LITERAL, PREFIXED.
  final pulumi.Input<String>? patternType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The acl resource name derived from the name. For cluster resource_type, this is always "kafka-cluster". Can be the wildcard literal "*".
  final pulumi.Input<String>? resourceName;
  /// The acl resource type derived from the name. One of: CLUSTER, TOPIC, GROUP, TRANSACTIONAL_ID.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [AclState].
  /// [aclEntries] The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// [aclId] The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// [cluster] The cluster name.
  /// [etag] `etag` is used for concurrency control. An `etag` is returned in the
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the acl. The `ACL_ID` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/acls/ACL_ID`.
  /// [patternType] The acl pattern type derived from the name. One of: LITERAL, PREFIXED.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceName] The acl resource name derived from the name. For cluster resource_type, this is always "kafka-cluster". Can be the wildcard literal "*".
  /// [resourceType] The acl resource type derived from the name. One of: CLUSTER, TOPIC, GROUP, TRANSACTIONAL_ID.
  AclState({
    pulumi.Output<List<AclAclEntry>>? aclEntries,
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? cluster,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? patternType,
    pulumi.Output<String>? project,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? resourceType,
  }) :
      aclEntries = pulumi.Input.asOptionalInput<List<AclAclEntry>>(aclEntries),
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      patternType = pulumi.Input.asOptionalInput<String>(patternType),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntries': ?pulumi.Input.mapOptionalInputValue<List<AclAclEntry>, List<Map<String, dynamic>>>(aclEntries, (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclId': ?aclId,
      'cluster': ?cluster,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'patternType': ?patternType,
      'project': ?project,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      aclEntries: map['aclEntries'] == null ? null : pulumi.Output.create<List<AclAclEntry>>(pulumi.Input.decodeList<AclAclEntry>(map['aclEntries'], (value) => AclAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      patternType: map['patternType'] == null ? null : pulumi.Output.create<String>(map['patternType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

