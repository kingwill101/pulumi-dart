// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainDevicesHostdevAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesHostdevAlias? alias;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final DomainDevicesHostdevBoot? boot;
  /// Lists the miscellaneous capabilities for the host device, providing extended features available to it.
  final DomainDevicesHostdevCapsMisc? capsMisc;
  /// Enumerates the network capabilities available to the host device, detailing its network support.
  final DomainDevicesHostdevCapsNet? capsNet;
  /// Enumerates the storage capabilities of the host device, detailing its storage configuration.
  final DomainDevicesHostdevCapsStorage? capsStorage;
  /// Indicates whether the host device is managed by the hypervisor or managed externally.
  final bool? managed;
  /// Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  final DomainDevicesHostdevRom? rom;
  /// Configures the multimedia device for the host device, including device attributes and settings.
  final DomainDevicesHostdevSubsysMDev? subsysMDev;
  /// Configures the PCI subsystem settings for the host device, detailing PCI attributes.
  final DomainDevicesHostdevSubsysPci? subsysPci;
  /// Configures SCSI parameters for the host device passed through to the VM.
  final DomainDevicesHostdevSubsysScsi? subsysScsi;
  /// Configures SCSI host device parameters for the host device passed through to the VM.
  final DomainDevicesHostdevSubsysScsiHost? subsysScsiHost;
  /// Configures a USB subsystem device to be utilized by the virtual machine.
  final DomainDevicesHostdevSubsysUsb? subsysUsb;

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
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'boot': ?boot == null ? null : boot!.toMap(),
      'capsMisc': ?capsMisc == null ? null : capsMisc!.toMap(),
      'capsNet': ?capsNet == null ? null : capsNet!.toMap(),
      'capsStorage': ?capsStorage == null ? null : capsStorage!.toMap(),
      'managed': ?managed,
      'rom': ?rom == null ? null : rom!.toMap(),
      'subsysMDev': ?subsysMDev == null ? null : subsysMDev!.toMap(),
      'subsysPci': ?subsysPci == null ? null : subsysPci!.toMap(),
      'subsysScsi': ?subsysScsi == null ? null : subsysScsi!.toMap(),
      'subsysScsiHost': ?subsysScsiHost == null ? null : subsysScsiHost!.toMap(),
      'subsysUsb': ?subsysUsb == null ? null : subsysUsb!.toMap(),
    };
  }

  factory DomainDevicesHostdev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdev(
      acpi: map['acpi'] == null ? null : DomainDevicesHostdevAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesHostdevAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      boot: map['boot'] == null ? null : DomainDevicesHostdevBoot.fromMap((map['boot'] as Map).cast<String, dynamic>()),
      capsMisc: map['capsMisc'] == null ? null : DomainDevicesHostdevCapsMisc.fromMap((map['capsMisc'] as Map).cast<String, dynamic>()),
      capsNet: map['capsNet'] == null ? null : DomainDevicesHostdevCapsNet.fromMap((map['capsNet'] as Map).cast<String, dynamic>()),
      capsStorage: map['capsStorage'] == null ? null : DomainDevicesHostdevCapsStorage.fromMap((map['capsStorage'] as Map).cast<String, dynamic>()),
      managed: map['managed'] == null ? null : map['managed'] as bool,
      rom: map['rom'] == null ? null : DomainDevicesHostdevRom.fromMap((map['rom'] as Map).cast<String, dynamic>()),
      subsysMDev: map['subsysMDev'] == null ? null : DomainDevicesHostdevSubsysMDev.fromMap((map['subsysMDev'] as Map).cast<String, dynamic>()),
      subsysPci: map['subsysPci'] == null ? null : DomainDevicesHostdevSubsysPci.fromMap((map['subsysPci'] as Map).cast<String, dynamic>()),
      subsysScsi: map['subsysScsi'] == null ? null : DomainDevicesHostdevSubsysScsi.fromMap((map['subsysScsi'] as Map).cast<String, dynamic>()),
      subsysScsiHost: map['subsysScsiHost'] == null ? null : DomainDevicesHostdevSubsysScsiHost.fromMap((map['subsysScsiHost'] as Map).cast<String, dynamic>()),
      subsysUsb: map['subsysUsb'] == null ? null : DomainDevicesHostdevSubsysUsb.fromMap((map['subsysUsb'] as Map).cast<String, dynamic>()),
    );
  }
}

