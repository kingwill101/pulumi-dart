// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final int port;
  /// The Public IP Address to send the traffic to.
  final String publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The Public IP Address to send the traffic to.
  NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig({
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
      port: map['port'] as int,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

