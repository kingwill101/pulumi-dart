// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_autoscaling_auto_provisioning_default.dart';
import 'get_cluster_cluster_autoscaling_resource_limit.dart';

class GetClusterClusterAutoscaling {
  /// Contains defaults for a node pool created by NAP.
  final pulumi.Input<List<GetClusterClusterAutoscalingAutoProvisioningDefault>> autoProvisioningDefaults;
  /// The list of Google Compute Engine zones in which the NodePool's nodes can be created by NAP.
  final pulumi.Input<List<String>> autoProvisioningLocations;
  /// Configuration options for the Autoscaling profile feature, which lets you choose whether the cluster autoscaler should optimize for resource utilization or resource availability when deciding to remove nodes from a cluster. Can be BALANCED or OPTIMIZE_UTILIZATION. Defaults to BALANCED.
  final pulumi.Input<String> autoscalingProfile;
  /// Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  final pulumi.Input<bool> defaultComputeClassEnabled;
  /// Whether node auto-provisioning is enabled. Resource limits for cpu and memory must be defined to enable node auto-provisioning.
  final pulumi.Input<bool> enabled;
  /// Global constraints for machine resources in the cluster. Configuring the cpu and memory types is required if node auto-provisioning is enabled. These limits will apply to node pool autoscaling in addition to node auto-provisioning.
  final pulumi.Input<List<GetClusterClusterAutoscalingResourceLimit>> resourceLimits;

  /// Creates a new [GetClusterClusterAutoscaling].
  /// [autoProvisioningDefaults] Contains defaults for a node pool created by NAP.
  /// [autoProvisioningLocations] The list of Google Compute Engine zones in which the NodePool's nodes can be created by NAP.
  /// [autoscalingProfile] Configuration options for the Autoscaling profile feature, which lets you choose whether the cluster autoscaler should optimize for resource utilization or resource availability when deciding to remove nodes from a cluster. Can be BALANCED or OPTIMIZE_UTILIZATION. Defaults to BALANCED.
  /// [defaultComputeClassEnabled] Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  /// [enabled] Whether node auto-provisioning is enabled. Resource limits for cpu and memory must be defined to enable node auto-provisioning.
  /// [resourceLimits] Global constraints for machine resources in the cluster. Configuring the cpu and memory types is required if node auto-provisioning is enabled. These limits will apply to node pool autoscaling in addition to node auto-provisioning.
  const GetClusterClusterAutoscaling({
    required this.autoProvisioningDefaults,
    required this.autoProvisioningLocations,
    required this.autoscalingProfile,
    required this.defaultComputeClassEnabled,
    required this.enabled,
    required this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisioningDefaults': pulumi.Input.mapInputValue<List<GetClusterClusterAutoscalingAutoProvisioningDefault>, List<Map<String, dynamic>>>(autoProvisioningDefaults, (value) => pulumi.Input.encodeList<GetClusterClusterAutoscalingAutoProvisioningDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoProvisioningLocations': autoProvisioningLocations,
      'autoscalingProfile': autoscalingProfile,
      'defaultComputeClassEnabled': defaultComputeClassEnabled,
      'enabled': enabled,
      'resourceLimits': pulumi.Input.mapInputValue<List<GetClusterClusterAutoscalingResourceLimit>, List<Map<String, dynamic>>>(resourceLimits, (value) => pulumi.Input.encodeList<GetClusterClusterAutoscalingResourceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscaling(
      autoProvisioningDefaults: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterClusterAutoscalingAutoProvisioningDefault>(map['autoProvisioningDefaults']!, (value) => GetClusterClusterAutoscalingAutoProvisioningDefault.fromMap((value as Map).cast<String, dynamic>()))),
      autoProvisioningLocations: pulumi.Input.fromValue((map['autoProvisioningLocations'] as List).cast<String>()),
      autoscalingProfile: pulumi.Input.fromValue(map['autoscalingProfile'] as String),
      defaultComputeClassEnabled: pulumi.Input.fromValue(map['defaultComputeClassEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      resourceLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterClusterAutoscalingResourceLimit>(map['resourceLimits']!, (value) => GetClusterClusterAutoscalingResourceLimit.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
