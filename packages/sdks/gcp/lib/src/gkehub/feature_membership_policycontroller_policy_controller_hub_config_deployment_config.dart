// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  /// The name of the component. One of `admission` `audit` or `mutation`
  final pulumi.Input<String> componentName;
  /// Container resource requirements.
  final pulumi.Input<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources>? containerResources;
  /// Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY
  final pulumi.Input<String>? podAffinity;
  /// Pod tolerations of node taints.
  final pulumi.Input<List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>>? podTolerations;
  /// Pod replica count.
  final pulumi.Input<int>? replicaCount;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig].
  /// [componentName] The name of the component. One of `admission` `audit` or `mutation`
  /// [containerResources] Container resource requirements.
  /// [podAffinity] Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY
  /// [podTolerations] Pod tolerations of node taints.
  /// [replicaCount] Pod replica count.
  const FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.componentName,
    this.containerResources,
    this.podAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'containerResources': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources, Map<String, dynamic>>(containerResources, (value) => value.toMap()),
      'podAffinity': ?podAffinity,
      'podTolerations': ?pulumi.Input.mapOptionalInputValue<List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>, List<Map<String, dynamic>>>(podTolerations, (value) => pulumi.Input.encodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': ?replicaCount,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      containerResources: (() { final guardedValue = map['containerResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAffinity: (() { final guardedValue = map['podAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podTolerations: (() { final guardedValue = map['podTolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>(guardedValue, (value) => FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

