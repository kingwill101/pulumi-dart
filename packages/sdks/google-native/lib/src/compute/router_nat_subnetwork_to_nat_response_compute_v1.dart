// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNatResponseComputeV1 {
  /// URL for the subnetwork resource that will use NAT.
  final pulumi.Input<String> name;
  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final pulumi.Input<List<String>> secondaryIpRangeNames;
  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final pulumi.Input<List<String>> sourceIpRangesToNat;

  /// Creates a new [RouterNatSubnetworkToNatResponseComputeV1].
  /// [name] URL for the subnetwork resource that will use NAT.
  /// [secondaryIpRangeNames] A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  /// [sourceIpRangesToNat] Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  RouterNatSubnetworkToNatResponseComputeV1({
    required this.name,
    required this.secondaryIpRangeNames,
    required this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secondaryIpRangeNames': secondaryIpRangeNames,
      'sourceIpRangesToNat': sourceIpRangesToNat,
    };
  }

  factory RouterNatSubnetworkToNatResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetworkToNatResponseComputeV1(
      name: pulumi.Input.fromValue(map['name'] as String),
      secondaryIpRangeNames: pulumi.Input.fromValue((map['secondaryIpRangeNames'] as List).cast<String>()),
      sourceIpRangesToNat: pulumi.Input.fromValue((map['sourceIpRangesToNat'] as List).cast<String>()),
    );
  }
}

