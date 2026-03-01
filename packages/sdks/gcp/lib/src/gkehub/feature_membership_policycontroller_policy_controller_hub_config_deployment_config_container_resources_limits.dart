// ignore_for_file: unused_element, unnecessary_cast


class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits {
  /// CPU requirement expressed in Kubernetes resource units.
  final String? cpu;
  /// Memory requirement expressed in Kubernetes resource units.
  final String? memory;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits].
  /// [cpu] CPU requirement expressed in Kubernetes resource units.
  /// [memory] Memory requirement expressed in Kubernetes resource units.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

