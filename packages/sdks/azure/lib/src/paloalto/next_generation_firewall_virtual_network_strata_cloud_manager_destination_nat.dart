// ignore_for_file: unused_element, unnecessary_cast

import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat {
  /// One or more `backend_config` block as defined below.
  final NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig? backendConfig;
  /// One or more `frontend_config` block as defined below.
  final NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig? frontendConfig;
  /// The name which should be used for this NAT.
  final String name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final String protocol;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat].
  /// [backendConfig] One or more `backend_config` block as defined below.
  /// [frontendConfig] One or more `frontend_config` block as defined below.
  /// [name] The name which should be used for this NAT.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat({
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

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat(
      backendConfig: map['backendConfig'] == null ? null : NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig.fromMap((map['backendConfig'] as Map).cast<String, dynamic>()),
      frontendConfig: map['frontendConfig'] == null ? null : NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig.fromMap((map['frontendConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

