// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// Description of VirtualNetworkRules - NetworkRules resource.
class NWRuleSetVirtualNetworkRules {
  /// Value that indicates whether to ignore missing VNet Service Endpoint
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// Subnet properties
  final pulumi.Input<Subnet>? subnet;

  /// Creates a new [NWRuleSetVirtualNetworkRules].
  /// [ignoreMissingVnetServiceEndpoint] Value that indicates whether to ignore missing VNet Service Endpoint
  /// [subnet] Subnet properties
  const NWRuleSetVirtualNetworkRules({
    this.ignoreMissingVnetServiceEndpoint,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NWRuleSetVirtualNetworkRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetVirtualNetworkRules(
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

