// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_qemu_override_device.dart';

class DomainQemuOverride {
  /// Devices provided to the guest domain
  final pulumi.Input<List<DomainQemuOverrideDevice>?>? devices;

  /// Creates a new [DomainQemuOverride].
  /// [devices] Devices provided to the guest domain
  const DomainQemuOverride({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuOverrideDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DomainQemuOverrideDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainQemuOverride.fromMap(Map<String, dynamic> map) {
    return DomainQemuOverride(
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuOverrideDevice>(guardedValue, (value) => DomainQemuOverrideDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
