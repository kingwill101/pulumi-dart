// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_rule.dart';

/// Input properties used for looking up and filtering AccessBoundaryPolicy resources.
class AccessBoundaryPolicyState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the rule.
  final pulumi.Input<String?>? displayName;
  /// The hash of the resource. Used internally during updates.
  final pulumi.Input<String?>? etag;
  /// The name of the policy.
  final pulumi.Input<String?>? name;
  /// The attachment point is identified by its URL-encoded full resource name.
  final pulumi.Input<String?>? parent;
  /// Rules to be applied.
  /// Structure is documented below.
  final pulumi.Input<List<AccessBoundaryPolicyRule>?>? rules;

  /// Creates a new [AccessBoundaryPolicyState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the rule.
  /// [etag] The hash of the resource. Used internally during updates.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  const AccessBoundaryPolicyState({
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.name,
    this.parent,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AccessBoundaryPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AccessBoundaryPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessBoundaryPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessBoundaryPolicyRule>(guardedValue, (value) => AccessBoundaryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
