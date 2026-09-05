// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat {
  /// One or more `backendConfig` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig?>? backendConfig;
  /// One or more `frontendConfig` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig?>? frontendConfig;
  /// The name which should be used for this Destination NAT rule.
  final pulumi.Input<String> name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat].
  /// [backendConfig] One or more `backendConfig` block as defined below.
  /// [frontendConfig] One or more `frontendConfig` block as defined below.
  /// [name] The name which should be used for this Destination NAT rule.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  const NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat(
      backendConfig: (() { final guardedValue = map['backendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendConfig: (() { final guardedValue = map['frontendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
