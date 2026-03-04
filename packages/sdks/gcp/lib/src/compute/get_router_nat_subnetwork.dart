// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterNatSubnetwork {
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String> name;

  /// List of the secondary ranges of the subnetwork that are allowed
  /// to use NAT. This can be populated only if
  /// 'LIST_OF_SECONDARY_IP_RANGES' is one of the values in
  /// sourceIpRangesToNat
  final pulumi.Input<List<String>> secondaryIpRangeNames;

  /// List of options for which source IPs in the subnetwork
  /// should have NAT enabled. Supported values include:
  /// 'ALL_IP_RANGES', 'LIST_OF_SECONDARY_IP_RANGES',
  /// 'PRIMARY_IP_RANGE'.
  final pulumi.Input<List<String>> sourceIpRangesToNats;

  /// Creates a new [GetRouterNatSubnetwork].
  /// [name] Name of the NAT service. The name must be 1-63 characters long and
  /// [secondaryIpRangeNames] List of the secondary ranges of the subnetwork that are allowed
  /// [sourceIpRangesToNats] List of options for which source IPs in the subnetwork
  GetRouterNatSubnetwork({
    required this.name,
    required this.secondaryIpRangeNames,
    required this.sourceIpRangesToNats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secondaryIpRangeNames': secondaryIpRangeNames,
      'sourceIpRangesToNats': sourceIpRangesToNats,
    };
  }

  factory GetRouterNatSubnetwork.fromMap(Map<String, dynamic> map) {
    return GetRouterNatSubnetwork(
      name: pulumi.Input.fromValue(map['name'] as String),
      secondaryIpRangeNames: pulumi.Input.fromValue(
        (map['secondaryIpRangeNames'] as List).cast<String>(),
      ),
      sourceIpRangesToNats: pulumi.Input.fromValue(
        (map['sourceIpRangesToNats'] as List).cast<String>(),
      ),
    );
  }
}
