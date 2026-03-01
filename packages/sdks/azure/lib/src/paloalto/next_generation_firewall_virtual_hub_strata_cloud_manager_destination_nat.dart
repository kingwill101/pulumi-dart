// ignore_for_file: unused_element, unnecessary_cast

import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat {
  /// One or more `backend_config` block as defined below.
  final NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig? backendConfig;
  /// One or more `frontend_config` block as defined below.
  final NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig? frontendConfig;
  /// The name which should be used for this Destination NAT rule.
  final String name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final String protocol;

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
      'backendConfig': ?backendConfig == null ? null : backendConfig!.toMap(),
      'frontendConfig': ?frontendConfig == null ? null : frontendConfig!.toMap(),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat(
      backendConfig: map['backendConfig'] == null ? null : NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatBackendConfig.fromMap((map['backendConfig'] as Map).cast<String, dynamic>()),
      frontendConfig: map['frontendConfig'] == null ? null : NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig.fromMap((map['frontendConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

