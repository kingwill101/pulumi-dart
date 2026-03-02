// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat {
  /// One or more `backend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig>? backendConfig;
  /// One or more `frontend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this Destination NAT rule.
  final pulumi.Input<String> name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat].
  /// [backendConfig] One or more `backend_config` block as defined below.
  /// [frontendConfig] One or more `frontend_config` block as defined below.
  /// [name] The name which should be used for this Destination NAT rule.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat({
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
      backendConfig: map['backendConfig'] == null ? null : (NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig.fromMap((map['backendConfig'] as Map).cast<String, dynamic>())).input(),
      frontendConfig: map['frontendConfig'] == null ? null : (NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig.fromMap((map['frontendConfig'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

