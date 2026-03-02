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
  /// See: <https://libvirt.org/formatdomain.html#console>
  final pulumi.Input<List<DomainDevicesConsole>>? consoles;
  /// Declares one or more device controllers (PCI, USB, SCSI, virtio-serial, etc.) attached to the guest, controlling how device buses are exposed.
  ///
  /// See: <https://libvirt.org/formatdomain.html#controllers>
  final pulumi.Input<List<DomainDevicesController>>? controllers;
  /// Configures a virtio-based crypto device that offloads cryptographic operations to the host; the device type and backend parameters are specified in its child attributes.
  ///
  /// See: <https://libvirt.org/formatdomain.html#crypto>
  final pulumi.Input<List<DomainDevicesCrypto>>? cryptos;
  /// Declares one or more block devices (disks, CD-ROMs, etc.) attached to the guest, each with its own source, target, and optional tuning parameters.
  ///
  /// See: <https://libvirt.org/formatdomain.html#hard-drives-floppy-disks-cdroms>
  final pulumi.Input<List<DomainDevicesDisk>>? disks;
  /// Sets the absolute path to the hypervisor emulator binary used to run this domain (for example "/usr/bin/qemu-system-x86_64").
  ///
  /// See: <https://libvirt.org/formatdomain.html#devices>
  final pulumi.Input<String>? emulator;
  /// Declares one or more filesystem devices that expose host directories or block devices into the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#filesystems>
  final pulumi.Input<List<DomainDevicesFilesystem>>? filesystems;
  /// Configures one or more graphical framebuffer devices (such as VNC, SPICE, or DBus-based displays) for the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#graphical-framebuffers>
  final pulumi.Input<List<DomainDevicesGraphic>>? graphics;
  /// Defines one or more hostdev entries describing host devices (PCI, USB, SCSI, etc.) that are passed through directly to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#host-device-assignment>
  final pulumi.Input<List<DomainDevicesHostdev>>? hostdevs;
  /// Declares one or more virtual hub devices attached to a guest bus, typically to provide additional USB ports to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#hub-devices>
  final pulumi.Input<List<DomainDevicesHub>>? hubs;
  /// Declares one or more guest input devices such as tablets, mice, or keyboards, and configures their type, bus, and optional passthrough settings.
  ///
  /// See: <https://libvirt.org/formatdomain.html#input-devices>
  final pulumi.Input<List<DomainDevicesInput>>? inputs;
  /// Defines one or more network interface devices attached to the guest, including their connection mode, model, addressing, and related options.
  ///
  /// See: <https://libvirt.org/formatdomain.html#network-interfaces>
  final pulumi.Input<List<DomainDevicesInterface>>? interfaces;
  /// Configures an IOMMU device for the guest, enabling emulated or paravirtual IOMMU functionality; requires a model and may include driver and ACPI options.
  final pulumi.Input<DomainDevicesIommu>? iommu;
  /// Configures one or more device leases that must be acquired by the lock manager before the domain can start, each represented as a lease entry.
  ///
  /// See: <https://libvirt.org/formatdomain.html#device-leases>
  final pulumi.Input<List<DomainDevicesLease>>? leases;
  /// Configures the guest memory balloon device, which allows the host to dynamically adjust the guest’s available memory.
  final pulumi.Input<DomainDevicesMemBalloon>? memBalloon;
  /// Defines one or more memory device entries (DIMM, NVDIMM, virtio-mem, etc.) that provide additional, hot-pluggable memory to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#memory-devices>
  final pulumi.Input<List<DomainDevicesMemorydev>>? memorydevs;
  /// Adds an NVRAM device to the domain, allowing firmware or platform-specific non-volatile state to be stored separately from normal disks.
  final pulumi.Input<DomainDevicesNvram>? nvram;
  /// Adds one or more panic devices that report guest panic events to the host, allowing external monitoring or automation on guest crashes.
  ///
  /// See: <https://libvirt.org/formatdomain.html#panic-device>
  final pulumi.Input<List<DomainDevicesPanic>>? panics;
  /// Configures one or more parallel port character devices exposed to the guest, each represented by a parallel element with optional address, backend, and logging settings.
  ///
  /// See: <https://libvirt.org/formatdomain.html#parallel-port>
  final pulumi.Input<List<DomainDevicesParallel>>? parallels;
  /// Adds a pstore device to the guest for persistent storage of kernel oops/panic logs, mapping to a host backend.
  final pulumi.Input<DomainDevicesPstore>? pstore;
  /// Configures one or more redirected USB devices exposed to the guest via redirdev, typically used in conjunction with SPICE or similar frontends.
  ///
  /// See: <https://libvirt.org/formatdomain.html#redirected-devices>
  final pulumi.Input<List<DomainDevicesRedirDev>>? redirDevs;
  /// Configures one or more USB redirection filter rules that determine which redirected USB devices are allowed or denied to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#redirected-devices>
  final pulumi.Input<List<DomainDevicesRedirFilter>>? redirFilters;
  /// Defines one or more virtual random number generator devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#random-number-generator-device>
  final pulumi.Input<List<DomainDevicesRng>>? rngs;
  /// Configures one or more virtual serial port devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#serial-port>
  final pulumi.Input<List<DomainDevicesSerial>>? serials;
  /// Defines one or more shared memory (ivshmem/shmem) devices used to share memory regions between this guest, other guests, and/or the host.
  ///
  /// See: <https://libvirt.org/formatdomain.html#shared-memory-device>
  final pulumi.Input<List<DomainDevicesShmem>>? shmems;
  /// Defines one or more virtual smartcard devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#smartcard-devices>
  final pulumi.Input<List<DomainDevicesSmartcard>>? smartcards;
  /// Configures one or more virtual sound devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#sound-devices>
  final pulumi.Input<List<DomainDevicesSound>>? sounds;
  /// Configures one or more TPM devices attached to the guest, including their backend implementation, addressing, and optional ACPI integration.
  ///
  /// See: <https://libvirt.org/formatdomain.html#tpm-device>
  final pulumi.Input<List<DomainDevicesTpm>>? tpms;
  /// Defines one or more video devices attached to the guest, each providing a virtual graphics adapter.
  ///
  /// See: <https://libvirt.org/formatdomain.html#video-devices>
  final pulumi.Input<List<DomainDevicesVideo>>? videos;
  /// Configures a virtio vsock device that provides a host/guest communication channel using a CID-based socket interface.
  final pulumi.Input<DomainDevicesVsock>? vsock;
  /// Configures one or more virtual watchdog devices attached to the guest, each controlling timeout behavior and actions on failure.
  ///
  /// See: <https://libvirt.org/formatdomain.html#watchdog-devices>
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
  DomainDevices({
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
      audios: map['audios'] == null ? null : (pulumi.Input.decodeList<DomainDevicesAudio>(map['audios']!, (value) => DomainDevicesAudio.fromMap((value as Map).cast<String, dynamic>()))).input(),
      channels: map['channels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesChannel>(map['channels']!, (value) => DomainDevicesChannel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consoles: map['consoles'] == null ? null : (pulumi.Input.decodeList<DomainDevicesConsole>(map['consoles']!, (value) => DomainDevicesConsole.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controllers: map['controllers'] == null ? null : (pulumi.Input.decodeList<DomainDevicesController>(map['controllers']!, (value) => DomainDevicesController.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cryptos: map['cryptos'] == null ? null : (pulumi.Input.decodeList<DomainDevicesCrypto>(map['cryptos']!, (value) => DomainDevicesCrypto.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDisk>(map['disks']!, (value) => DomainDevicesDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      emulator: map['emulator'] == null ? null : (map['emulator']! as String).input(),
      filesystems: map['filesystems'] == null ? null : (pulumi.Input.decodeList<DomainDevicesFilesystem>(map['filesystems']!, (value) => DomainDevicesFilesystem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      graphics: map['graphics'] == null ? null : (pulumi.Input.decodeList<DomainDevicesGraphic>(map['graphics']!, (value) => DomainDevicesGraphic.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostdevs: map['hostdevs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesHostdev>(map['hostdevs']!, (value) => DomainDevicesHostdev.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hubs: map['hubs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesHub>(map['hubs']!, (value) => DomainDevicesHub.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInput>(map['inputs']!, (value) => DomainDevicesInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interfaces: map['interfaces'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterface>(map['interfaces']!, (value) => DomainDevicesInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      iommu: map['iommu'] == null ? null : (DomainDevicesIommu.fromMap((map['iommu']! as Map).cast<String, dynamic>())).input(),
      leases: map['leases'] == null ? null : (pulumi.Input.decodeList<DomainDevicesLease>(map['leases']!, (value) => DomainDevicesLease.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memBalloon: map['memBalloon'] == null ? null : (DomainDevicesMemBalloon.fromMap((map['memBalloon']! as Map).cast<String, dynamic>())).input(),
      memorydevs: map['memorydevs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesMemorydev>(map['memorydevs']!, (value) => DomainDevicesMemorydev.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nvram: map['nvram'] == null ? null : (DomainDevicesNvram.fromMap((map['nvram']! as Map).cast<String, dynamic>())).input(),
      panics: map['panics'] == null ? null : (pulumi.Input.decodeList<DomainDevicesPanic>(map['panics']!, (value) => DomainDevicesPanic.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parallels: map['parallels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesParallel>(map['parallels']!, (value) => DomainDevicesParallel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pstore: map['pstore'] == null ? null : (DomainDevicesPstore.fromMap((map['pstore']! as Map).cast<String, dynamic>())).input(),
      redirDevs: map['redirDevs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRedirDev>(map['redirDevs']!, (value) => DomainDevicesRedirDev.fromMap((value as Map).cast<String, dynamic>()))).input(),
      redirFilters: map['redirFilters'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRedirFilter>(map['redirFilters']!, (value) => DomainDevicesRedirFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rngs: map['rngs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRng>(map['rngs']!, (value) => DomainDevicesRng.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serials: map['serials'] == null ? null : (pulumi.Input.decodeList<DomainDevicesSerial>(map['serials']!, (value) => DomainDevicesSerial.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shmems: map['shmems'] == null ? null : (pulumi.Input.decodeList<DomainDevicesShmem>(map['shmems']!, (value) => DomainDevicesShmem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      smartcards: map['smartcards'] == null ? null : (pulumi.Input.decodeList<DomainDevicesSmartcard>(map['smartcards']!, (value) => DomainDevicesSmartcard.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sounds: map['sounds'] == null ? null : (pulumi.Input.decodeList<DomainDevicesSound>(map['sounds']!, (value) => DomainDevicesSound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tpms: map['tpms'] == null ? null : (pulumi.Input.decodeList<DomainDevicesTpm>(map['tpms']!, (value) => DomainDevicesTpm.fromMap((value as Map).cast<String, dynamic>()))).input(),
      videos: map['videos'] == null ? null : (pulumi.Input.decodeList<DomainDevicesVideo>(map['videos']!, (value) => DomainDevicesVideo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vsock: map['vsock'] == null ? null : (DomainDevicesVsock.fromMap((map['vsock']! as Map).cast<String, dynamic>())).input(),
      watchdogs: map['watchdogs'] == null ? null : (pulumi.Input.decodeList<DomainDevicesWatchdog>(map['watchdogs']!, (value) => DomainDevicesWatchdog.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

