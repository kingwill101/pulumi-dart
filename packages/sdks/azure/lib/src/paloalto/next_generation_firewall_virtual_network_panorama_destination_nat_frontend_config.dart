// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig {
  /// The port on which to receive traffic.
  final pulumi.Input<int> port;

  /// The ID of the Public IP Address on which to receive traffic.
  ///
  /// &gt; **Note:** This must be an Azure Public IP address ID also specified in the `public_ip_address_ids` list.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig].
  /// [port] The port on which to receive traffic.
  /// [publicIpAddressId] The ID of the Public IP Address on which to receive traffic.
  NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig(
      port: pulumi.Input.fromValue(map['port'] as int),
      publicIpAddressId: pulumi.Input.fromValue(
        map['publicIpAddressId'] as String,
      ),
    );
  }
}
