// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration {
  /// Matches a taint effect.
  final pulumi.Input<String>? effect;
  /// Matches a taint key (not necessarily unique).
  final pulumi.Input<String>? key;
  /// Matches a taint operator.
  final pulumi.Input<String>? operator;
  /// Matches a taint value.
  final pulumi.Input<String>? value;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration].
  /// [effect] Matches a taint effect.
  /// [key] Matches a taint key (not necessarily unique).
  /// [operator] Matches a taint operator.
  /// [value] Matches a taint value.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration(
      effect: map['effect'] == null ? null : (map['effect']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

