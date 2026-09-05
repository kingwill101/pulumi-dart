// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysPciDriver {
  final pulumi.Input<String?>? iommuFd;
  /// Specifies the model of the driver being used for the PCI subsystem device.
  final pulumi.Input<String?>? model;
  /// Sets the name of the driver associated with the PCI subsystem device.
  final pulumi.Input<String?>? name;

  /// Creates a new [DomainDevicesHostdevSubsysPciDriver].
  /// [iommuFd] Optional.
  /// [model] Specifies the model of the driver being used for the PCI subsystem device.
  /// [name] Sets the name of the driver associated with the PCI subsystem device.
  const DomainDevicesHostdevSubsysPciDriver({
    this.iommuFd,
    this.model,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iommuFd': ?iommuFd,
      'model': ?model,
      'name': ?name,
    };
  }

  factory DomainDevicesHostdevSubsysPciDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciDriver(
      iommuFd: (() { final guardedValue = map['iommuFd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
