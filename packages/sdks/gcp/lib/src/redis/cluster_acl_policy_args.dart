// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_acl_policy_rule.dart';

/// {@template pulumi_redis_cluster_acl_policy_cluster_acl_policy_args_doc}
/// The set of arguments for ClusterAclPolicy.
/// {@endtemplate}
/// {@macro pulumi_redis_cluster_acl_policy_cluster_acl_policy_args_doc}
class ClusterAclPolicyArgs {
  /// The logical name of the ACL policy in the customer project
  /// with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project / location
  final pulumi.Input<String> aclPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ACL rules within the ACL policy.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterAclPolicyRule>> rules;

  /// Creates a new [ClusterAclPolicyArgs].
  /// [aclPolicyId] The logical name of the ACL policy in the customer project
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] The ACL rules within the ACL policy.
  const ClusterAclPolicyArgs({
    required this.aclPolicyId,
    this.deletionPolicy,
    required this.location,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicyId': aclPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<ClusterAclPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ClusterAclPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAclPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterAclPolicyArgs(
      aclPolicyId: pulumi.Input.fromValue(map['aclPolicyId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAclPolicyRule>(map['rules']!, (value) => ClusterAclPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
