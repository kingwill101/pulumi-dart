// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> component;
  /// Container resource requirements.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources>? containerResources;
  /// Pod affinity configuration.
  /// Possible values are: `AFFINITY_UNSPECIFIED`, `NO_AFFINITY`, `ANTI_AFFINITY`.
  final pulumi.Input<String>? podAffinity;
  /// Pod tolerations of node taints.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>>? podTolerations;
  /// Pod replica count.
  final pulumi.Input<int>? replicaCount;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig].
  /// [component] The identifier for this object. Format specified above.
  /// [containerResources] Container resource requirements.
  /// [podAffinity] Pod affinity configuration.
  /// [podTolerations] Pod tolerations of node taints.
  /// [replicaCount] Pod replica count.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.component,
    this.containerResources,
    this.podAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'containerResources': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources, Map<String, dynamic>>(containerResources, (value) => value.toMap()),
      'podAffinity': ?podAffinity,
      'podTolerations': ?pulumi.Input.mapOptionalInputValue<List<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>, List<Map<String, dynamic>>>(podTolerations, (value) => pulumi.Input.encodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': ?replicaCount,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      component: (map['component'] as String).input(),
      containerResources: map['containerResources'] == null ? null : (FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap((map['containerResources'] as Map).cast<String, dynamic>())).input(),
      podAffinity: map['podAffinity'] == null ? null : (map['podAffinity'] as String).input(),
      podTolerations: map['podTolerations'] == null ? null : (pulumi.Input.decodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>(map['podTolerations'], (value) => FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
    );
  }
}

