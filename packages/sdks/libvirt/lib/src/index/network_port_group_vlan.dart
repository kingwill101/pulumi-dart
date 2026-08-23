// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_port_group_vlan_tag.dart';

class NetworkPortGroupVlan {
  /// Configures a VLAN tag group for the specified network port group.
  final pulumi.Input<List<NetworkPortGroupVlanTag>>? tags;
  /// Controls whether the VLAN tag allows trunking for the network port group.
  final pulumi.Input<String>? trunk;

  /// Creates a new [NetworkPortGroupVlan].
  /// [tags] Configures a VLAN tag group for the specified network port group.
  /// [trunk] Controls whether the VLAN tag allows trunking for the network port group.
  const NetworkPortGroupVlan({
    this.tags,
    this.trunk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?pulumi.Input.mapOptionalInputValue<List<NetworkPortGroupVlanTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<NetworkPortGroupVlanTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trunk': ?trunk,
    };
  }

  factory NetworkPortGroupVlan.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVlan(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkPortGroupVlanTag>(guardedValue, (value) => NetworkPortGroupVlanTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trunk: (() { final guardedValue = map['trunk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
