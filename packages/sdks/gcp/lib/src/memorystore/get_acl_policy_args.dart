// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memorystore_get_acl_policy_get_acl_policy_args_doc}
/// Arguments for getAclPolicy.
/// {@endtemplate}
/// {@macro pulumi_memorystore_get_acl_policy_get_acl_policy_args_doc}
class GetAclPolicyArgs {
  /// The logical name of the ACL Policy in the customer project.
  final pulumi.Input<String> aclPolicyId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetAclPolicyArgs].
  /// [aclPolicyId] The logical name of the ACL Policy in the customer project.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetAclPolicyArgs({
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

  factory GetAclPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAclPolicyArgs(
      aclPolicyId: pulumi.Input.fromValue(map['aclPolicyId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
