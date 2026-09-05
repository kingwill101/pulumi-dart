// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesIommuDriverGranule {
  final pulumi.Input<String?>? mode;
  final pulumi.Input<double?>? size;
  final pulumi.Input<String?>? unit;

  /// Creates a new [DomainDevicesIommuDriverGranule].
  /// [mode] Optional.
  /// [size] Optional.
  /// [unit] Optional.
  const DomainDevicesIommuDriverGranule({
    this.mode,
    this.size,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'size': ?size,
      'unit': ?unit,
    };
  }

  factory DomainDevicesIommuDriverGranule.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommuDriverGranule(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
