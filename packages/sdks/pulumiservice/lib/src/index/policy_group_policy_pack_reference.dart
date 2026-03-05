// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a policy pack within a policy group.
class PolicyGroupPolicyPackReference {
  /// Optional configuration for the policy pack.
  final pulumi.Input<Map<String, dynamic>>? config;
  /// The display name of the policy pack.
  final pulumi.Input<String>? displayName;
  /// The name of the policy pack.
  final pulumi.Input<String> name;
  /// The version of the policy pack.
  final pulumi.Input<double>? version;
  /// The version tag of the policy pack.
  final pulumi.Input<String>? versionTag;

  /// Creates a new [PolicyGroupPolicyPackReference].
  /// [config] Optional configuration for the policy pack.
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [version] The version of the policy pack.
  /// [versionTag] The version tag of the policy pack.
  PolicyGroupPolicyPackReference({
    this.config,
    this.displayName,
    required this.name,
    this.version,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'name': name,
      'version': ?version,
      'versionTag': ?versionTag,
    };
  }

  factory PolicyGroupPolicyPackReference.fromMap(Map<String, dynamic> map) {
    return PolicyGroupPolicyPackReference(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      versionTag: (() { final guardedValue = map['versionTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

