// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network configuration for ManagementServer instance.
class NetworkConfigResponse {
  /// Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  final pulumi.Input<String> network;
  /// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  final pulumi.Input<String> peeringMode;

  /// Creates a new [NetworkConfigResponse].
  /// [network] Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  /// [peeringMode] Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  const NetworkConfigResponse({
    required this.network,
    required this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'peeringMode': peeringMode,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      network: pulumi.Input.fromValue(map['network'] as String),
      peeringMode: pulumi.Input.fromValue(map['peeringMode'] as String),
    );
  }
}

