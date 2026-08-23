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
  const FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration({
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
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
