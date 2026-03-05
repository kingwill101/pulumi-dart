// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfigResponse {
  /// Name of the VPC where the additional interface belongs
  final pulumi.Input<String> network;
  /// Name of the subnetwork where the additional interface belongs
  final pulumi.Input<String> subnetwork;

  /// Creates a new [AdditionalNodeNetworkConfigResponse].
  /// [network] Name of the VPC where the additional interface belongs
  /// [subnetwork] Name of the subnetwork where the additional interface belongs
  AdditionalNodeNetworkConfigResponse({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory AdditionalNodeNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfigResponse(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

