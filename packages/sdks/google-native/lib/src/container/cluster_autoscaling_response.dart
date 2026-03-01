// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoprovisioning_node_pool_defaults_response.dart';
import 'resource_limit_response.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscalingResponse {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final List<String> autoprovisioningLocations;
  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final AutoprovisioningNodePoolDefaultsResponse autoprovisioningNodePoolDefaults;
  /// Defines autoscaling behaviour.
  final String autoscalingProfile;
  /// Enables automatic node pool creation and deletion.
  final bool enableNodeAutoprovisioning;
  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final List<ResourceLimitResponse> resourceLimits;

  /// Creates a new [ClusterAutoscalingResponse].
  /// [autoprovisioningLocations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  /// [autoprovisioningNodePoolDefaults] AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  /// [autoscalingProfile] Defines autoscaling behaviour.
  /// [enableNodeAutoprovisioning] Enables automatic node pool creation and deletion.
  /// [resourceLimits] Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  ClusterAutoscalingResponse({
    required this.autoprovisioningLocations,
    required this.autoprovisioningNodePoolDefaults,
    required this.autoscalingProfile,
    required this.enableNodeAutoprovisioning,
    required this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioningLocations': autoprovisioningLocations,
      'autoprovisioningNodePoolDefaults': autoprovisioningNodePoolDefaults.toMap(),
      'autoscalingProfile': autoscalingProfile,
      'enableNodeAutoprovisioning': enableNodeAutoprovisioning,
      'resourceLimits': pulumi.Input.encodeList<ResourceLimitResponse, Map<String, dynamic>>(resourceLimits, (value) => value.toMap()),
    };
  }

  factory ClusterAutoscalingResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingResponse(
      autoprovisioningLocations: (map['autoprovisioningLocations'] as List).cast<String>(),
      autoprovisioningNodePoolDefaults: AutoprovisioningNodePoolDefaultsResponse.fromMap((map['autoprovisioningNodePoolDefaults'] as Map).cast<String, dynamic>()),
      autoscalingProfile: map['autoscalingProfile'] as String,
      enableNodeAutoprovisioning: map['enableNodeAutoprovisioning'] as bool,
      resourceLimits: pulumi.Input.decodeList<ResourceLimitResponse>(map['resourceLimits'], (value) => ResourceLimitResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

