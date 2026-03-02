// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_subnetwork_to_nat_source_ip_ranges_to_nat_item_compute_v1.dart';

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNatComputeV1 {
  /// URL for the subnetwork resource that will use NAT.
  final pulumi.Input<String>? name;
  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final pulumi.Input<List<String>>? secondaryIpRangeNames;
  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final pulumi.Input<List<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1>>? sourceIpRangesToNat;

  /// Creates a new [RouterNatSubnetworkToNatComputeV1].
  /// [name] URL for the subnetwork resource that will use NAT.
  /// [secondaryIpRangeNames] A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  /// [sourceIpRangesToNat] Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  RouterNatSubnetworkToNatComputeV1({
    this.name,
    this.secondaryIpRangeNames,
    this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secondaryIpRangeNames': ?secondaryIpRangeNames,
      'sourceIpRangesToNat': ?pulumi.Input.mapOptionalInputValue<List<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1>, List<String>>(sourceIpRangesToNat, (value) => pulumi.Input.encodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1, String>(value, (value) => value.value)),
    };
  }

  factory RouterNatSubnetworkToNatComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetworkToNatComputeV1(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secondaryIpRangeNames: map['secondaryIpRangeNames'] == null ? null : ((map['secondaryIpRangeNames'] as List).cast<String>()).input(),
      sourceIpRangesToNat: map['sourceIpRangesToNat'] == null ? null : (pulumi.Input.decodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1>(map['sourceIpRangesToNat'], (value) => RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1.fromValue(value as String))).input(),
    );
  }
}

