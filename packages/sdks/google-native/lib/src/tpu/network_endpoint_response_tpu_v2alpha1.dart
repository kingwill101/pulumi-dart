// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config_response_tpu_v2alpha1.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV2alpha1 {
  /// The access config for the TPU worker.
  final pulumi.Input<AccessConfigResponseTpuV2alpha1> accessConfig;
  /// The internal IP address of this network endpoint.
  final pulumi.Input<String> ipAddress;
  /// The port of this network endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [NetworkEndpointResponseTpuV2alpha1].
  /// [accessConfig] The access config for the TPU worker.
  /// [ipAddress] The internal IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  const NetworkEndpointResponseTpuV2alpha1({
    required this.accessConfig,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': pulumi.Input.mapInputValue<AccessConfigResponseTpuV2alpha1, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory NetworkEndpointResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV2alpha1(
      accessConfig: pulumi.Input.fromValue(AccessConfigResponseTpuV2alpha1.fromMap((map['accessConfig']! as Map).cast<String, dynamic>())),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
