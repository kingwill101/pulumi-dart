// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final pulumi.Input<int> port;
  /// The IP Address to send the traffic to.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The IP Address to send the traffic to.
  const NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
    );
  }
}
