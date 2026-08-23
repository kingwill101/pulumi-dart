// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_response.dart';
import 'worker_config_response.dart';

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1ConfigResponse {
  /// Network configuration for the pool.
  final pulumi.Input<NetworkConfigResponse> networkConfig;
  /// Machine configuration for the workers in the pool.
  final pulumi.Input<WorkerConfigResponse> workerConfig;

  /// Creates a new [PrivatePoolV1ConfigResponse].
  /// [networkConfig] Network configuration for the pool.
  /// [workerConfig] Machine configuration for the workers in the pool.
  const PrivatePoolV1ConfigResponse({
    required this.networkConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfig': pulumi.Input.mapInputValue<NetworkConfigResponse, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'workerConfig': pulumi.Input.mapInputValue<WorkerConfigResponse, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory PrivatePoolV1ConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivatePoolV1ConfigResponse(
      networkConfig: pulumi.Input.fromValue(NetworkConfigResponse.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())),
      workerConfig: pulumi.Input.fromValue(WorkerConfigResponse.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
