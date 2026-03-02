// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs
  final pulumi.Input<String>? network;
  /// Name of the subnetwork where the additional interface belongs
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs
  /// [subnetwork] Name of the subnetwork where the additional interface belongs
  AdditionalNodeNetworkConfig({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfig(
      network: map['network'] == null ? null : (map['network']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

