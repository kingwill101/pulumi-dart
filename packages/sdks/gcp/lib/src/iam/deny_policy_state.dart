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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DenyPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DenyPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DenyPolicyState.fromMap(Map<String, dynamic> map) {
    return DenyPolicyState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyPolicyRule>(guardedValue, (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

