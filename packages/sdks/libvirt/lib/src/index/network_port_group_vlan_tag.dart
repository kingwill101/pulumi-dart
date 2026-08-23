// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortGroupVlanTag {
  /// Sets the identifier for the VLAN tag within the port group.
  final pulumi.Input<double> id;
  /// Indicates whether the VLAN tag operates in native mode for the port group.
  final pulumi.Input<String>? nativeMode;

  /// Creates a new [NetworkPortGroupVlanTag].
  /// [id] Sets the identifier for the VLAN tag within the port group.
  /// [nativeMode] Indicates whether the VLAN tag operates in native mode for the port group.
  const NetworkPortGroupVlanTag({
    required this.id,
    this.nativeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nativeMode': ?nativeMode,
    };
  }

  factory NetworkPortGroupVlanTag.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVlanTag(
      id: pulumi.Input.fromValue(map['id'] as double),
      nativeMode: (() { final guardedValue = map['nativeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
