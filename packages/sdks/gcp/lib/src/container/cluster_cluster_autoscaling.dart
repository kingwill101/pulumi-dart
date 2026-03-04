// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults.dart';
import 'cluster_cluster_autoscaling_resource_limit.dart';

class ClusterClusterAutoscaling {
  /// Contains defaults for a node pool created by NAP. A subset of fields also apply to
  /// GKE Autopilot clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscalingAutoProvisioningDefaults>?
  autoProvisioningDefaults;

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
  final pulumi.Input<List<ClusterClusterAutoscalingResourceLimit>>?
  resourceLimits;

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
      'autoProvisioningDefaults':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterClusterAutoscalingAutoProvisioningDefaults,
            Map<String, dynamic>
          >(autoProvisioningDefaults, (value) => value.toMap()),
      'autoProvisioningLocations': ?autoProvisioningLocations,
      'autoscalingProfile': ?autoscalingProfile,
      'defaultComputeClassEnabled': ?defaultComputeClassEnabled,
      'enabled': ?enabled,
      'resourceLimits':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterClusterAutoscalingResourceLimit>,
            List<Map<String, dynamic>>
          >(
            resourceLimits,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterClusterAutoscalingResourceLimit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscaling(
      autoProvisioningDefaults: (() {
        final guardedValue = map['autoProvisioningDefaults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterClusterAutoscalingAutoProvisioningDefaults.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoProvisioningLocations: (() {
        final guardedValue = map['autoProvisioningLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      autoscalingProfile: (() {
        final guardedValue = map['autoscalingProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultComputeClassEnabled: (() {
        final guardedValue = map['defaultComputeClassEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceLimits: (() {
        final guardedValue = map['resourceLimits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterClusterAutoscalingResourceLimit>(
            guardedValue,
            (value) => ClusterClusterAutoscalingResourceLimit.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
