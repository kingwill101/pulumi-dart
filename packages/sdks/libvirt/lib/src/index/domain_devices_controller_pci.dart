// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_pci_model.dart';

class DomainDevicesControllerPci {
  /// Indicates whether the PCI controller device supports a 64-bit hole for PCI address space.
  final pulumi.Input<double?>? hole64;
  /// Specifies the unit for the 64-bit hole in the PCI address space for the device.
  final pulumi.Input<String?>? hole64Unit;
  /// Configures the model for the PCI controller device.
  final pulumi.Input<DomainDevicesControllerPciModel?>? model;
  /// Sets the target configuration for the PCI controller device.
  final pulumi.Input<Map<String, dynamic>?>? target;

  /// Creates a new [DomainDevicesControllerPci].
  /// [hole64] Indicates whether the PCI controller device supports a 64-bit hole for PCI address space.
  /// [hole64Unit] Specifies the unit for the 64-bit hole in the PCI address space for the device.
  /// [model] Configures the model for the PCI controller device.
  /// [target] Sets the target configuration for the PCI controller device.
  const DomainDevicesControllerPci({
    this.hole64,
    this.hole64Unit,
    this.model,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hole64': ?hole64,
      'hole64Unit': ?hole64Unit,
      'model': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerPciModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'target': ?target,
    };
  }

  factory DomainDevicesControllerPci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerPci(
      hole64: (() { final guardedValue = map['hole64']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      hole64Unit: (() { final guardedValue = map['hole64Unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerPciModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
