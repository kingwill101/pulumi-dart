// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysPciDriver {
  /// Specifies the model of the driver being used for the PCI subsystem device.
  final pulumi.Input<String>? model;
  /// Sets the name of the driver associated with the PCI subsystem device.
  final pulumi.Input<String>? name;

  /// Creates a new [DomainDevicesHostdevSubsysPciDriver].
  /// [model] Specifies the model of the driver being used for the PCI subsystem device.
  /// [name] Sets the name of the driver associated with the PCI subsystem device.
  DomainDevicesHostdevSubsysPciDriver({
    this.model,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'name': ?name,
    };
  }

  factory DomainDevicesHostdevSubsysPciDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciDriver(
      model: map['model'] == null ? null : (map['model'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

