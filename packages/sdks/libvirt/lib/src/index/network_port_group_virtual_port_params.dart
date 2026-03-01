// ignore_for_file: unused_element, unnecessary_cast

import 'network_port_group_virtual_port_params_any.dart';
import 'network_port_group_virtual_port_params_mido_net.dart';
import 'network_port_group_virtual_port_params_open_vswitch.dart';
import 'network_port_group_virtual_port_params_vepa8021qbg.dart';
import 'network_port_group_virtual_port_params_vn_tag8011qbh.dart';

class NetworkPortGroupVirtualPortParams {
  /// Specifies any parameters applicable to the virtual port configuration.
  final NetworkPortGroupVirtualPortParamsAny? any;
  /// Configures parameters for MidoNet-related virtual ports.
  final NetworkPortGroupVirtualPortParamsMidoNet? midoNet;
  /// Defines parameters for Open vSwitch-related virtual ports.
  final NetworkPortGroupVirtualPortParamsOpenVSwitch? openVSwitch;
  /// Configures parameters for VEPA 802.1Qbg-related virtual ports.
  final NetworkPortGroupVirtualPortParamsVepa8021qbg? vepa8021qbg;
  /// Configures parameters for VNTag 8011QBH-related virtual ports.
  final NetworkPortGroupVirtualPortParamsVnTag8011qbh? vnTag8011qbh;

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
      'any': ?any == null ? null : any!.toMap(),
      'midoNet': ?midoNet == null ? null : midoNet!.toMap(),
      'openVSwitch': ?openVSwitch == null ? null : openVSwitch!.toMap(),
      'vepa8021qbg': ?vepa8021qbg == null ? null : vepa8021qbg!.toMap(),
      'vnTag8011qbh': ?vnTag8011qbh == null ? null : vnTag8011qbh!.toMap(),
    };
  }

  factory NetworkPortGroupVirtualPortParams.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParams(
      any: map['any'] == null ? null : NetworkPortGroupVirtualPortParamsAny.fromMap((map['any'] as Map).cast<String, dynamic>()),
      midoNet: map['midoNet'] == null ? null : NetworkPortGroupVirtualPortParamsMidoNet.fromMap((map['midoNet'] as Map).cast<String, dynamic>()),
      openVSwitch: map['openVSwitch'] == null ? null : NetworkPortGroupVirtualPortParamsOpenVSwitch.fromMap((map['openVSwitch'] as Map).cast<String, dynamic>()),
      vepa8021qbg: map['vepa8021qbg'] == null ? null : NetworkPortGroupVirtualPortParamsVepa8021qbg.fromMap((map['vepa8021qbg'] as Map).cast<String, dynamic>()),
      vnTag8011qbh: map['vnTag8011qbh'] == null ? null : NetworkPortGroupVirtualPortParamsVnTag8011qbh.fromMap((map['vnTag8011qbh'] as Map).cast<String, dynamic>()),
    );
  }
}

