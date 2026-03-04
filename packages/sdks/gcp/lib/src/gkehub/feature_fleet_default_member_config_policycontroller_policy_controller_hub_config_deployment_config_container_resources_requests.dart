// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests {
  /// CPU requirement expressed in Kubernetes resource units.
  final pulumi.Input<String>? cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  final pulumi.Input<String>? memory;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests].
  /// [cpu] CPU requirement expressed in Kubernetes resource units.
  /// [memory] Memory requirement expressed in Kubernetes resource units.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': ?cpu, 'memory': ?memory};
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests(
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
