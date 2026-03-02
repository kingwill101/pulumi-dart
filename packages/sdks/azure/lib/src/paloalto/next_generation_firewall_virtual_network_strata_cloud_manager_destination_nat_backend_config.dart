// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final pulumi.Input<int> port;
  /// The public IP Address to send the traffic to.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The public IP Address to send the traffic to.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig(
      port: (map['port'] as int).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
    );
  }
}

