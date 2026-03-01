// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// Description of VirtualNetworkRules - NetworkRules resource.
class NWRuleSetVirtualNetworkRulesResponse {
  /// Value that indicates whether to ignore missing VNet Service Endpoint
  final bool? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final SubnetResponse? subnet;

  /// Creates a new [NWRuleSetVirtualNetworkRulesResponse].
  /// [ignoreMissingVnetServiceEndpoint] Value that indicates whether to ignore missing VNet Service Endpoint
  /// [subnet] Subnet properties
  NWRuleSetVirtualNetworkRulesResponse({
    this.ignoreMissingVnetServiceEndpoint,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NWRuleSetVirtualNetworkRulesResponse.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRulesResponse(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

