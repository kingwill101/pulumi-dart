// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_virtual_port_params.dart';

class DomainDevicesInterfaceVirtualPort {
  /// Contains parameters settings for the virtual port.
  final pulumi.Input<DomainDevicesInterfaceVirtualPortParams?>? params;

  /// Creates a new [DomainDevicesInterfaceVirtualPort].
  /// [params] Contains parameters settings for the virtual port.
  const DomainDevicesInterfaceVirtualPort({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPortParams, Map<String, dynamic>>(params, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceVirtualPort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPort(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPortParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
