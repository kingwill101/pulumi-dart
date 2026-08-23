// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio.dart';
import 'domain_devices_channel.dart';
import 'domain_devices_console.dart';
import 'domain_devices_controller.dart';
import 'domain_devices_crypto.dart';
import 'domain_devices_disk.dart';
import 'domain_devices_filesystem.dart';
import 'domain_devices_graphic.dart';
import 'domain_devices_hostdev.dart';
import 'domain_devices_hub.dart';
import 'domain_devices_input.dart';
import 'domain_devices_interface.dart';
import 'domain_devices_iommu.dart';
import 'domain_devices_lease.dart';
import 'domain_devices_mem_balloon.dart';
import 'domain_devices_memorydev.dart';
import 'domain_devices_nvram.dart';
import 'domain_devices_panic.dart';
import 'domain_devices_parallel.dart';
import 'domain_devices_pstore.dart';
import 'domain_devices_redir_dev.dart';
import 'domain_devices_redir_filter.dart';
import 'domain_devices_rng.dart';
import 'domain_devices_serial.dart';
import 'domain_devices_shmem.dart';
import 'domain_devices_smartcard.dart';
import 'domain_devices_sound.dart';
import 'domain_devices_tpm.dart';
import 'domain_devices_video.dart';
import 'domain_devices_vsock.dart';
import 'domain_devices_watchdog.dart';

