// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vlan_interface.dart';

/// {@template pulumi_net_vlan_vlan_args_doc}
/// The set of arguments for Vlan.
/// {@endtemplate}
/// {@macro pulumi_net_vlan_vlan_args_doc}
class VlanArgs {
  /// Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. possible options: [`default`, `src-ip`, `dst-ip`]
  final pulumi.Input<String>? cmpHash;
  /// Specifies which interfaces you want this VLAN to use for traffic management.
  final pulumi.Input<List<VlanInterface>>? interfaces;
  /// Specifies the maximum transmission unit (MTU) for traffic on this VLAN. The default value is `1500`.
  final pulumi.Input<int>? mtu;
  /// Name of the vlan
  final pulumi.Input<String> name;
  /// Specifies a number that the system adds into the header of any frame passing through the VLAN.
  final pulumi.Input<int>? tag;

  /// Creates a new [VlanArgs].
  /// [cmpHash] Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. possible options: [`default`, `src-ip`, `dst-ip`]
  /// [interfaces] Specifies which interfaces you want this VLAN to use for traffic management.
  /// [mtu] Specifies the maximum transmission unit (MTU) for traffic on this VLAN. The default value is `1500`.
  /// [name] Name of the vlan
  /// [tag] Specifies a number that the system adds into the header of any frame passing through the VLAN.
  const VlanArgs({
    this.cmpHash,
    this.interfaces,
    this.mtu,
    required this.name,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmpHash': ?cmpHash,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<VlanInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<VlanInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mtu': ?mtu,
      'name': name,
      'tag': ?tag,
    };
  }

  factory VlanArgs.fromMap(Map<String, dynamic> map) {
    return VlanArgs(
      cmpHash: (() { final guardedValue = map['cmpHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VlanInterface>(guardedValue, (value) => VlanInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

