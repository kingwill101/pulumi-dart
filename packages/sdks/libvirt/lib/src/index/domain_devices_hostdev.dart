// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_acpi.dart';
import 'domain_devices_hostdev_alias.dart';
import 'domain_devices_hostdev_boot.dart';
import 'domain_devices_hostdev_caps_misc.dart';
import 'domain_devices_hostdev_caps_net.dart';
import 'domain_devices_hostdev_caps_storage.dart';
import 'domain_devices_hostdev_rom.dart';
import 'domain_devices_hostdev_subsys_mdev.dart';
import 'domain_devices_hostdev_subsys_pci.dart';
import 'domain_devices_hostdev_subsys_scsi.dart';
import 'domain_devices_hostdev_subsys_scsi_host.dart';
import 'domain_devices_hostdev_subsys_usb.dart';

class DomainDevicesHostdev {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesHostdevAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesHostdevAlias>? alias;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final pulumi.Input<DomainDevicesHostdevBoot>? boot;
  /// Lists the miscellaneous capabilities for the host device, providing extended features available to it.
  final pulumi.Input<DomainDevicesHostdevCapsMisc>? capsMisc;
  /// Enumerates the network capabilities available to the host device, detailing its network support.
  final pulumi.Input<DomainDevicesHostdevCapsNet>? capsNet;
  /// Enumerates the storage capabilities of the host device, detailing its storage configuration.
  final pulumi.Input<DomainDevicesHostdevCapsStorage>? capsStorage;
  /// Indicates whether the host device is managed by the hypervisor or managed externally.
  final pulumi.Input<bool>? managed;
  /// Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  final pulumi.Input<DomainDevicesHostdevRom>? rom;
  /// Configures the multimedia device for the host device, including device attributes and settings.
  final pulumi.Input<DomainDevicesHostdevSubsysMDev>? subsysMDev;
  /// Configures the PCI subsystem settings for the host device, detailing PCI attributes.
  final pulumi.Input<DomainDevicesHostdevSubsysPci>? subsysPci;
  /// Configures SCSI parameters for the host device passed through to the VM.
  final pulumi.Input<DomainDevicesHostdevSubsysScsi>? subsysScsi;
  /// Configures SCSI host device parameters for the host device passed through to the VM.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiHost>? subsysScsiHost;
  /// Configures a USB subsystem device to be utilized by the virtual machine.
  final pulumi.Input<DomainDevicesHostdevSubsysUsb>? subsysUsb;

  /// Creates a new [DomainDevicesHostdev].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [capsMisc] Lists the miscellaneous capabilities for the host device, providing extended features available to it.
  /// [capsNet] Enumerates the network capabilities available to the host device, detailing its network support.
  /// [capsStorage] Enumerates the storage capabilities of the host device, detailing its storage configuration.
  /// [managed] Indicates whether the host device is managed by the hypervisor or managed externally.
  /// [rom] Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  /// [subsysMDev] Configures the multimedia device for the host device, including device attributes and settings.
  /// [subsysPci] Configures the PCI subsystem settings for the host device, detailing PCI attributes.
  /// [subsysScsi] Configures SCSI parameters for the host device passed through to the VM.
  /// [subsysScsiHost] Configures SCSI host device parameters for the host device passed through to the VM.
  /// [subsysUsb] Configures a USB subsystem device to be utilized by the virtual machine.
  DomainDevicesHostdev({
    this.acpi,
    this.address,
    this.alias,
    this.boot,
    this.capsMisc,
    this.capsNet,
    this.capsStorage,
    this.managed,
    this.rom,
    this.subsysMDev,
    this.subsysPci,
    this.subsysScsi,
    this.subsysScsiHost,
    this.subsysUsb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'boot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevBoot, Map<String, dynamic>>(boot, (value) => value.toMap()),
      'capsMisc': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsMisc, Map<String, dynamic>>(capsMisc, (value) => value.toMap()),
      'capsNet': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsNet, Map<String, dynamic>>(capsNet, (value) => value.toMap()),
      'capsStorage': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsStorage, Map<String, dynamic>>(capsStorage, (value) => value.toMap()),
      'managed': ?managed,
      'rom': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevRom, Map<String, dynamic>>(rom, (value) => value.toMap()),
      'subsysMDev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysMDev, Map<String, dynamic>>(subsysMDev, (value) => value.toMap()),
      'subsysPci': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPci, Map<String, dynamic>>(subsysPci, (value) => value.toMap()),
      'subsysScsi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsi, Map<String, dynamic>>(subsysScsi, (value) => value.toMap()),
      'subsysScsiHost': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiHost, Map<String, dynamic>>(subsysScsiHost, (value) => value.toMap()),
      'subsysUsb': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysUsb, Map<String, dynamic>>(subsysUsb, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdev(
      acpi: map['acpi'] == null ? null : (DomainDevicesHostdevAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesHostdevAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      boot: map['boot'] == null ? null : (DomainDevicesHostdevBoot.fromMap((map['boot']! as Map).cast<String, dynamic>())).input(),
      capsMisc: map['capsMisc'] == null ? null : (DomainDevicesHostdevCapsMisc.fromMap((map['capsMisc']! as Map).cast<String, dynamic>())).input(),
      capsNet: map['capsNet'] == null ? null : (DomainDevicesHostdevCapsNet.fromMap((map['capsNet']! as Map).cast<String, dynamic>())).input(),
      capsStorage: map['capsStorage'] == null ? null : (DomainDevicesHostdevCapsStorage.fromMap((map['capsStorage']! as Map).cast<String, dynamic>())).input(),
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
      rom: map['rom'] == null ? null : (DomainDevicesHostdevRom.fromMap((map['rom']! as Map).cast<String, dynamic>())).input(),
      subsysMDev: map['subsysMDev'] == null ? null : (DomainDevicesHostdevSubsysMDev.fromMap((map['subsysMDev']! as Map).cast<String, dynamic>())).input(),
      subsysPci: map['subsysPci'] == null ? null : (DomainDevicesHostdevSubsysPci.fromMap((map['subsysPci']! as Map).cast<String, dynamic>())).input(),
      subsysScsi: map['subsysScsi'] == null ? null : (DomainDevicesHostdevSubsysScsi.fromMap((map['subsysScsi']! as Map).cast<String, dynamic>())).input(),
      subsysScsiHost: map['subsysScsiHost'] == null ? null : (DomainDevicesHostdevSubsysScsiHost.fromMap((map['subsysScsiHost']! as Map).cast<String, dynamic>())).input(),
      subsysUsb: map['subsysUsb'] == null ? null : (DomainDevicesHostdevSubsysUsb.fromMap((map['subsysUsb']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

