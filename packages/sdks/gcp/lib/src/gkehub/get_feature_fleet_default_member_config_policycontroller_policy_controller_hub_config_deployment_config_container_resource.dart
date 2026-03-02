// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resource_limit.dart';
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resource_request.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource {
  /// Limits describes the maximum amount of compute resources allowed for use by the running container.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit>> limits;
  /// Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest>> requests;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource].
  /// [limits] Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// [requests] Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit>, List<Map<String, dynamic>>>(limits, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requests': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource(
      limits: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit>(map['limits'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requests: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest>(map['requests'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourceRequest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

