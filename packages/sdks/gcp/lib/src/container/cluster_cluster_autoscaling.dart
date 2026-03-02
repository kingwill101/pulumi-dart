// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults.dart';
import 'cluster_cluster_autoscaling_resource_limit.dart';

class ClusterClusterAutoscaling {
  /// Contains defaults for a node pool created by NAP. A subset of fields also apply to
  /// GKE Autopilot clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscalingAutoProvisioningDefaults>? autoProvisioningDefaults;
  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which the
  /// NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>>? autoProvisioningLocations;
  /// Configuration
  /// options for the [Autoscaling profile](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-autoscaler#autoscaling_profiles)
  /// feature, which lets you choose whether the cluster autoscaler should optimize for resource utilization or resource availability
  /// when deciding to remove nodes from a cluster. Can be `BALANCED` or `OPTIMIZE_UTILIZATION`. Defaults to `BALANCED`.
  final pulumi.Input<String>? autoscalingProfile;
  /// Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  final pulumi.Input<bool>? defaultComputeClassEnabled;
  /// Whether node auto-provisioning is enabled. Must be supplied for GKE Standard clusters, `true` is implied
  /// for autopilot clusters. Resource limits for `cpu` and `memory` must be defined to enable node auto-provisioning for GKE Standard.
  final pulumi.Input<bool>? enabled;
  /// Global constraints for machine resources in the
  /// cluster. Configuring the `cpu` and `memory` types is required if node
  /// auto-provisioning is enabled. These limits will apply to node pool autoscaling
  /// in addition to node auto-provisioning. Structure is documented below.
  final pulumi.Input<List<ClusterClusterAutoscalingResourceLimit>>? resourceLimits;

  /// Creates a new [ClusterClusterAutoscaling].
  /// [autoProvisioningDefaults] Contains defaults for a node pool created by NAP. A subset of fields also apply to
  /// [autoProvisioningLocations] The list of Google Compute Engine
  /// [autoscalingProfile] Configuration
  /// [defaultComputeClassEnabled] Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  /// [enabled] Whether node auto-provisioning is enabled. Must be supplied for GKE Standard clusters, `true` is implied
  /// [resourceLimits] Global constraints for machine resources in the
  ClusterClusterAutoscaling({
    this.autoProvisioningDefaults,
    this.autoProvisioningLocations,
    this.autoscalingProfile,
    this.defaultComputeClassEnabled,
    this.enabled,
    this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisioningDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterClusterAutoscalingAutoProvisioningDefaults, Map<String, dynamic>>(autoProvisioningDefaults, (value) => value.toMap()),
      'autoProvisioningLocations': ?autoProvisioningLocations,
      'autoscalingProfile': ?autoscalingProfile,
      'defaultComputeClassEnabled': ?defaultComputeClassEnabled,
      'enabled': ?enabled,
      'resourceLimits': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterAutoscalingResourceLimit>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<ClusterClusterAutoscalingResourceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscaling(
      autoProvisioningDefaults: map['autoProvisioningDefaults'] == null ? null : (ClusterClusterAutoscalingAutoProvisioningDefaults.fromMap((map['autoProvisioningDefaults']! as Map).cast<String, dynamic>())).input(),
      autoProvisioningLocations: map['autoProvisioningLocations'] == null ? null : ((map['autoProvisioningLocations']! as List).cast<String>()).input(),
      autoscalingProfile: map['autoscalingProfile'] == null ? null : (map['autoscalingProfile']! as String).input(),
      defaultComputeClassEnabled: map['defaultComputeClassEnabled'] == null ? null : (map['defaultComputeClassEnabled']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      resourceLimits: map['resourceLimits'] == null ? null : (pulumi.Input.decodeList<ClusterClusterAutoscalingResourceLimit>(map['resourceLimits']!, (value) => ClusterClusterAutoscalingResourceLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

