// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_policy_rule.dart';

/// Input properties used for looking up and filtering DenyPolicy resources.
class DenyPolicyState {
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
  final pulumi.Input<List<DenyPolicyRule>>? rules;

  /// Creates a new [DenyPolicyState].
  /// [displayName] The display name of the rule.
  /// [etag] The hash of the resource. Used internally during updates.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  DenyPolicyState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<DenyPolicyRule>>? rules,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      rules = pulumi.Input.asOptionalInput<List<DenyPolicyRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DenyPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DenyPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DenyPolicyState.fromMap(Map<String, dynamic> map) {
    return DenyPolicyState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<DenyPolicyRule>>(pulumi.Input.decodeList<DenyPolicyRule>(map['rules'], (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

