// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config_response.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV2 {
  /// The access config for the TPU worker.
  final pulumi.Input<AccessConfigResponse> accessConfig;

  /// The internal IP address of this network endpoint.
  final pulumi.Input<String> ipAddress;

  /// The port of this network endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [NetworkEndpointResponseTpuV2].
  /// [accessConfig] The access config for the TPU worker.
  /// [ipAddress] The internal IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  NetworkEndpointResponseTpuV2({
    required this.accessConfig,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig':
          pulumi.Input.mapInputValue<
            AccessConfigResponse,
            Map<String, dynamic>
          >(accessConfig, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory NetworkEndpointResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV2(
      accessConfig: pulumi.Input.fromValue(
        AccessConfigResponse.fromMap(
          (map['accessConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
