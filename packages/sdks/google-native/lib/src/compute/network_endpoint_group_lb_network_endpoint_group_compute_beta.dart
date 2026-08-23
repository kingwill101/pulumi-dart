// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing specific fields for network endpoint group.
class NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta {
  /// The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  final pulumi.Input<int>? defaultPort;
  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  final pulumi.Input<String>? network;
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta].
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint. [Deprecated] This field is deprecated.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified. [Deprecated] This field is deprecated.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong. [Deprecated] This field is deprecated.
  const NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta({
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

  factory NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta(
      defaultPort: (() { final guardedValue = map['defaultPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
