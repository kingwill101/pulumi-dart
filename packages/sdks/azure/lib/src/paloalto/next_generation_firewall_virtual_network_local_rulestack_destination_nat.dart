// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_local_rulestack_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat {
  /// A `backend_config` block as defined above.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig>? backendConfig;
  /// A `frontend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this Destination NAT.
  final pulumi.Input<String> name;
  /// The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat].
  /// [backendConfig] A `backend_config` block as defined above.
  /// [frontendConfig] A `frontend_config` block as defined below.
  /// [name] The name which should be used for this Destination NAT.
  /// [protocol] The Protocol for this Destination NAT configuration. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat(
      backendConfig: map['backendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig.fromMap((map['backendConfig'] as Map).cast<String, dynamic>())).input(),
      frontendConfig: map['frontendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatFrontendConfig.fromMap((map['frontendConfig'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

