// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_qemu_override_device_frontend_property.dart';

class DomainQemuOverrideDeviceFrontend {
  /// Lists individual QEMU frontend properties to override on the selected device.
  final pulumi.Input<List<DomainQemuOverrideDeviceFrontendProperty>?>? properties;

  /// Creates a new [DomainQemuOverrideDeviceFrontend].
  /// [properties] Lists individual QEMU frontend properties to override on the selected device.
  const DomainQemuOverrideDeviceFrontend({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuOverrideDeviceFrontendProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<DomainQemuOverrideDeviceFrontendProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainQemuOverrideDeviceFrontend.fromMap(Map<String, dynamic> map) {
    return DomainQemuOverrideDeviceFrontend(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuOverrideDeviceFrontendProperty>(guardedValue, (value) => DomainQemuOverrideDeviceFrontendProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
