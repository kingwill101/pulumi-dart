// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_subnetwork_to_nat_source_ip_ranges_to_nat_item_compute_beta.dart';

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNatComputeBeta {
  /// URL for the subnetwork resource that will use NAT.
  final String? name;
  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final List<String>? secondaryIpRangeNames;
  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final List<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta>? sourceIpRangesToNat;

  /// Creates a new [RouterNatSubnetworkToNatComputeBeta].
  /// [name] URL for the subnetwork resource that will use NAT.
  /// [secondaryIpRangeNames] A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  /// [sourceIpRangesToNat] Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  RouterNatSubnetworkToNatComputeBeta({
    this.name,
    this.secondaryIpRangeNames,
    this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secondaryIpRangeNames': ?secondaryIpRangeNames,
      'sourceIpRangesToNat': ?sourceIpRangesToNat == null ? null : pulumi.Input.encodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta, String>(sourceIpRangesToNat!, (value) => value.value),
    };
  }

  factory RouterNatSubnetworkToNatComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetworkToNatComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      secondaryIpRangeNames: map['secondaryIpRangeNames'] == null ? null : (map['secondaryIpRangeNames'] as List).cast<String>(),
      sourceIpRangesToNat: map['sourceIpRangesToNat'] == null ? null : pulumi.Input.decodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta>(map['sourceIpRangesToNat'], (value) => RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta.fromValue(value as String)),
    );
  }
}

