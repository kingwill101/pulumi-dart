// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcfs_config_response.dart';
import 'node_pool_logging_config_response.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponse {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final pulumi.Input<GcfsConfigResponse> gcfsConfig;
  /// Logging configuration for node pools.
  final pulumi.Input<NodePoolLoggingConfigResponse> loggingConfig;

  /// Creates a new [NodeConfigDefaultsResponse].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [loggingConfig] Logging configuration for node pools.
  const NodeConfigDefaultsResponse({
    required this.gcfsConfig,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': pulumi.Input.mapInputValue<GcfsConfigResponse, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'loggingConfig': pulumi.Input.mapInputValue<NodePoolLoggingConfigResponse, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory NodeConfigDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponse(
      gcfsConfig: pulumi.Input.fromValue(GcfsConfigResponse.fromMap((map['gcfsConfig']! as Map).cast<String, dynamic>())),
      loggingConfig: pulumi.Input.fromValue(NodePoolLoggingConfigResponse.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

