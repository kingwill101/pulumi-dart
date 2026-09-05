// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final pulumi.Input<int> port;
  /// The Public IP Address to send the traffic to.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The Public IP Address to send the traffic to.
  const NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
    );
  }
}
