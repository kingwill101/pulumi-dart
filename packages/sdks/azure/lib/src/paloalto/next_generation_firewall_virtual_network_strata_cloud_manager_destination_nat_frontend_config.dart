// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig {
  /// The port on which traffic will be received.
  final pulumi.Input<int> port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be received.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  const NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
    );
  }
}
