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
  /// &lt;a name="nestedNat64Subnetwork"&gt;&lt;/a&gt;The `nat64Subnetwork` block supports:
  final pulumi.Input<List<String>?>? secondaryIpRangeNames;
  /// List of options for which source IPs in the subnetwork
  /// should have NAT enabled. Supported values include:
  /// `ALL_IP_RANGES`, `LIST_OF_SECONDARY_IP_RANGES`,
  /// `PRIMARY_IP_RANGE`.
  final pulumi.Input<List<String>> sourceIpRangesToNats;

  /// Creates a new [RouterNatSubnetwork].
  /// [name] Self-link of the subnetwork resource that will use NAT64
  /// [secondaryIpRangeNames] List of the secondary ranges of the subnetwork that are allowed
  /// [sourceIpRangesToNats] List of options for which source IPs in the subnetwork
  const RouterNatSubnetwork({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      secondaryIpRangeNames: (() { final guardedValue = map['secondaryIpRangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpRangesToNats: pulumi.Input.fromValue((map['sourceIpRangesToNats'] as List).cast<String>()),
    );
  }
}
