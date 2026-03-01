// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig {
  /// The port on which to receive traffic.
  final int port;
  /// The ID of the Public IP Address on which to receive traffic.
  ///
  /// > **Note:** This must be an Azure Public IP address ID also specified in the `public_ip_address_ids` list.
  final String publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig].
  /// [port] The port on which to receive traffic.
  /// [publicIpAddressId] The ID of the Public IP Address on which to receive traffic.
  NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig(
      port: map['port'] as int,
      publicIpAddressId: map['publicIpAddressId'] as String,
    );
  }
}

