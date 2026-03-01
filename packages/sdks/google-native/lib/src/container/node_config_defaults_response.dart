// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config_response.dart';
import 'node_pool_logging_config_response.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponse {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfigResponse gcfsConfig;
  /// Logging configuration for node pools.
  final NodePoolLoggingConfigResponse loggingConfig;

  /// Creates a new [NodeConfigDefaultsResponse].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [loggingConfig] Logging configuration for node pools.
  NodeConfigDefaultsResponse({
    required this.gcfsConfig,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': gcfsConfig.toMap(),
      'loggingConfig': loggingConfig.toMap(),
    };
  }

  factory NodeConfigDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponse(
      gcfsConfig: GcfsConfigResponse.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>()),
      loggingConfig: NodePoolLoggingConfigResponse.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

