// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config.dart';
import 'worker_config.dart';

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1Config {
  /// Network configuration for the pool.
  final pulumi.Input<NetworkConfig>? networkConfig;
  /// Machine configuration for the workers in the pool.
  final pulumi.Input<WorkerConfig>? workerConfig;

  /// Creates a new [PrivatePoolV1Config].
  /// [networkConfig] Network configuration for the pool.
  /// [workerConfig] Machine configuration for the workers in the pool.
  PrivatePoolV1Config({
    this.networkConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory PrivatePoolV1Config.fromMap(Map<String, dynamic> map) {
    return PrivatePoolV1Config(
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      workerConfig: map['workerConfig'] == null ? null : (WorkerConfig.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

