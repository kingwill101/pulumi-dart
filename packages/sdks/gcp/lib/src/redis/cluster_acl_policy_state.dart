// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_acl_policy_rule.dart';

/// Input properties used for looking up and filtering ClusterAclPolicy resources.
class ClusterAclPolicyState {
  /// The logical name of the ACL policy in the customer project
  /// with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project / location
  final pulumi.Input<String?>? aclPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Etag for the ACL policy.
  final pulumi.Input<String?>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. Full resource path of the ACL policy.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ACL rules within the ACL policy.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterAclPolicyRule>?>? rules;
  /// The state of the ACL policy.
  /// Possible values:
  /// ACTIVE
  /// UPDATING
  /// DELETING
  final pulumi.Input<String?>? state;

  /// Creates a new [ClusterAclPolicyState].
  /// [aclPolicyId] The logical name of the ACL policy in the customer project
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] Etag for the ACL policy.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Full resource path of the ACL policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] The ACL rules within the ACL policy.
  /// [state] The state of the ACL policy.
  const ClusterAclPolicyState({
    this.aclPolicyId,
    this.deletionPolicy,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.rules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicyId': ?aclPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ClusterAclPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ClusterAclPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory ClusterAclPolicyState.fromMap(Map<String, dynamic> map) {
    return ClusterAclPolicyState(
      aclPolicyId: (() { final guardedValue = map['aclPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAclPolicyRule>(guardedValue, (value) => ClusterAclPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