class DomainDevices {
  /// Specifies the audio devices allocated to the domain, supporting audio input and output functionality within the VM.
  final pulumi.Input<List<DomainDevicesAudio>>? audios;
  /// Private communication channels between host and guest
  final pulumi.Input<List<DomainDevicesChannel>>? channels;
  /// Configures one or more console devices for the guest, defining how serial consoles are exposed and connected.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#console&gt;
  final pulumi.Input<List<DomainDevicesConsole>>? consoles;
  /// Declares one or more device controllers (PCI, USB, SCSI, virtio-serial, etc.) attached to the guest, controlling how device buses are exposed.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#controllers&gt;
  final pulumi.Input<List<DomainDevicesController>>? controllers;
  /// Configures a virtio-based crypto device that offloads cryptographic operations to the host; the device type and backend parameters are specified in its child attributes.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#crypto&gt;
  final pulumi.Input<List<DomainDevicesCrypto>>? cryptos;
  /// Declares one or more block devices (disks, CD-ROMs, etc.) attached to the guest, each with its own source, target, and optional tuning parameters.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hard-drives-floppy-disks-cdroms&gt;
  final pulumi.Input<List<DomainDevicesDisk>>? disks;
  /// Sets the absolute path to the hypervisor emulator binary used to run this domain (for example "/usr/bin/qemu-system-x86_64").
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#devices&gt;
  final pulumi.Input<String>? emulator;
  /// Declares one or more filesystem devices that expose host directories or block devices into the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#filesystems&gt;
  final pulumi.Input<List<DomainDevicesFilesystem>>? filesystems;
  /// Configures one or more graphical framebuffer devices (such as VNC, SPICE, or DBus-based displays) for the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#graphical-framebuffers&gt;
  final pulumi.Input<List<DomainDevicesGraphic>>? graphics;
  /// Defines one or more hostdev entries describing host devices (PCI, USB, SCSI, etc.) that are passed through directly to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#host-device-assignment&gt;
  final pulumi.Input<List<DomainDevicesHostdev>>? hostdevs;
  /// Declares one or more virtual hub devices attached to a guest bus, typically to provide additional USB ports to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hub-devices&gt;
  final pulumi.Input<List<DomainDevicesHub>>? hubs;
  /// Declares one or more guest input devices such as tablets, mice, or keyboards, and configures their type, bus, and optional passthrough settings.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#input-devices&gt;
  final pulumi.Input<List<DomainDevicesInput>>? inputs;
  /// Defines one or more network interface devices attached to the guest, including their connection mode, model, addressing, and related options.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#network-interfaces&gt;
  final pulumi.Input<List<DomainDevicesInterface>>? interfaces;
  /// Configures an IOMMU device for the guest, enabling emulated or paravirtual IOMMU functionality; requires a model and may include driver and ACPI options.
  final pulumi.Input<DomainDevicesIommu>? iommu;
  /// Configures one or more device leases that must be acquired by the lock manager before the domain can start, each represented as a lease entry.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#device-leases&gt;
  final pulumi.Input<List<DomainDevicesLease>>? leases;
  /// Configures the guest memory balloon device, which allows the host to dynamically adjust the guest’s available memory.
  final pulumi.Input<DomainDevicesMemBalloon>? memBalloon;
  /// Defines one or more memory device entries (DIMM, NVDIMM, virtio-mem, etc.) that provide additional, hot-pluggable memory to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-devices&gt;
  final pulumi.Input<List<DomainDevicesMemorydev>>? memorydevs;
  /// Adds an NVRAM device to the domain, allowing firmware or platform-specific non-volatile state to be stored separately from normal disks.
  final pulumi.Input<DomainDevicesNvram>? nvram;
  /// Adds one or more panic devices that report guest panic events to the host, allowing external monitoring or automation on guest crashes.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#panic-device&gt;
  final pulumi.Input<List<DomainDevicesPanic>>? panics;
  /// Configures one or more parallel port character devices exposed to the guest, each represented by a parallel element with optional address, backend, and logging settings.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#parallel-port&gt;
  final pulumi.Input<List<DomainDevicesParallel>>? parallels;
  /// Adds a pstore device to the guest for persistent storage of kernel oops/panic logs, mapping to a host backend.
  final pulumi.Input<DomainDevicesPstore>? pstore;
  /// Configures one or more redirected USB devices exposed to the guest via redirdev, typically used in conjunction with SPICE or similar frontends.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#redirected-devices&gt;
  final pulumi.Input<List<DomainDevicesRedirDev>>? redirDevs;
  /// Configures one or more USB redirection filter rules that determine which redirected USB devices are allowed or denied to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#redirected-devices&gt;
  final pulumi.Input<List<DomainDevicesRedirFilter>>? redirFilters;
  /// Defines one or more virtual random number generator devices attached to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#random-number-generator-device&gt;
  final pulumi.Input<List<DomainDevicesRng>>? rngs;
  /// Configures one or more virtual serial port devices attached to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#serial-port&gt;
  final pulumi.Input<List<DomainDevicesSerial>>? serials;
  /// Defines one or more shared memory (ivshmem/shmem) devices used to share memory regions between this guest, other guests, and/or the host.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#shared-memory-device&gt;
  final pulumi.Input<List<DomainDevicesShmem>>? shmems;
  /// Defines one or more virtual smartcard devices attached to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#smartcard-devices&gt;
  final pulumi.Input<List<DomainDevicesSmartcard>>? smartcards;
  /// Configures one or more virtual sound devices attached to the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#sound-devices&gt;
  final pulumi.Input<List<DomainDevicesSound>>? sounds;
  /// Configures one or more TPM devices attached to the guest, including their backend implementation, addressing, and optional ACPI integration.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#tpm-device&gt;
  final pulumi.Input<List<DomainDevicesTpm>>? tpms;
  /// Defines one or more video devices attached to the guest, each providing a virtual graphics adapter.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#video-devices&gt;
  final pulumi.Input<List<DomainDevicesVideo>>? videos;
  /// Configures a virtio vsock device that provides a host/guest communication channel using a CID-based socket interface.
  final pulumi.Input<DomainDevicesVsock>? vsock;
  /// Configures one or more virtual watchdog devices attached to the guest, each controlling timeout behavior and actions on failure.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#watchdog-devices&gt;
  final pulumi.Input<List<DomainDevicesWatchdog>>? watchdogs;

