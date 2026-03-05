// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_acpi.dart';
import 'domain_devices_controller_alias.dart';
import 'domain_devices_controller_driver.dart';
import 'domain_devices_controller_nvme.dart';
import 'domain_devices_controller_pci.dart';
import 'domain_devices_controller_usb.dart';
import 'domain_devices_controller_virt_io_serial.dart';
import 'domain_devices_controller_xen_bus.dart';

class DomainDevicesController {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesControllerAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesControllerAlias>? alias;
  /// Configures the driver for the controller device being used.
  final pulumi.Input<DomainDevicesControllerDriver>? driver;
  /// Defines the index position of the controller within the devices list.
  final pulumi.Input<double>? index;
  /// Specifies the model type for the controller device.
  final pulumi.Input<String>? model;
  /// Configures NVMe-specific settings for the controller, if applicable.
  final pulumi.Input<DomainDevicesControllerNvme>? nvme;
  /// Configures settings related to the PCI controller device.
  final pulumi.Input<DomainDevicesControllerPci>? pci;
  /// Defines the type of the controller device being configured.
  final pulumi.Input<String> type;
  /// Configures settings specific to the USB controller device.
  final pulumi.Input<DomainDevicesControllerUsb>? usb;
  /// Configures settings related to the VirtIO serial controller device.
  final pulumi.Input<DomainDevicesControllerVirtIoSerial>? virtIoSerial;
  /// Configures settings related to the Xen bus controller device.
  final pulumi.Input<DomainDevicesControllerXenBus>? xenBus;

  /// Creates a new [DomainDevicesController].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [driver] Configures the driver for the controller device being used.
  /// [index] Defines the index position of the controller within the devices list.
  /// [model] Specifies the model type for the controller device.
  /// [nvme] Configures NVMe-specific settings for the controller, if applicable.
  /// [pci] Configures settings related to the PCI controller device.
  /// [type] Defines the type of the controller device being configured.
  /// [usb] Configures settings specific to the USB controller device.
  /// [virtIoSerial] Configures settings related to the VirtIO serial controller device.
  /// [xenBus] Configures settings related to the Xen bus controller device.
  DomainDevicesController({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    this.index,
    this.model,
    this.nvme,
    this.pci,
    required this.type,
    this.usb,
    this.virtIoSerial,
    this.xenBus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'index': ?index,
      'model': ?model,
      'nvme': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerNvme, Map<String, dynamic>>(nvme, (value) => value.toMap()),
      'pci': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerPci, Map<String, dynamic>>(pci, (value) => value.toMap()),
      'type': type,
      'usb': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerUsb, Map<String, dynamic>>(usb, (value) => value.toMap()),
      'virtIoSerial': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerVirtIoSerial, Map<String, dynamic>>(virtIoSerial, (value) => value.toMap()),
      'xenBus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerXenBus, Map<String, dynamic>>(xenBus, (value) => value.toMap()),
    };
  }

  factory DomainDevicesController.fromMap(Map<String, dynamic> map) {
    return DomainDevicesController(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nvme: (() { final guardedValue = map['nvme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerNvme.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pci: (() { final guardedValue = map['pci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerPci.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usb: (() { final guardedValue = map['usb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerUsb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtIoSerial: (() { final guardedValue = map['virtIoSerial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerVirtIoSerial.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xenBus: (() { final guardedValue = map['xenBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerXenBus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

