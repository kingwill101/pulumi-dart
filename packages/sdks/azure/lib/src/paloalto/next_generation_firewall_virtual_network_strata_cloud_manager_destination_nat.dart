// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat {
  /// One or more `backend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig>? backendConfig;
  /// One or more `frontend_config` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig>? frontendConfig;
  /// The name which should be used for this NAT.
  final pulumi.Input<String> name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

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
      'backendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig, Map<String, dynamic>>(backendConfig, (value) => value.toMap()),
      'frontendConfig': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig, Map<String, dynamic>>(frontendConfig, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat(
      backendConfig: map['backendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatBackendConfig.fromMap((map['backendConfig']! as Map).cast<String, dynamic>())).input(),
      frontendConfig: map['frontendConfig'] == null ? null : (NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig.fromMap((map['frontendConfig']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

