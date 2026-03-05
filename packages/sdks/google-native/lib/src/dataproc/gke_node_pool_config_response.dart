// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_config_response.dart';
import 'gke_node_pool_autoscaling_config_response.dart';

/// The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
class GkeNodePoolConfigResponse {
  /// Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  final pulumi.Input<GkeNodePoolAutoscalingConfigResponse> autoscaling;
  /// Optional. The node pool configuration.
  final pulumi.Input<GkeNodeConfigResponse> config;
  /// Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GkeNodePoolConfigResponse].
  /// [autoscaling] Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  /// [config] Optional. The node pool configuration.
  /// [locations] Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  GkeNodePoolConfigResponse({
    required this.autoscaling,
    required this.config,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': pulumi.Input.mapInputValue<GkeNodePoolAutoscalingConfigResponse, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'config': pulumi.Input.mapInputValue<GkeNodeConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'locations': locations,
    };
  }

  factory GkeNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolConfigResponse(
      autoscaling: pulumi.Input.fromValue(GkeNodePoolAutoscalingConfigResponse.fromMap((map['autoscaling']! as Map).cast<String, dynamic>())),
      config: pulumi.Input.fromValue(GkeNodeConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

