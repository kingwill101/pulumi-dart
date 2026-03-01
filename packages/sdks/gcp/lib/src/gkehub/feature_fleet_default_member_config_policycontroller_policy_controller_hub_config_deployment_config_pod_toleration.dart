// ignore_for_file: unused_element, unnecessary_cast


class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration {
  /// Matches a taint effect.
  final String? effect;
  /// Matches a taint key (not necessarily unique).
  final String? key;
  /// Matches a taint operator.
  final String? operator;
  /// Matches a taint value.
  final String? value;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration].
  /// [effect] Matches a taint effect.
  /// [key] Matches a taint key (not necessarily unique).
  /// [operator] Matches a taint operator.
  /// [value] Matches a taint value.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration({
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

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

