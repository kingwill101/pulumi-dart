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
  const ClusterAutoscaling({
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
      'autoscalingProfile': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingAutoscalingProfile, String>(autoscalingProfile, (value) => value.wireValue),
      'enableNodeAutoprovisioning': ?enableNodeAutoprovisioning,
      'resourceLimits': ?pulumi.Input.mapOptionalInputValue<List<ResourceLimit>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ResourceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscaling(
      autoprovisioningLocations: (() { final guardedValue = map['autoprovisioningLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autoprovisioningNodePoolDefaults: (() { final guardedValue = map['autoprovisioningNodePoolDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoprovisioningNodePoolDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscalingProfile: (() { final guardedValue = map['autoscalingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutoscalingAutoscalingProfile.fromValue(guardedValue as String)); })(),
      enableNodeAutoprovisioning: (() { final guardedValue = map['enableNodeAutoprovisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceLimits: (() { final guardedValue = map['resourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceLimit>(guardedValue, (value) => ResourceLimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

