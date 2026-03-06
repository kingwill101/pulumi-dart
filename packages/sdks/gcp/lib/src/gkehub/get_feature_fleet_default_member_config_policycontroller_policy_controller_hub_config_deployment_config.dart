// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resource.dart';
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  final pulumi.Input<String> component;
  /// Container resource requirements.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource>> containerResources;
  /// Pod affinity configuration. Possible values: ["AFFINITY_UNSPECIFIED", "NO_AFFINITY", "ANTI_AFFINITY"]
  final pulumi.Input<String> podAffinity;
  /// Pod tolerations of node taints.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>> podTolerations;
  /// Pod replica count.
  final pulumi.Input<int> replicaCount;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig].
  /// [component] Required.
  /// [containerResources] Container resource requirements.
  /// [podAffinity] Pod affinity configuration. Possible values: ["AFFINITY_UNSPECIFIED", "NO_AFFINITY", "ANTI_AFFINITY"]
  /// [podTolerations] Pod tolerations of node taints.
  /// [replicaCount] Pod replica count.
  const GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.component,
    required this.containerResources,
    required this.podAffinity,
    required this.podTolerations,
    required this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'containerResources': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource>, List<Map<String, dynamic>>>(containerResources, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podAffinity': podAffinity,
      'podTolerations': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>, List<Map<String, dynamic>>>(podTolerations, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': replicaCount,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      component: pulumi.Input.fromValue(map['component'] as String),
      containerResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource>(map['containerResources']!, (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource.fromMap((value as Map).cast<String, dynamic>()))),
      podAffinity: pulumi.Input.fromValue(map['podAffinity'] as String),
      podTolerations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>(map['podTolerations']!, (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap((value as Map).cast<String, dynamic>()))),
      replicaCount: pulumi.Input.fromValue(map['replicaCount'] as int),
    );
  }
}

