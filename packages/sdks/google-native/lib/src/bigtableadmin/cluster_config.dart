// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_config.dart';

/// Configuration for a cluster.
class ClusterConfig {
  /// Autoscaling configuration for this cluster.
  final pulumi.Input<ClusterAutoscalingConfig>? clusterAutoscalingConfig;

  /// Creates a new [ClusterConfig].
  /// [clusterAutoscalingConfig] Autoscaling configuration for this cluster.
  ClusterConfig({this.clusterAutoscalingConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoscalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterAutoscalingConfig,
            Map<String, dynamic>
          >(clusterAutoscalingConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      clusterAutoscalingConfig: (() {
        final guardedValue = map['clusterAutoscalingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterAutoscalingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
