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
  const NodeConfigDefaults({
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
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcfsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
