// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final int port;
  /// The public IP Address to send the traffic to.
  final String publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The public IP Address to send the traffic to.
  NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig(
      port: map['port'] as int,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

