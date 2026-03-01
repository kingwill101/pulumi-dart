// ignore_for_file: unused_element, unnecessary_cast

import 'subnet.dart';

/// Description of VirtualNetworkRules - NetworkRules resource.
class NWRuleSetVirtualNetworkRules {
  /// Value that indicates whether to ignore missing VNet Service Endpoint
  final bool? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final Subnet? subnet;

  /// Creates a new [NWRuleSetVirtualNetworkRules].
  /// [ignoreMissingVnetServiceEndpoint] Value that indicates whether to ignore missing VNet Service Endpoint
  /// [subnet] Subnet properties
  NWRuleSetVirtualNetworkRules({
    this.ignoreMissingVnetServiceEndpoint,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NWRuleSetVirtualNetworkRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRules(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

