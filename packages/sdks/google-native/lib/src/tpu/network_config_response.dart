// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network related configurations.
class NetworkConfigResponse {
  /// Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  final pulumi.Input<bool> canIpForward;
  /// Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  final pulumi.Input<bool> enableExternalIps;
  /// The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  final pulumi.Input<String> network;
  /// The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [NetworkConfigResponse].
  /// [canIpForward] Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  /// [enableExternalIps] Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  /// [network] The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  /// [subnetwork] The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  NetworkConfigResponse({
    required this.canIpForward,
    required this.enableExternalIps,
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canIpForward': canIpForward,
      'enableExternalIps': enableExternalIps,
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      canIpForward: pulumi.Input.fromValue(map['canIpForward'] as bool),
      enableExternalIps: pulumi.Input.fromValue(map['enableExternalIps'] as bool),
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

