// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_memorydev_target_address.dart';
import 'domain_devices_memorydev_target_label.dart';

class DomainDevicesMemorydevTarget {
  /// Sets the address attribute for the target of the memory device.
  final pulumi.Input<DomainDevicesMemorydevTargetAddress>? address;
  /// Defines the block attribute for the target of the memory device, related to its configuration.
  final pulumi.Input<double>? block;
  /// Sets the unit for target.block (for example, "MiB" or "GiB"), encoded via the block attribute; the value is user‑provided but must be a valid libvirt size unit.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-devices&gt;
  final pulumi.Input<String>? blockUnit;
  /// Configures whether dynamic memory slots are enabled for the memory device.
  final pulumi.Input<String>? dynamicMemslots;
  /// Sets the label for the memory device, which may be a human-readable identifier.
  final pulumi.Input<DomainDevicesMemorydevTargetLabel>? label;
  /// Indicates the node on which the memory device is allocated.
  final pulumi.Input<double>? node;
  /// Controls whether the memory device is configured as read-only.
  final pulumi.Input<bool>? readOnly;
  /// Sets the amount of memory requested for the device during allocation.
  final pulumi.Input<double>? requested;
  /// Specifies the unit of measurement for the requested memory amount.
  final pulumi.Input<String>? requestedUnit;
  /// Configures the size of the memory device to be allocated at boot time.
  final pulumi.Input<double>? size;
  /// Indicates the unit of measurement for the size of the memory device.
  final pulumi.Input<String>? sizeUnit;

  /// Creates a new [DomainDevicesMemorydevTarget].
  /// [address] Sets the address attribute for the target of the memory device.
  /// [block] Defines the block attribute for the target of the memory device, related to its configuration.
  /// [blockUnit] Sets the unit for target.block (for example, "MiB" or "GiB"), encoded via the block attribute; the value is user‑provided but must be a valid libvirt size unit.
  /// [dynamicMemslots] Configures whether dynamic memory slots are enabled for the memory device.
  /// [label] Sets the label for the memory device, which may be a human-readable identifier.
  /// [node] Indicates the node on which the memory device is allocated.
  /// [readOnly] Controls whether the memory device is configured as read-only.
  /// [requested] Sets the amount of memory requested for the device during allocation.
  /// [requestedUnit] Specifies the unit of measurement for the requested memory amount.
  /// [size] Configures the size of the memory device to be allocated at boot time.
  /// [sizeUnit] Indicates the unit of measurement for the size of the memory device.
  const DomainDevicesMemorydevTarget({
    this.address,
    this.block,
    this.blockUnit,
    this.dynamicMemslots,
    this.label,
    this.node,
    this.readOnly,
    this.requested,
    this.requestedUnit,
    this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemorydevTargetAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'block': ?block,
      'blockUnit': ?blockUnit,
      'dynamicMemslots': ?dynamicMemslots,
      'label': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemorydevTargetLabel, Map<String, dynamic>>(label, (value) => value.toMap()),
      'node': ?node,
      'readOnly': ?readOnly,
      'requested': ?requested,
      'requestedUnit': ?requestedUnit,
      'size': ?size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesMemorydevTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevTarget(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesMemorydevTargetAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      blockUnit: (() { final guardedValue = map['blockUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicMemslots: (() { final guardedValue = map['dynamicMemslots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesMemorydevTargetLabel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      node: (() { final guardedValue = map['node']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requested: (() { final guardedValue = map['requested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      requestedUnit: (() { final guardedValue = map['requestedUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
