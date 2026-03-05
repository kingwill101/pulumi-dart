// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVlanTag {
  /// Sets the identifier for the VLAN tag within the port group.
  final pulumi.Input<double>? id;
  /// Indicates whether the VLAN tag operates in native mode for the port group.
  final pulumi.Input<String>? nativeMode;

  /// Creates a new [NetworkVlanTag].
  /// [id] Sets the identifier for the VLAN tag within the port group.
  /// [nativeMode] Indicates whether the VLAN tag operates in native mode for the port group.
  NetworkVlanTag({
    this.id,
    this.nativeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'nativeMode': ?nativeMode,
    };
  }

  factory NetworkVlanTag.fromMap(Map<String, dynamic> map) {
    return NetworkVlanTag(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      nativeMode: (() { final guardedValue = map['nativeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

