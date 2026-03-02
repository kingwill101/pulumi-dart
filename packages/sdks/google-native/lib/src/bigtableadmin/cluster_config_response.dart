// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_config_response.dart';

/// Configuration for a cluster.
class ClusterConfigResponse {
  /// Autoscaling configuration for this cluster.
  final pulumi.Input<ClusterAutoscalingConfigResponse> clusterAutoscalingConfig;

  /// Creates a new [ClusterConfigResponse].
  /// [clusterAutoscalingConfig] Autoscaling configuration for this cluster.
  ClusterConfigResponse({
    required this.clusterAutoscalingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoscalingConfig': pulumi.Input.mapInputValue<ClusterAutoscalingConfigResponse, Map<String, dynamic>>(clusterAutoscalingConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse(
      clusterAutoscalingConfig: (ClusterAutoscalingConfigResponse.fromMap((map['clusterAutoscalingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

