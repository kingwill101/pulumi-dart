// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_network_panorama_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualNetworkPanoramaDestinationNat {
  /// A `backend_config` block as defined above.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig>? backendConfig;
  /// A `frontend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this Destination NAT.
  final pulumi.Input<String> name;
  /// The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDestinationNat].
  /// [backendConfig] A `backend_config` block as defined above.
  /// [frontendConfig] A `frontend_config` block as defined below.
  /// [name] The name which should be used for this Destination NAT.
  /// [protocol] The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualNetworkPanoramaDestinationNat({
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
      backendConfig: map['backendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig.fromMap((map['backendConfig']! as Map).cast<String, dynamic>())).input(),
      frontendConfig: map['frontendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkPanoramaDestinationNatFrontendConfig.fromMap((map['frontendConfig']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

