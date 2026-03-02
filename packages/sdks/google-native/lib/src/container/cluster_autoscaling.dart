// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoprovisioning_node_pool_defaults.dart';
import 'cluster_autoscaling_autoscaling_profile.dart';
import 'resource_limit.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscaling {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>>? autoprovisioningLocations;
  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final pulumi.Input<AutoprovisioningNodePoolDefaults>? autoprovisioningNodePoolDefaults;
  /// Defines autoscaling behaviour.
  final pulumi.Input<ClusterAutoscalingAutoscalingProfile>? autoscalingProfile;
  /// Enables automatic node pool creation and deletion.
  final pulumi.Input<bool>? enableNodeAutoprovisioning;
  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final pulumi.Input<List<ResourceLimit>>? resourceLimits;

  /// Creates a new [ClusterAutoscaling].
  /// [autoprovisioningLocations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  /// [autoprovisioningNodePoolDefaults] AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  /// [autoscalingProfile] Defines autoscaling behaviour.
  /// [enableNodeAutoprovisioning] Enables automatic node pool creation and deletion.
  /// [resourceLimits] Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  ClusterAutoscaling({
    this.autoprovisioningLocations,
    this.autoprovisioningNodePoolDefaults,
    this.autoscalingProfile,
    this.enableNodeAutoprovisioning,
    this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioningLocations': ?autoprovisioningLocations,
      'autoprovisioningNodePoolDefaults': ?pulumi.Input.mapOptionalInputValue<AutoprovisioningNodePoolDefaults, Map<String, dynamic>>(autoprovisioningNodePoolDefaults, (value) => value.toMap()),
      'autoscalingProfile': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingAutoscalingProfile, String>(autoscalingProfile, (value) => value.value),
      'enableNodeAutoprovisioning': ?enableNodeAutoprovisioning,
      'resourceLimits': ?pulumi.Input.mapOptionalInputValue<List<ResourceLimit>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ResourceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscaling(
      autoprovisioningLocations: map['autoprovisioningLocations'] == null ? null : ((map['autoprovisioningLocations'] as List).cast<String>()).input(),
      autoprovisioningNodePoolDefaults: map['autoprovisioningNodePoolDefaults'] == null ? null : (AutoprovisioningNodePoolDefaults.fromMap((map['autoprovisioningNodePoolDefaults'] as Map).cast<String, dynamic>())).input(),
      autoscalingProfile: map['autoscalingProfile'] == null ? null : (ClusterAutoscalingAutoscalingProfile.fromValue(map['autoscalingProfile'] as String)).input(),
      enableNodeAutoprovisioning: map['enableNodeAutoprovisioning'] == null ? null : (map['enableNodeAutoprovisioning'] as bool).input(),
      resourceLimits: map['resourceLimits'] == null ? null : (pulumi.Input.decodeList<ResourceLimit>(map['resourceLimits'], (value) => ResourceLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

