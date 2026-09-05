// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_cluster_acl_policy_get_cluster_acl_policy_args_doc}
/// Arguments for getClusterAclPolicy.
/// {@endtemplate}
/// {@macro pulumi_redis_get_cluster_acl_policy_get_cluster_acl_policy_args_doc}
class GetClusterAclPolicyArgs {
  /// The logical name of the ACL Policy in the customer project.
  final pulumi.Input<String> aclPolicyId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetClusterAclPolicyArgs].
  /// [aclPolicyId] The logical name of the ACL Policy in the customer project.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetClusterAclPolicyArgs({
    required this.aclPolicyId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicyId': aclPolicyId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetClusterAclPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterAclPolicyArgs(
      aclPolicyId: pulumi.Input.fromValue(map['aclPolicyId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
