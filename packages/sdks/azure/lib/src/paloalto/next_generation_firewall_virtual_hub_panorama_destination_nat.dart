// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_panorama_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_panorama_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubPanoramaDestinationNat {
  /// A `backendConfig` block as defined above.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig?>? backendConfig;
  /// A `frontendConfig` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig?>? frontendConfig;
  /// The name which should be used for this NAT.
  final pulumi.Input<String> name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaDestinationNat].
  /// [backendConfig] A `backendConfig` block as defined above.
  /// [frontendConfig] A `frontendConfig` block as defined below.
  /// [name] The name which should be used for this NAT.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  const NextGenerationFirewallVirtualHubPanoramaDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualHubPanoramaDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaDestinationNat(
      backendConfig: (() { final guardedValue = map['backendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubPanoramaDestinationNatBackendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendConfig: (() { final guardedValue = map['frontendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubPanoramaDestinationNatFrontendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
