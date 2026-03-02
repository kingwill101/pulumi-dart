// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcfs_config.dart';
import 'node_pool_logging_config.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final pulumi.Input<GcfsConfig>? gcfsConfig;
  /// Logging configuration for node pools.
  final pulumi.Input<NodePoolLoggingConfig>? loggingConfig;

  /// Creates a new [NodeConfigDefaults].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [loggingConfig] Logging configuration for node pools.
  NodeConfigDefaults({
    this.gcfsConfig,
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<GcfsConfig, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory NodeConfigDefaults.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaults(
      gcfsConfig: map['gcfsConfig'] == null ? null : (GcfsConfig.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>())).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (NodePoolLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

