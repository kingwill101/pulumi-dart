// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final pulumi.Input<int> port;
  /// The Public IP Address to send the traffic to.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The Public IP Address to send the traffic to.
  const NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
    );
  }
}
