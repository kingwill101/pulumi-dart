// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit {
  /// CPU requirement expressed in Kubernetes resource units.
  final pulumi.Input<String> cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  final pulumi.Input<String> memory;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit].
  /// [cpu] CPU requirement expressed in Kubernetes resource units.
  /// [memory] Memory requirement expressed in Kubernetes resource units.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memory': memory};
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
