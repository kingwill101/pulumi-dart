// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVlanTag {
  /// Sets the identifier for the VLAN tag.
  final pulumi.Input<double> id;
  /// Configures whether the VLAN tag operates in native mode.
  final pulumi.Input<String>? nativeMode;

  /// Creates a new [DomainDevicesInterfaceVlanTag].
  /// [id] Sets the identifier for the VLAN tag.
  /// [nativeMode] Configures whether the VLAN tag operates in native mode.
  const DomainDevicesInterfaceVlanTag({
    required this.id,
    this.nativeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nativeMode': ?nativeMode,
    };
  }

  factory DomainDevicesInterfaceVlanTag.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVlanTag(
      id: pulumi.Input.fromValue(map['id'] as double),
      nativeMode: (() { final guardedValue = map['nativeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
