// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_local_rulestack_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_local_rulestack_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubLocalRulestackDestinationNat {
  /// A `backend_config` block as defined above.
  final pulumi.Input<NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig>? backendConfig;
  /// A `frontend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this NAT.
  final pulumi.Input<String> name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNat].
  /// [backendConfig] A `backend_config` block as defined above.
  /// [frontendConfig] A `frontend_config` block as defined below.
  /// [name] The name which should be used for this NAT.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualHubLocalRulestackDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackDestinationNat(
      backendConfig: (() { final guardedValue = map['backendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendConfig: (() { final guardedValue = map['frontendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

