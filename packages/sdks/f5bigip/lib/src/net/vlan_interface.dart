// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VlanInterface {
  /// Specifies a list of tagged interfaces or trunks associated with this VLAN. Note that you can associate tagged interfaces or trunks with any number of VLANs.
  final pulumi.Input<bool>? tagged;

  /// Physical or virtual port used for traffic
  final pulumi.Input<String>? vlanport;

  /// Creates a new [VlanInterface].
  /// [tagged] Specifies a list of tagged interfaces or trunks associated with this VLAN. Note that you can associate tagged interfaces or trunks with any number of VLANs.
  /// [vlanport] Physical or virtual port used for traffic
  VlanInterface({this.tagged, this.vlanport});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tagged': ?tagged, 'vlanport': ?vlanport};
  }

  factory VlanInterface.fromMap(Map<String, dynamic> map) {
    return VlanInterface(
      tagged: (() {
        final guardedValue = map['tagged'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vlanport: (() {
        final guardedValue = map['vlanport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
