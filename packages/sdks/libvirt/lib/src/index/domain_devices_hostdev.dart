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
      'acpi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevAcpi,
            Map<String, dynamic>
          >(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevAlias,
            Map<String, dynamic>
          >(alias, (value) => value.toMap()),
      'boot':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevBoot,
            Map<String, dynamic>
          >(boot, (value) => value.toMap()),
      'capsMisc':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevCapsMisc,
            Map<String, dynamic>
          >(capsMisc, (value) => value.toMap()),
      'capsNet':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevCapsNet,
            Map<String, dynamic>
          >(capsNet, (value) => value.toMap()),
      'capsStorage':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevCapsStorage,
            Map<String, dynamic>
          >(capsStorage, (value) => value.toMap()),
      'managed': ?managed,
      'rom':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevRom,
            Map<String, dynamic>
          >(rom, (value) => value.toMap()),
      'subsysMDev':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysMDev,
            Map<String, dynamic>
          >(subsysMDev, (value) => value.toMap()),
      'subsysPci':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysPci,
            Map<String, dynamic>
          >(subsysPci, (value) => value.toMap()),
      'subsysScsi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsi,
            Map<String, dynamic>
          >(subsysScsi, (value) => value.toMap()),
      'subsysScsiHost':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsiHost,
            Map<String, dynamic>
          >(subsysScsiHost, (value) => value.toMap()),
      'subsysUsb':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysUsb,
            Map<String, dynamic>
          >(subsysUsb, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdev(
      acpi: (() {
        final guardedValue = map['acpi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevAcpi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevAlias.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      boot: (() {
        final guardedValue = map['boot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevBoot.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capsMisc: (() {
        final guardedValue = map['capsMisc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevCapsMisc.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capsNet: (() {
        final guardedValue = map['capsNet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevCapsNet.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capsStorage: (() {
        final guardedValue = map['capsStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevCapsStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managed: (() {
        final guardedValue = map['managed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rom: (() {
        final guardedValue = map['rom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevRom.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subsysMDev: (() {
        final guardedValue = map['subsysMDev'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysMDev.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subsysPci: (() {
        final guardedValue = map['subsysPci'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysPci.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subsysScsi: (() {
        final guardedValue = map['subsysScsi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subsysScsiHost: (() {
        final guardedValue = map['subsysScsiHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsiHost.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subsysUsb: (() {
        final guardedValue = map['subsysUsb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysUsb.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
