// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_memorydev_target_address.dart';
import 'domain_devices_memorydev_target_label.dart';

class DomainDevicesMemorydevTarget {
  /// Sets the address attribute for the target of the memory device.
  final DomainDevicesMemorydevTargetAddress? address;
  /// Defines the block attribute for the target of the memory device, related to its configuration.
  final double? block;
  /// Sets the unit for target.block (for example, "MiB" or "GiB"), encoded via the block attribute; the value is user‑provided but must be a valid libvirt size unit.
  ///
  /// See: <https://libvirt.org/formatdomain.html#memory-devices>
  final String? blockUnit;
  /// Configures whether dynamic memory slots are enabled for the memory device.
  final String? dynamicMemslots;
  /// Sets the label for the memory device, which may be a human-readable identifier.
  final DomainDevicesMemorydevTargetLabel? label;
  /// Indicates the node on which the memory device is allocated.
  final double? node;
  /// Controls whether the memory device is configured as read-only.
  final bool? readOnly;
  /// Sets the amount of memory requested for the device during allocation.
  final double? requested;
  /// Specifies the unit of measurement for the requested memory amount.
  final String? requestedUnit;
  /// Configures the size of the memory device to be allocated at boot time.
  final double? size;
  /// Indicates the unit of measurement for the size of the memory device.
  final String? sizeUnit;

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
  DomainDevicesMemorydevTarget({
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
      'address': ?address == null ? null : address!.toMap(),
      'block': ?block,
      'blockUnit': ?blockUnit,
      'dynamicMemslots': ?dynamicMemslots,
      'label': ?label == null ? null : label!.toMap(),
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
      address: map['address'] == null ? null : DomainDevicesMemorydevTargetAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      block: map['block'] == null ? null : map['block'] as double,
      blockUnit: map['blockUnit'] == null ? null : map['blockUnit'] as String,
      dynamicMemslots: map['dynamicMemslots'] == null ? null : map['dynamicMemslots'] as String,
      label: map['label'] == null ? null : DomainDevicesMemorydevTargetLabel.fromMap((map['label'] as Map).cast<String, dynamic>()),
      node: map['node'] == null ? null : map['node'] as double,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      requested: map['requested'] == null ? null : map['requested'] as double,
      requestedUnit: map['requestedUnit'] == null ? null : map['requestedUnit'] as String,
      size: map['size'] == null ? null : map['size'] as double,
      sizeUnit: map['sizeUnit'] == null ? null : map['sizeUnit'] as String,
    );
  }
}

