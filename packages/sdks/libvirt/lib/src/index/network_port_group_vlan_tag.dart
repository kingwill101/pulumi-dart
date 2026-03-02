// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortGroupVlanTag {
  /// Sets the identifier for the VLAN tag within the port group.
  final pulumi.Input<double>? id;
  /// Indicates whether the VLAN tag operates in native mode for the port group.
  final pulumi.Input<String>? nativeMode;

  /// Creates a new [NetworkPortGroupVlanTag].
  /// [id] Sets the identifier for the VLAN tag within the port group.
  /// [nativeMode] Indicates whether the VLAN tag operates in native mode for the port group.
  NetworkPortGroupVlanTag({
    this.id,
    this.nativeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'nativeMode': ?nativeMode,
    };
  }

  factory NetworkPortGroupVlanTag.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVlanTag(
      id: map['id'] == null ? null : (map['id'] as double).input(),
      nativeMode: map['nativeMode'] == null ? null : (map['nativeMode'] as String).input(),
    );
  }
}

