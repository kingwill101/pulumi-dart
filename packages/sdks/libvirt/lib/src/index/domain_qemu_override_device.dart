// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_qemu_override_device_frontend.dart';

class DomainQemuOverrideDevice {
  /// Sets the libvirt device alias identifying which frontend device the override applies to.
  final pulumi.Input<String> alias;
  /// Configures frontend property overrides for the selected QEMU device.
  final pulumi.Input<DomainQemuOverrideDeviceFrontend>? frontend;

  /// Creates a new [DomainQemuOverrideDevice].
  /// [alias] Sets the libvirt device alias identifying which frontend device the override applies to.
  /// [frontend] Configures frontend property overrides for the selected QEMU device.
  const DomainQemuOverrideDevice({
    required this.alias,
    this.frontend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'frontend': ?pulumi.Input.mapOptionalInputValue<DomainQemuOverrideDeviceFrontend, Map<String, dynamic>>(frontend, (value) => value.toMap()),
    };
  }

  factory DomainQemuOverrideDevice.fromMap(Map<String, dynamic> map) {
    return DomainQemuOverrideDevice(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      frontend: (() { final guardedValue = map['frontend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainQemuOverrideDeviceFrontend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
