// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig {
  /// The port on which traffic will be received.
  final pulumi.Input<int> port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be received.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  const NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
    );
  }
}
