// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources_limits.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources_requests.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources {
  /// Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits>? limits;
  /// Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests>? requests;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources].
  /// [limits] Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// [requests] Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources(
      limits: map['limits'] == null ? null : (FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

