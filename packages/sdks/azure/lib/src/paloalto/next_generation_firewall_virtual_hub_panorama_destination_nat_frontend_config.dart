// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig {
  /// The port on which traffic will be receiveed.
  final pulumi.Input<int> port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be receiveed.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig(
      port: (map['port'] as int).input(),
      publicIpAddressId: (map['publicIpAddressId'] as String).input(),
    );
  }
}

