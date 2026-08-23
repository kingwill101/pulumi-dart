// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_network_panorama_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualNetworkPanoramaDestinationNat {
  /// A `backendConfig` block as defined above.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig>? backendConfig;
  /// A `frontendConfig` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this Destination NAT.
  final pulumi.Input<String> name;
  /// The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDestinationNat].
  /// [backendConfig] A `backendConfig` block as defined above.
  /// [frontendConfig] A `frontendConfig` block as defined below.
  /// [name] The name which should be used for this Destination NAT.
  /// [protocol] The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  const NextGenerationFirewallVirtualNetworkPanoramaDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaDestinationNat(
      backendConfig: (() { final guardedValue = map['backendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendConfig: (() { final guardedValue = map['frontendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
