// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig {
  /// The port on which traffic will be receiveed.
  final int port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final String publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be receiveed.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig({
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
      port: map['port'] as int,
      publicIpAddressId: map['publicIpAddressId'] as String,
    );
  }
}

