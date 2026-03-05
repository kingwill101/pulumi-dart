// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_port_group_virtual_port_params_any.dart';
import 'network_port_group_virtual_port_params_mido_net.dart';
import 'network_port_group_virtual_port_params_open_vswitch.dart';
import 'network_port_group_virtual_port_params_vepa8021qbg.dart';
import 'network_port_group_virtual_port_params_vn_tag8011qbh.dart';

class NetworkPortGroupVirtualPortParams {
  /// Specifies any parameters applicable to the virtual port configuration.
  final pulumi.Input<NetworkPortGroupVirtualPortParamsAny>? any;
  /// Configures parameters for MidoNet-related virtual ports.
  final pulumi.Input<NetworkPortGroupVirtualPortParamsMidoNet>? midoNet;
  /// Defines parameters for Open vSwitch-related virtual ports.
  final pulumi.Input<NetworkPortGroupVirtualPortParamsOpenVSwitch>? openVSwitch;
  /// Configures parameters for VEPA 802.1Qbg-related virtual ports.
  final pulumi.Input<NetworkPortGroupVirtualPortParamsVepa8021qbg>? vepa8021qbg;
  /// Configures parameters for VNTag 8011QBH-related virtual ports.
  final pulumi.Input<NetworkPortGroupVirtualPortParamsVnTag8011qbh>? vnTag8011qbh;

  /// Creates a new [NetworkPortGroupVirtualPortParams].
  /// [any] Specifies any parameters applicable to the virtual port configuration.
  /// [midoNet] Configures parameters for MidoNet-related virtual ports.
  /// [openVSwitch] Defines parameters for Open vSwitch-related virtual ports.
  /// [vepa8021qbg] Configures parameters for VEPA 802.1Qbg-related virtual ports.
  /// [vnTag8011qbh] Configures parameters for VNTag 8011QBH-related virtual ports.
  NetworkPortGroupVirtualPortParams({
    this.any,
    this.midoNet,
    this.openVSwitch,
    this.vepa8021qbg,
    this.vnTag8011qbh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'any': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParamsAny, Map<String, dynamic>>(any, (value) => value.toMap()),
      'midoNet': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParamsMidoNet, Map<String, dynamic>>(midoNet, (value) => value.toMap()),
      'openVSwitch': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParamsOpenVSwitch, Map<String, dynamic>>(openVSwitch, (value) => value.toMap()),
      'vepa8021qbg': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParamsVepa8021qbg, Map<String, dynamic>>(vepa8021qbg, (value) => value.toMap()),
      'vnTag8011qbh': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParamsVnTag8011qbh, Map<String, dynamic>>(vnTag8011qbh, (value) => value.toMap()),
    };
  }

  factory NetworkPortGroupVirtualPortParams.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParams(
      any: (() { final guardedValue = map['any']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParamsAny.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      midoNet: (() { final guardedValue = map['midoNet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParamsMidoNet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openVSwitch: (() { final guardedValue = map['openVSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParamsOpenVSwitch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vepa8021qbg: (() { final guardedValue = map['vepa8021qbg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParamsVepa8021qbg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnTag8011qbh: (() { final guardedValue = map['vnTag8011qbh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParamsVnTag8011qbh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

