// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_limits.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_requests.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources {
  /// Limits describes the maximum amount of compute resources allowed for use by the running container.
  final pulumi.Input<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits>? limits;
  /// Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  final pulumi.Input<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests>? requests;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources].
  /// [limits] Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// [requests] Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources(
      limits: map['limits'] == null ? null : (FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

