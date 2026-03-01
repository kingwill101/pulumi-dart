// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config.dart';
import 'node_pool_logging_config.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfig? gcfsConfig;
  /// Logging configuration for node pools.
  final NodePoolLoggingConfig? loggingConfig;

  /// Creates a new [NodeConfigDefaults].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [loggingConfig] Logging configuration for node pools.
  NodeConfigDefaults({
    this.gcfsConfig,
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': ?gcfsConfig == null ? null : gcfsConfig!.toMap(),
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
    };
  }

  factory NodeConfigDefaults.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaults(
      gcfsConfig: map['gcfsConfig'] == null ? null : GcfsConfig.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>()),
      loggingConfig: map['loggingConfig'] == null ? null : NodePoolLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

