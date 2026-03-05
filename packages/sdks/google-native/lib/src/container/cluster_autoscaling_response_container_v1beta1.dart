// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoprovisioning_node_pool_defaults_response_container_v1beta1.dart';
import 'resource_limit_response_container_v1beta1.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscalingResponseContainerV1beta1 {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>> autoprovisioningLocations;
  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final pulumi.Input<AutoprovisioningNodePoolDefaultsResponseContainerV1beta1> autoprovisioningNodePoolDefaults;
  /// Defines autoscaling behaviour.
  final pulumi.Input<String> autoscalingProfile;
  /// Enables automatic node pool creation and deletion.
  final pulumi.Input<bool> enableNodeAutoprovisioning;
  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final pulumi.Input<List<ResourceLimitResponseContainerV1beta1>> resourceLimits;

  /// Creates a new [ClusterAutoscalingResponseContainerV1beta1].
  /// [autoprovisioningLocations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  /// [autoprovisioningNodePoolDefaults] AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  /// [autoscalingProfile] Defines autoscaling behaviour.
  /// [enableNodeAutoprovisioning] Enables automatic node pool creation and deletion.
  /// [resourceLimits] Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  ClusterAutoscalingResponseContainerV1beta1({
    required this.autoprovisioningLocations,
    required this.autoprovisioningNodePoolDefaults,
    required this.autoscalingProfile,
    required this.enableNodeAutoprovisioning,
    required this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioningLocations': autoprovisioningLocations,
      'autoprovisioningNodePoolDefaults': pulumi.Input.mapInputValue<AutoprovisioningNodePoolDefaultsResponseContainerV1beta1, Map<String, dynamic>>(autoprovisioningNodePoolDefaults, (value) => value.toMap()),
      'autoscalingProfile': autoscalingProfile,
      'enableNodeAutoprovisioning': enableNodeAutoprovisioning,
      'resourceLimits': pulumi.Input.mapInputValue<List<ResourceLimitResponseContainerV1beta1>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ResourceLimitResponseContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAutoscalingResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingResponseContainerV1beta1(
      autoprovisioningLocations: pulumi.Input.fromValue((map['autoprovisioningLocations'] as List).cast<String>()),
      autoprovisioningNodePoolDefaults: pulumi.Input.fromValue(AutoprovisioningNodePoolDefaultsResponseContainerV1beta1.fromMap((map['autoprovisioningNodePoolDefaults']! as Map).cast<String, dynamic>())),
      autoscalingProfile: pulumi.Input.fromValue(map['autoscalingProfile'] as String),
      enableNodeAutoprovisioning: pulumi.Input.fromValue(map['enableNodeAutoprovisioning'] as bool),
      resourceLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceLimitResponseContainerV1beta1>(map['resourceLimits']!, (value) => ResourceLimitResponseContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

