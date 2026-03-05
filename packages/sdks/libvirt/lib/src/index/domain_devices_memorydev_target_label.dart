// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemorydevTargetLabel {
  /// Defines the size of the memory device label.
  final pulumi.Input<double>? size;
  /// Specifies the unit of measurement for the size of the memory device label.
  final pulumi.Input<String>? sizeUnit;

  /// Creates a new [DomainDevicesMemorydevTargetLabel].
  /// [size] Defines the size of the memory device label.
  /// [sizeUnit] Specifies the unit of measurement for the size of the memory device label.
  DomainDevicesMemorydevTargetLabel({
    this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesMemorydevTargetLabel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevTargetLabel(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

