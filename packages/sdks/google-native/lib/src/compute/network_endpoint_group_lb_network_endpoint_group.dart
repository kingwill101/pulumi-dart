// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing specific fields for network endpoint group.
class NetworkEndpointGroupLbNetworkEndpointGroup {
  /// The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  final pulumi.Input<int>? defaultPort;
  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  final pulumi.Input<String>? network;
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NetworkEndpointGroupLbNetworkEndpointGroup].
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  NetworkEndpointGroupLbNetworkEndpointGroup({
    this.defaultPort,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': ?defaultPort,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkEndpointGroupLbNetworkEndpointGroup.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupLbNetworkEndpointGroup(
      defaultPort: map['defaultPort'] == null ? null : (map['defaultPort'] as int).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
    );
  }
}