  /// Creates a new [DomainDevices].
  /// [audios] Specifies the audio devices allocated to the domain, supporting audio input and output functionality within the VM.
  /// [channels] Private communication channels between host and guest
  /// [consoles] Configures one or more console devices for the guest, defining how serial consoles are exposed and connected.
  /// [controllers] Declares one or more device controllers (PCI, USB, SCSI, virtio-serial, etc.) attached to the guest, controlling how device buses are exposed.
  /// [cryptos] Configures a virtio-based crypto device that offloads cryptographic operations to the host; the device type and backend parameters are specified in its child attributes.
  /// [disks] Declares one or more block devices (disks, CD-ROMs, etc.) attached to the guest, each with its own source, target, and optional tuning parameters.
  /// [emulator] Sets the absolute path to the hypervisor emulator binary used to run this domain (for example "/usr/bin/qemu-system-x86_64").
  /// [filesystems] Declares one or more filesystem devices that expose host directories or block devices into the guest.
  /// [graphics] Configures one or more graphical framebuffer devices (such as VNC, SPICE, or DBus-based displays) for the guest.
  /// [hostdevs] Defines one or more hostdev entries describing host devices (PCI, USB, SCSI, etc.) that are passed through directly to the guest.
  /// [hubs] Declares one or more virtual hub devices attached to a guest bus, typically to provide additional USB ports to the guest.
  /// [inputs] Declares one or more guest input devices such as tablets, mice, or keyboards, and configures their type, bus, and optional passthrough settings.
  /// [interfaces] Defines one or more network interface devices attached to the guest, including their connection mode, model, addressing, and related options.
  /// [iommu] Configures an IOMMU device for the guest, enabling emulated or paravirtual IOMMU functionality; requires a model and may include driver and ACPI options.
  /// [leases] Configures one or more device leases that must be acquired by the lock manager before the domain can start, each represented as a lease entry.
  /// [memBalloon] Configures the guest memory balloon device, which allows the host to dynamically adjust the guest’s available memory.
  /// [memorydevs] Defines one or more memory device entries (DIMM, NVDIMM, virtio-mem, etc.) that provide additional, hot-pluggable memory to the guest.
  /// [nvram] Adds an NVRAM device to the domain, allowing firmware or platform-specific non-volatile state to be stored separately from normal disks.
  /// [panics] Adds one or more panic devices that report guest panic events to the host, allowing external monitoring or automation on guest crashes.
  /// [parallels] Configures one or more parallel port character devices exposed to the guest, each represented by a parallel element with optional address, backend, and logging settings.
  /// [pstore] Adds a pstore device to the guest for persistent storage of kernel oops/panic logs, mapping to a host backend.
  /// [redirDevs] Configures one or more redirected USB devices exposed to the guest via redirdev, typically used in conjunction with SPICE or similar frontends.
  /// [redirFilters] Configures one or more USB redirection filter rules that determine which redirected USB devices are allowed or denied to the guest.
  /// [rngs] Defines one or more virtual random number generator devices attached to the guest.
  /// [serials] Configures one or more virtual serial port devices attached to the guest.
  /// [shmems] Defines one or more shared memory (ivshmem/shmem) devices used to share memory regions between this guest, other guests, and/or the host.
  /// [smartcards] Defines one or more virtual smartcard devices attached to the guest.
  /// [sounds] Configures one or more virtual sound devices attached to the guest.
  /// [tpms] Configures one or more TPM devices attached to the guest, including their backend implementation, addressing, and optional ACPI integration.
  /// [videos] Defines one or more video devices attached to the guest, each providing a virtual graphics adapter.
  /// [vsock] Configures a virtio vsock device that provides a host/guest communication channel using a CID-based socket interface.
  /// [watchdogs] Configures one or more virtual watchdog devices attached to the guest, each controlling timeout behavior and actions on failure.
  const DomainDevices({
    this.audios,
    this.channels,
    this.consoles,
    this.controllers,
    this.cryptos,
    this.disks,
    this.emulator,
    this.filesystems,
    this.graphics,
    this.hostdevs,
    this.hubs,
    this.inputs,
    this.interfaces,
    this.iommu,
    this.leases,
    this.memBalloon,
    this.memorydevs,
    this.nvram,
    this.panics,
    this.parallels,
    this.pstore,
    this.redirDevs,
    this.redirFilters,
    this.rngs,
    this.serials,
    this.shmems,
    this.smartcards,
    this.sounds,
    this.tpms,
    this.videos,
    this.vsock,
    this.watchdogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audios': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesAudio>, List<Map<String, dynamic>>>(audios, (value) => pulumi.Input.encodeList<DomainDevicesAudio, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesChannel>, List<Map<String, dynamic>>>(channels, (value) => pulumi.Input.encodeList<DomainDevicesChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consoles': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesConsole>, List<Map<String, dynamic>>>(consoles, (value) => pulumi.Input.encodeList<DomainDevicesConsole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controllers': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesController>, List<Map<String, dynamic>>>(controllers, (value) => pulumi.Input.encodeList<DomainDevicesController, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cryptos': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesCrypto>, List<Map<String, dynamic>>>(cryptos, (value) => pulumi.Input.encodeList<DomainDevicesCrypto, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disks': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<DomainDevicesDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emulator': ?emulator,
      'filesystems': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesFilesystem>, List<Map<String, dynamic>>>(filesystems, (value) => pulumi.Input.encodeList<DomainDevicesFilesystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'graphics': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesGraphic>, List<Map<String, dynamic>>>(graphics, (value) => pulumi.Input.encodeList<DomainDevicesGraphic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostdevs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesHostdev>, List<Map<String, dynamic>>>(hostdevs, (value) => pulumi.Input.encodeList<DomainDevicesHostdev, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesHub>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<DomainDevicesHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<DomainDevicesInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<DomainDevicesInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iommu': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommu, Map<String, dynamic>>(iommu, (value) => value.toMap()),
      'leases': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesLease>, List<Map<String, dynamic>>>(leases, (value) => pulumi.Input.encodeList<DomainDevicesLease, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memBalloon': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemBalloon, Map<String, dynamic>>(memBalloon, (value) => value.toMap()),
      'memorydevs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesMemorydev>, List<Map<String, dynamic>>>(memorydevs, (value) => pulumi.Input.encodeList<DomainDevicesMemorydev, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nvram': ?pulumi.Input.mapOptionalInputValue<DomainDevicesNvram, Map<String, dynamic>>(nvram, (value) => value.toMap()),
      'panics': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesPanic>, List<Map<String, dynamic>>>(panics, (value) => pulumi.Input.encodeList<DomainDevicesPanic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parallels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesParallel>, List<Map<String, dynamic>>>(parallels, (value) => pulumi.Input.encodeList<DomainDevicesParallel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pstore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesPstore, Map<String, dynamic>>(pstore, (value) => value.toMap()),
      'redirDevs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRedirDev>, List<Map<String, dynamic>>>(redirDevs, (value) => pulumi.Input.encodeList<DomainDevicesRedirDev, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirFilters': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRedirFilter>, List<Map<String, dynamic>>>(redirFilters, (value) => pulumi.Input.encodeList<DomainDevicesRedirFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rngs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRng>, List<Map<String, dynamic>>>(rngs, (value) => pulumi.Input.encodeList<DomainDevicesRng, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serials': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSerial>, List<Map<String, dynamic>>>(serials, (value) => pulumi.Input.encodeList<DomainDevicesSerial, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shmems': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesShmem>, List<Map<String, dynamic>>>(shmems, (value) => pulumi.Input.encodeList<DomainDevicesShmem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'smartcards': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSmartcard>, List<Map<String, dynamic>>>(smartcards, (value) => pulumi.Input.encodeList<DomainDevicesSmartcard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sounds': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSound>, List<Map<String, dynamic>>>(sounds, (value) => pulumi.Input.encodeList<DomainDevicesSound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tpms': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesTpm>, List<Map<String, dynamic>>>(tpms, (value) => pulumi.Input.encodeList<DomainDevicesTpm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'videos': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesVideo>, List<Map<String, dynamic>>>(videos, (value) => pulumi.Input.encodeList<DomainDevicesVideo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vsock': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVsock, Map<String, dynamic>>(vsock, (value) => value.toMap()),
      'watchdogs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesWatchdog>, List<Map<String, dynamic>>>(watchdogs, (value) => pulumi.Input.encodeList<DomainDevicesWatchdog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevices.fromMap(Map<String, dynamic> map) {
    return DomainDevices(
      audios: (() { final guardedValue = map['audios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesAudio>(guardedValue, (value) => DomainDevicesAudio.fromMap((value as Map).cast<String, dynamic>()))); })(),
      channels: (() { final guardedValue = map['channels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesChannel>(guardedValue, (value) => DomainDevicesChannel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consoles: (() { final guardedValue = map['consoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesConsole>(guardedValue, (value) => DomainDevicesConsole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controllers: (() { final guardedValue = map['controllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesController>(guardedValue, (value) => DomainDevicesController.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cryptos: (() { final guardedValue = map['cryptos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesCrypto>(guardedValue, (value) => DomainDevicesCrypto.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDisk>(guardedValue, (value) => DomainDevicesDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      emulator: (() { final guardedValue = map['emulator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesystems: (() { final guardedValue = map['filesystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesFilesystem>(guardedValue, (value) => DomainDevicesFilesystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      graphics: (() { final guardedValue = map['graphics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesGraphic>(guardedValue, (value) => DomainDevicesGraphic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostdevs: (() { final guardedValue = map['hostdevs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesHostdev>(guardedValue, (value) => DomainDevicesHostdev.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesHub>(guardedValue, (value) => DomainDevicesHub.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInput>(guardedValue, (value) => DomainDevicesInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInterface>(guardedValue, (value) => DomainDevicesInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      leases: (() { final guardedValue = map['leases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesLease>(guardedValue, (value) => DomainDevicesLease.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memBalloon: (() { final guardedValue = map['memBalloon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesMemBalloon.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memorydevs: (() { final guardedValue = map['memorydevs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesMemorydev>(guardedValue, (value) => DomainDevicesMemorydev.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nvram: (() { final guardedValue = map['nvram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesNvram.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      panics: (() { final guardedValue = map['panics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesPanic>(guardedValue, (value) => DomainDevicesPanic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parallels: (() { final guardedValue = map['parallels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesParallel>(guardedValue, (value) => DomainDevicesParallel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pstore: (() { final guardedValue = map['pstore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesPstore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirDevs: (() { final guardedValue = map['redirDevs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRedirDev>(guardedValue, (value) => DomainDevicesRedirDev.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redirFilters: (() { final guardedValue = map['redirFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRedirFilter>(guardedValue, (value) => DomainDevicesRedirFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rngs: (() { final guardedValue = map['rngs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRng>(guardedValue, (value) => DomainDevicesRng.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serials: (() { final guardedValue = map['serials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesSerial>(guardedValue, (value) => DomainDevicesSerial.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shmems: (() { final guardedValue = map['shmems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesShmem>(guardedValue, (value) => DomainDevicesShmem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      smartcards: (() { final guardedValue = map['smartcards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesSmartcard>(guardedValue, (value) => DomainDevicesSmartcard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sounds: (() { final guardedValue = map['sounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesSound>(guardedValue, (value) => DomainDevicesSound.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tpms: (() { final guardedValue = map['tpms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesTpm>(guardedValue, (value) => DomainDevicesTpm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      videos: (() { final guardedValue = map['videos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesVideo>(guardedValue, (value) => DomainDevicesVideo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vsock: (() { final guardedValue = map['vsock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVsock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      watchdogs: (() { final guardedValue = map['watchdogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesWatchdog>(guardedValue, (value) => DomainDevicesWatchdog.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
