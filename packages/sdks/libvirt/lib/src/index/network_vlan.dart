// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_vlan_tag.dart';

class NetworkVlan {
  /// Configures a VLAN tag group for the specified network port group.
  final pulumi.Input<List<NetworkVlanTag>>? tags;
  /// Controls whether the VLAN tag allows trunking for the network port group.
  final pulumi.Input<String>? trunk;

  /// Creates a new [NetworkVlan].
  /// [tags] Configures a VLAN tag group for the specified network port group.
  /// [trunk] Controls whether the VLAN tag allows trunking for the network port group.
  const NetworkVlan({
    this.tags,
    this.trunk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?pulumi.Input.mapOptionalInputValue<List<NetworkVlanTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<NetworkVlanTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trunk': ?trunk,
    };
  }

  factory NetworkVlan.fromMap(Map<String, dynamic> map) {
    return NetworkVlan(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkVlanTag>(guardedValue, (value) => NetworkVlanTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trunk: (() { final guardedValue = map['trunk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
