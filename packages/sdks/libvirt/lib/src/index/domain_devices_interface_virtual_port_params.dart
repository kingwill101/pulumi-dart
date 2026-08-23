// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_virtual_port_params_any.dart';
import 'domain_devices_interface_virtual_port_params_mido_net.dart';
import 'domain_devices_interface_virtual_port_params_open_vswitch.dart';
import 'domain_devices_interface_virtual_port_params_vepa8021qbg.dart';
import 'domain_devices_interface_virtual_port_params_vn_tag8011qbh.dart';

class DomainDevicesInterfaceVirtualPortParams {
  /// Defines any additional parameters for the virtual port configuration.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParamsAny>? any;
  /// Configures parameters specific to the MidoNet virtual port configuration.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParamsMidoNet>? midoNet;
  /// Defines parameters specific to the Open vSwitch configuration for the virtual port.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParamsOpenVSwitch>? openVSwitch;
  /// Configures parameters for the VEPA8021QBG virtual port.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParamsVepa8021qbg>? vepa8021qbg;
  /// Configures parameters for the VNTag8011QBH virtual port.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh>? vnTag8011qbh;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParams].
  /// [any] Defines any additional parameters for the virtual port configuration.
  /// [midoNet] Configures parameters specific to the MidoNet virtual port configuration.
  /// [openVSwitch] Defines parameters specific to the Open vSwitch configuration for the virtual port.
  /// [vepa8021qbg] Configures parameters for the VEPA8021QBG virtual port.
  /// [vnTag8011qbh] Configures parameters for the VNTag8011QBH virtual port.
  const DomainDevicesInterfaceVirtualPortParams({
    this.any,
    this.midoNet,
    this.openVSwitch,
    this.vepa8021qbg,
    this.vnTag8011qbh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'any': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParamsAny, Map<String, dynamic>>(any, (value) => value.toMap()),
      'midoNet': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParamsMidoNet, Map<String, dynamic>>(midoNet, (value) => value.toMap()),
      'openVSwitch': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParamsOpenVSwitch, Map<String, dynamic>>(openVSwitch, (value) => value.toMap()),
      'vepa8021qbg': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParamsVepa8021qbg, Map<String, dynamic>>(vepa8021qbg, (value) => value.toMap()),
      'vnTag8011qbh': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh, Map<String, dynamic>>(vnTag8011qbh, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceVirtualPortParams.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParams(
      any: (() { final guardedValue = map['any']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParamsAny.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      midoNet: (() { final guardedValue = map['midoNet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParamsMidoNet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openVSwitch: (() { final guardedValue = map['openVSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParamsOpenVSwitch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vepa8021qbg: (() { final guardedValue = map['vepa8021qbg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParamsVepa8021qbg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnTag8011qbh: (() { final guardedValue = map['vnTag8011qbh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
