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
  NetworkVlan({
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
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<NetworkVlanTag>(map['tags']!, (value) => NetworkVlanTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trunk: map['trunk'] == null ? null : (map['trunk']! as String).input(),
    );
  }
}

