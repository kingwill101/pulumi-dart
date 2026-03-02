// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterNatSubnetwork {
  /// Self-link of the subnetwork resource that will use NAT64
  final pulumi.Input<String> name;
  /// List of the secondary ranges of the subnetwork that are allowed
  /// to use NAT. This can be populated only if
  /// `LIST_OF_SECONDARY_IP_RANGES` is one of the values in
  /// sourceIpRangesToNat
  ///
  /// <a name="nested_nat64_subnetwork"></a>The `nat64_subnetwork` block supports:
  final pulumi.Input<List<String>>? secondaryIpRangeNames;
  /// List of options for which source IPs in the subnetwork
  /// should have NAT enabled. Supported values include:
  /// `ALL_IP_RANGES`, `LIST_OF_SECONDARY_IP_RANGES`,
  /// `PRIMARY_IP_RANGE`.
  final pulumi.Input<List<String>> sourceIpRangesToNats;

  /// Creates a new [RouterNatSubnetwork].
  /// [name] Self-link of the subnetwork resource that will use NAT64
  /// [secondaryIpRangeNames] List of the secondary ranges of the subnetwork that are allowed
  /// [sourceIpRangesToNats] List of options for which source IPs in the subnetwork
  RouterNatSubnetwork({
    required this.name,
    this.secondaryIpRangeNames,
    required this.sourceIpRangesToNats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secondaryIpRangeNames': ?secondaryIpRangeNames,
      'sourceIpRangesToNats': sourceIpRangesToNats,
    };
  }

  factory RouterNatSubnetwork.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetwork(
      name: (map['name'] as String).input(),
      secondaryIpRangeNames: map['secondaryIpRangeNames'] == null ? null : ((map['secondaryIpRangeNames'] as List).cast<String>()).input(),
      sourceIpRangesToNats: ((map['sourceIpRangesToNats'] as List).cast<String>()).input(),
    );
  }
}

