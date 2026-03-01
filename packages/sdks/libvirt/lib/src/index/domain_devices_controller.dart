// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainDevicesControllerAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesControllerAlias? alias;
  /// Configures the driver for the controller device being used.
  final DomainDevicesControllerDriver? driver;
  /// Defines the index position of the controller within the devices list.
  final double? index;
  /// Specifies the model type for the controller device.
  final String? model;
  /// Configures NVMe-specific settings for the controller, if applicable.
  final DomainDevicesControllerNvme? nvme;
  /// Configures settings related to the PCI controller device.
  final DomainDevicesControllerPci? pci;
  /// Defines the type of the controller device being configured.
  final String type;
  /// Configures settings specific to the USB controller device.
  final DomainDevicesControllerUsb? usb;
  /// Configures settings related to the VirtIO serial controller device.
  final DomainDevicesControllerVirtIoSerial? virtIoSerial;
  /// Configures settings related to the Xen bus controller device.
  final DomainDevicesControllerXenBus? xenBus;

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
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'driver': ?driver == null ? null : driver!.toMap(),
      'index': ?index,
      'model': ?model,
      'nvme': ?nvme == null ? null : nvme!.toMap(),
      'pci': ?pci == null ? null : pci!.toMap(),
      'type': type,
      'usb': ?usb == null ? null : usb!.toMap(),
      'virtIoSerial': ?virtIoSerial == null ? null : virtIoSerial!.toMap(),
      'xenBus': ?xenBus == null ? null : xenBus!.toMap(),
    };
  }

  factory DomainDevicesController.fromMap(Map<String, dynamic> map) {
    return DomainDevicesController(
      acpi: map['acpi'] == null ? null : DomainDevicesControllerAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesControllerAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      driver: map['driver'] == null ? null : DomainDevicesControllerDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      index: map['index'] == null ? null : map['index'] as double,
      model: map['model'] == null ? null : map['model'] as String,
      nvme: map['nvme'] == null ? null : DomainDevicesControllerNvme.fromMap((map['nvme'] as Map).cast<String, dynamic>()),
      pci: map['pci'] == null ? null : DomainDevicesControllerPci.fromMap((map['pci'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      usb: map['usb'] == null ? null : DomainDevicesControllerUsb.fromMap((map['usb'] as Map).cast<String, dynamic>()),
      virtIoSerial: map['virtIoSerial'] == null ? null : DomainDevicesControllerVirtIoSerial.fromMap((map['virtIoSerial'] as Map).cast<String, dynamic>()),
      xenBus: map['xenBus'] == null ? null : DomainDevicesControllerXenBus.fromMap((map['xenBus'] as Map).cast<String, dynamic>()),
    );
  }
}

