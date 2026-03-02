// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoprovisioning_node_pool_defaults_container_v1beta1.dart';
import 'cluster_autoscaling_autoscaling_profile_container_v1beta1.dart';
import 'resource_limit_container_v1beta1.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscalingContainerV1beta1 {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>>? autoprovisioningLocations;
  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final pulumi.Input<AutoprovisioningNodePoolDefaultsContainerV1beta1>? autoprovisioningNodePoolDefaults;
  /// Defines autoscaling behaviour.
  final pulumi.Input<ClusterAutoscalingAutoscalingProfileContainerV1beta1>? autoscalingProfile;
  /// Enables automatic node pool creation and deletion.
  final pulumi.Input<bool>? enableNodeAutoprovisioning;
  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final pulumi.Input<List<ResourceLimitContainerV1beta1>>? resourceLimits;

  /// Creates a new [ClusterAutoscalingContainerV1beta1].
  /// [autoprovisioningLocations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  /// [autoprovisioningNodePoolDefaults] AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  /// [autoscalingProfile] Defines autoscaling behaviour.
  /// [enableNodeAutoprovisioning] Enables automatic node pool creation and deletion.
  /// [resourceLimits] Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  ClusterAutoscalingContainerV1beta1({
    this.autoprovisioningLocations,
    this.autoprovisioningNodePoolDefaults,
    this.autoscalingProfile,
    this.enableNodeAutoprovisioning,
    this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioningLocations': ?autoprovisioningLocations,
      'autoprovisioningNodePoolDefaults': ?pulumi.Input.mapOptionalInputValue<AutoprovisioningNodePoolDefaultsContainerV1beta1, Map<String, dynamic>>(autoprovisioningNodePoolDefaults, (value) => value.toMap()),
      'autoscalingProfile': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingAutoscalingProfileContainerV1beta1, String>(autoscalingProfile, (value) => value.value),
      'enableNodeAutoprovisioning': ?enableNodeAutoprovisioning,
      'resourceLimits': ?pulumi.Input.mapOptionalInputValue<List<ResourceLimitContainerV1beta1>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ResourceLimitContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAutoscalingContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingContainerV1beta1(
      autoprovisioningLocations: map['autoprovisioningLocations'] == null ? null : ((map['autoprovisioningLocations']! as List).cast<String>()).input(),
      autoprovisioningNodePoolDefaults: map['autoprovisioningNodePoolDefaults'] == null ? null : (AutoprovisioningNodePoolDefaultsContainerV1beta1.fromMap((map['autoprovisioningNodePoolDefaults']! as Map).cast<String, dynamic>())).input(),
      autoscalingProfile: map['autoscalingProfile'] == null ? null : (ClusterAutoscalingAutoscalingProfileContainerV1beta1.fromValue(map['autoscalingProfile']! as String)).input(),
      enableNodeAutoprovisioning: map['enableNodeAutoprovisioning'] == null ? null : (map['enableNodeAutoprovisioning']! as bool).input(),
      resourceLimits: map['resourceLimits'] == null ? null : (pulumi.Input.decodeList<ResourceLimitContainerV1beta1>(map['resourceLimits']!, (value) => ResourceLimitContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

