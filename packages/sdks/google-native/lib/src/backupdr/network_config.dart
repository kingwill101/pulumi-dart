// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_peering_mode.dart';

/// Network configuration for ManagementServer instance.
class NetworkConfig {
  /// Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  final pulumi.Input<String>? network;
  /// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  final pulumi.Input<NetworkConfigPeeringMode>? peeringMode;

  /// Creates a new [NetworkConfig].
  /// [network] Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  /// [peeringMode] Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  NetworkConfig({
    this.network,
    this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'peeringMode': ?pulumi.Input.mapOptionalInputValue<NetworkConfigPeeringMode, String>(peeringMode, (value) => value.wireValue),
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringMode: (() { final guardedValue = map['peeringMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigPeeringMode.fromValue(guardedValue as String)); })(),
    );
  }
}

