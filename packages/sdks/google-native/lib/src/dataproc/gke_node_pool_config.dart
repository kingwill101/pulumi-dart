// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_config.dart';
import 'gke_node_pool_autoscaling_config.dart';

/// The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
class GkeNodePoolConfig {
  /// Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  final pulumi.Input<GkeNodePoolAutoscalingConfig>? autoscaling;
  /// Optional. The node pool configuration.
  final pulumi.Input<GkeNodeConfig>? config;
  /// Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  final pulumi.Input<List<String>>? locations;

  /// Creates a new [GkeNodePoolConfig].
  /// [autoscaling] Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  /// [config] Optional. The node pool configuration.
  /// [locations] Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  GkeNodePoolConfig({
    this.autoscaling,
    this.config,
    this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<GkeNodePoolAutoscalingConfig, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'config': ?pulumi.Input.mapOptionalInputValue<GkeNodeConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'locations': ?locations,
    };
  }

  factory GkeNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolConfig(
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeNodePoolAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

