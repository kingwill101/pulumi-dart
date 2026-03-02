// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message
class AdditionalNodeNetworkConfigContainerV1beta1 {
  /// Name of the VPC where the additional interface belongs
  final pulumi.Input<String>? network;
  /// Name of the subnetwork where the additional interface belongs
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AdditionalNodeNetworkConfigContainerV1beta1].
  /// [network] Name of the VPC where the additional interface belongs
  /// [subnetwork] Name of the subnetwork where the additional interface belongs
  AdditionalNodeNetworkConfigContainerV1beta1({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalNodeNetworkConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdditionalNodeNetworkConfigContainerV1beta1(
      network: map['network'] == null ? null : (map['network']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

