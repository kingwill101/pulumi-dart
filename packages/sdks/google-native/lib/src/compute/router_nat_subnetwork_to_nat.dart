// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_subnetwork_to_nat_source_ip_ranges_to_nat_item.dart';

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNat {
  /// URL for the subnetwork resource that will use NAT.
  final pulumi.Input<String>? name;
  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final pulumi.Input<List<String>>? secondaryIpRangeNames;
  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final pulumi.Input<List<RouterNatSubnetworkToNatSourceIpRangesToNatItem>>? sourceIpRangesToNat;

  /// Creates a new [RouterNatSubnetworkToNat].
  /// [name] URL for the subnetwork resource that will use NAT.
  /// [secondaryIpRangeNames] A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  /// [sourceIpRangesToNat] Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  const RouterNatSubnetworkToNat({
    this.name,
    this.secondaryIpRangeNames,
    this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secondaryIpRangeNames': ?secondaryIpRangeNames,
      'sourceIpRangesToNat': ?pulumi.Input.mapOptionalInputValue<List<RouterNatSubnetworkToNatSourceIpRangesToNatItem>, List<String>>(sourceIpRangesToNat, (value) => pulumi.Input.encodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory RouterNatSubnetworkToNat.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetworkToNat(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpRangeNames: (() { final guardedValue = map['secondaryIpRangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpRangesToNat: (() { final guardedValue = map['sourceIpRangesToNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItem>(guardedValue, (value) => RouterNatSubnetworkToNatSourceIpRangesToNatItem.fromValue(value as String))); })(),
    );
  }
}
