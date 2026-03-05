// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// Description of VirtualNetworkRules - NetworkRules resource.
class NWRuleSetVirtualNetworkRulesResponse {
  /// Value that indicates whether to ignore missing VNet Service Endpoint
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final pulumi.Input<SubnetResponse>? subnet;

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
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NWRuleSetVirtualNetworkRulesResponse.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRulesResponse(
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

