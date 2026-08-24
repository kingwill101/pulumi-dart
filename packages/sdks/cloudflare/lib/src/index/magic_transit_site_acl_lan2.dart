// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteAclLan2 {
  /// The identifier for the LAN you want to create an ACL policy with.
  final pulumi.Input<String> lanId;
  /// The name of the LAN based on the provided lan_id.
  final pulumi.Input<String?>? lanName;
  /// Array of port ranges on the provided LAN that will be included in the ACL. If no ports or port rangess are provided, communication on any port on this LAN is allowed.
  final pulumi.Input<List<String>?>? portRanges;
  /// Array of ports on the provided LAN that will be included in the ACL. If no ports or port ranges are provided, communication on any port on this LAN is allowed.
  final pulumi.Input<List<int>?>? ports;
  /// Array of subnet IPs within the LAN that will be included in the ACL. If no subnets are provided, communication on any subnets on this LAN are allowed.
  final pulumi.Input<List<String>?>? subnets;

  /// Creates a new [MagicTransitSiteAclLan2].
  /// [lanId] The identifier for the LAN you want to create an ACL policy with.
  /// [lanName] The name of the LAN based on the provided lan_id.
  /// [portRanges] Array of port ranges on the provided LAN that will be included in the ACL. If no ports or port rangess are provided, communication on any port on this LAN is allowed.
  /// [ports] Array of ports on the provided LAN that will be included in the ACL. If no ports or port ranges are provided, communication on any port on this LAN is allowed.
  /// [subnets] Array of subnet IPs within the LAN that will be included in the ACL. If no subnets are provided, communication on any subnets on this LAN are allowed.
  const MagicTransitSiteAclLan2({
    required this.lanId,
    this.lanName,
    this.portRanges,
    this.ports,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lanId': lanId,
      'lanName': ?lanName,
      'portRanges': ?portRanges,
      'ports': ?ports,
      'subnets': ?subnets,
    };
  }

  factory MagicTransitSiteAclLan2.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteAclLan2(
      lanId: pulumi.Input.fromValue(map['lanId'] as String),
      lanName: (() { final guardedValue = map['lanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
