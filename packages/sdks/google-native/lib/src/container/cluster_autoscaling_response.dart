// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoprovisioning_node_pool_defaults_response.dart';
import 'resource_limit_response.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscalingResponse {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>> autoprovisioningLocations;
  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final pulumi.Input<AutoprovisioningNodePoolDefaultsResponse> autoprovisioningNodePoolDefaults;
  /// Defines autoscaling behaviour.
  final pulumi.Input<String> autoscalingProfile;
  /// Enables automatic node pool creation and deletion.
  final pulumi.Input<bool> enableNodeAutoprovisioning;
  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final pulumi.Input<List<ResourceLimitResponse>> resourceLimits;

  /// Creates a new [ClusterAutoscalingResponse].
  /// [autoprovisioningLocations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  /// [autoprovisioningNodePoolDefaults] AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  /// [autoscalingProfile] Defines autoscaling behaviour.
  /// [enableNodeAutoprovisioning] Enables automatic node pool creation and deletion.
  /// [resourceLimits] Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  const ClusterAutoscalingResponse({
    required this.autoprovisioningLocations,
    required this.autoprovisioningNodePoolDefaults,
    required this.autoscalingProfile,
    required this.enableNodeAutoprovisioning,
    required this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioningLocations': autoprovisioningLocations,
      'autoprovisioningNodePoolDefaults': pulumi.Input.mapInputValue<AutoprovisioningNodePoolDefaultsResponse, Map<String, dynamic>>(autoprovisioningNodePoolDefaults, (value) => value.toMap()),
      'autoscalingProfile': autoscalingProfile,
      'enableNodeAutoprovisioning': enableNodeAutoprovisioning,
      'resourceLimits': pulumi.Input.mapInputValue<List<ResourceLimitResponse>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ResourceLimitResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAutoscalingResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingResponse(
      autoprovisioningLocations: pulumi.Input.fromValue((map['autoprovisioningLocations'] as List).cast<String>()),
      autoprovisioningNodePoolDefaults: pulumi.Input.fromValue(AutoprovisioningNodePoolDefaultsResponse.fromMap((map['autoprovisioningNodePoolDefaults']! as Map).cast<String, dynamic>())),
      autoscalingProfile: pulumi.Input.fromValue(map['autoscalingProfile'] as String),
      enableNodeAutoprovisioning: pulumi.Input.fromValue(map['enableNodeAutoprovisioning'] as bool),
      resourceLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceLimitResponse>(map['resourceLimits']!, (value) => ResourceLimitResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

