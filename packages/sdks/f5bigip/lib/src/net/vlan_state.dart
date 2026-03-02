// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vlan_interface.dart';

/// Input properties used for looking up and filtering Vlan resources.
class VlanState {
  /// Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. possible options: [`default`, `src-ip`, `dst-ip`]
  final pulumi.Input<String>? cmpHash;
  /// Specifies which interfaces you want this VLAN to use for traffic management.
  final pulumi.Input<List<VlanInterface>>? interfaces;
  /// Specifies the maximum transmission unit (MTU) for traffic on this VLAN. The default value is `1500`.
  final pulumi.Input<int>? mtu;
  /// Name of the vlan
  final pulumi.Input<String>? name;
  /// Specifies a number that the system adds into the header of any frame passing through the VLAN.
  final pulumi.Input<int>? tag;

  /// Creates a new [VlanState].
  /// [cmpHash] Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. possible options: [`default`, `src-ip`, `dst-ip`]
  /// [interfaces] Specifies which interfaces you want this VLAN to use for traffic management.
  /// [mtu] Specifies the maximum transmission unit (MTU) for traffic on this VLAN. The default value is `1500`.
  /// [name] Name of the vlan
  /// [tag] Specifies a number that the system adds into the header of any frame passing through the VLAN.
  VlanState({
    this.cmpHash,
    this.interfaces,
    this.mtu,
    this.name,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmpHash': ?cmpHash,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<VlanInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<VlanInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mtu': ?mtu,
      'name': ?name,
      'tag': ?tag,
    };
  }

  factory VlanState.fromMap(Map<String, dynamic> map) {
    return VlanState(
      cmpHash: map['cmpHash'] == null ? null : (map['cmpHash'] as String).input(),
      interfaces: map['interfaces'] == null ? null : (pulumi.Input.decodeList<VlanInterface>(map['interfaces'], (value) => VlanInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag'] as int).input(),
    );
  }
}

