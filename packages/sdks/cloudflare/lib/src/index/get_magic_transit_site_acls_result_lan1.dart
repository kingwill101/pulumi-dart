// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteAclsResultLan1 {
  /// The identifier for the LAN you want to create an ACL policy with.
  final pulumi.Input<String> lanId;
  /// The name of the LAN based on the provided lan_id.
  final pulumi.Input<String> lanName;
  /// Array of port ranges on the provided LAN that will be included in the ACL. If no ports or port rangess are provided, communication on any port on this LAN is allowed.
  final pulumi.Input<List<String>> portRanges;
  /// Array of ports on the provided LAN that will be included in the ACL. If no ports or port ranges are provided, communication on any port on this LAN is allowed.
  final pulumi.Input<List<int>> ports;
  /// Array of subnet IPs within the LAN that will be included in the ACL. If no subnets are provided, communication on any subnets on this LAN are allowed.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [GetMagicTransitSiteAclsResultLan1].
  /// [lanId] The identifier for the LAN you want to create an ACL policy with.
  /// [lanName] The name of the LAN based on the provided lan_id.
  /// [portRanges] Array of port ranges on the provided LAN that will be included in the ACL. If no ports or port rangess are provided, communication on any port on this LAN is allowed.
  /// [ports] Array of ports on the provided LAN that will be included in the ACL. If no ports or port ranges are provided, communication on any port on this LAN is allowed.
  /// [subnets] Array of subnet IPs within the LAN that will be included in the ACL. If no subnets are provided, communication on any subnets on this LAN are allowed.
  const GetMagicTransitSiteAclsResultLan1({
    required this.lanId,
    required this.lanName,
    required this.portRanges,
    required this.ports,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lanId': lanId,
      'lanName': lanName,
      'portRanges': portRanges,
      'ports': ports,
      'subnets': subnets,
    };
  }

  factory GetMagicTransitSiteAclsResultLan1.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclsResultLan1(
      lanId: pulumi.Input.fromValue(map['lanId'] as String),
      lanName: pulumi.Input.fromValue(map['lanName'] as String),
      portRanges: pulumi.Input.fromValue((map['portRanges'] as List).cast<String>()),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
