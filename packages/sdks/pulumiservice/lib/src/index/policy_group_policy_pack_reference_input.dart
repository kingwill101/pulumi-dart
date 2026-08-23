// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a policy pack within a policy group (input).
class PolicyGroupPolicyPackReferenceInput {
  /// Optional configuration for the policy pack. The special key `all` sets the default enforcement level for every policy in the pack; per-policy entries override it.
  final pulumi.Input<Map<String, dynamic>>? config;
  /// The display name of the policy pack.
  final pulumi.Input<String>? displayName;
  /// The name of the policy pack.
  final pulumi.Input<String> name;
  /// The version tag of the policy pack.
  final pulumi.Input<String>? versionTag;

  /// Creates a new [PolicyGroupPolicyPackReferenceInput].
  /// [config] Optional configuration for the policy pack. The special key `all` sets the default enforcement level for every policy in the pack; per-policy entries override it.
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [versionTag] The version tag of the policy pack.
  const PolicyGroupPolicyPackReferenceInput({
    this.config,
    this.displayName,
    required this.name,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'name': name,
      'versionTag': ?versionTag,
    };
  }

  factory PolicyGroupPolicyPackReferenceInput.fromMap(Map<String, dynamic> map) {
    return PolicyGroupPolicyPackReferenceInput(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      versionTag: (() { final guardedValue = map['versionTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
