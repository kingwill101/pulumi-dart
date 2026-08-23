// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig {
  /// The port on which traffic will be receiveed.
  final pulumi.Input<int> port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be receiveed.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  const NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig(
      port: pulumi.Input.fromValue(map['port'] as int),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
    );
  }
}
