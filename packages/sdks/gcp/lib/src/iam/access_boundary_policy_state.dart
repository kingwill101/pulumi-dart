// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_rule.dart';

/// Input properties used for looking up and filtering AccessBoundaryPolicy resources.
class AccessBoundaryPolicyState {
  /// The display name of the rule.
  final pulumi.Input<String>? displayName;
  /// The hash of the resource. Used internally during updates.
  final pulumi.Input<String>? etag;
  /// The name of the policy.
  final pulumi.Input<String>? name;
  /// The attachment point is identified by its URL-encoded full resource name.
  final pulumi.Input<String>? parent;
  /// Rules to be applied.
  /// Structure is documented below.
  final pulumi.Input<List<AccessBoundaryPolicyRule>>? rules;

  /// Creates a new [AccessBoundaryPolicyState].
  /// [displayName] The display name of the rule.
  /// [etag] The hash of the resource. Used internally during updates.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  AccessBoundaryPolicyState({
    this.displayName,
    this.etag,
    this.name,
    this.parent,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AccessBoundaryPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AccessBoundaryPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessBoundaryPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyState(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AccessBoundaryPolicyRule>(map['rules'], (value) => AccessBoundaryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

