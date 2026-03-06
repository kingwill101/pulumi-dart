// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_block_io_tune.dart';
import 'domain_clock.dart';
import 'domain_cpu.dart';
import 'domain_cpu_tune.dart';
import 'domain_create.dart';
import 'domain_default_io_thread.dart';
import 'domain_destroy.dart';
import 'domain_devices.dart';
import 'domain_features.dart';
import 'domain_id_map.dart';
import 'domain_io_thread_ids.dart';
import 'domain_key_wrap.dart';
import 'domain_launch_security.dart';
import 'domain_memory_backing.dart';
import 'domain_memory_tune.dart';
import 'domain_metadata.dart';
import 'domain_numa_tune.dart';
import 'domain_os.dart';
import 'domain_perf.dart';
import 'domain_pm.dart';
import 'domain_resource.dart';
import 'domain_sec_label.dart';
import 'domain_sys_info.dart';
import 'domain_throttle_groups.dart';
import 'domain_vcpus.dart';

/// {@template pulumi_index_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_index_domain_domain_args_doc}
class DomainArgs {
  /// Whether the domain should be started automatically when the host boots.
  final pulumi.Input<bool>? autostart;
  /// Configures block I/O tuning parameters for the domain, allowing control over I/O performance settings.
  final pulumi.Input<DomainBlockIoTune>? blockIoTune;
  /// Specifies the bootloader that the domain uses to boot the operating system.
  final pulumi.Input<String>? bootloader;
  /// Defines arguments passed to the bootloader during the boot process.
  final pulumi.Input<String>? bootloaderArgs;
  /// Configures the timing settings for the domain's virtual clock.
  final pulumi.Input<DomainClock>? clock;
  /// CPU allocation and topology configuration
  final pulumi.Input<DomainCpu>? cpu;
  /// Configures CPU tuning options that affect performance management for the domain.
  final pulumi.Input<DomainCpuTune>? cpuTune;
  /// Start behavior flags passed to libvirt when running is true.
  final pulumi.Input<DomainCreate>? create;
  /// Specifies the current amount of memory assigned to the domain, impacting its operational capacity and performance.
  final pulumi.Input<double>? currentMemory;
  /// Defines the unit of measurement for the current memory assigned to the domain, ensuring clarity in memory specifications.
  final pulumi.Input<String>? currentMemoryUnit;
  /// Sets the default IO thread configuration for the domain, facilitating efficient management of IO operations.
  final pulumi.Input<DomainDefaultIoThread>? defaultIoThread;
  /// Provides a human-readable description of the domain, assisting in the identification and documentation of domain settings.
  final pulumi.Input<String>? description;
  final pulumi.Input<DomainDestroy>? destroy;
  /// Devices provided to the guest domain
  final pulumi.Input<DomainDevices>? devices;
  /// Hypervisor features that can be toggled on/off
  final pulumi.Input<DomainFeatures>? features;
  /// Holds the generation ID for the domain, used to track configuration changes and provide uniqueness.
  final pulumi.Input<String>? genId;
  /// Sets a unique identifier for the hardware of the domain, allowing system management tools to refer to it distinctly.
  final pulumi.Input<String>? hwuuid;
  /// Configures the mapping of user IDs for the domain, allowing control over user permissions and access.
  final pulumi.Input<DomainIdMap>? idMap;
  /// Configures the identification of I/O threads used by the domain.
  final pulumi.Input<DomainIoThreadIDs>? ioThreadIDs;
  /// Sets the number of I/O threads allocated to the domain for processing.
  final pulumi.Input<double>? ioThreads;
  /// Configures key wrapping for cryptographic operations in the domain.
  final pulumi.Input<DomainKeyWrap>? keyWrap;
  /// Configures launch security features for the domain to protect sensitive information.
  final pulumi.Input<DomainLaunchSecurity>? launchSecurity;
  /// Configures the maximum memory allocation for the domain at boot time.
  final pulumi.Input<double>? maximumMemory;
  /// Configures the total number of memory slots that can be used in the domain.
  final pulumi.Input<double>? maximumMemorySlots;
  /// Sets the unit for maximum memory allocation in the domain configuration.
  final pulumi.Input<String>? maximumMemoryUnit;
  /// Maximum memory allocation for the guest at boot time
  final pulumi.Input<double>? memory;
  /// Configures how the guest’s RAM is backed by host memory, including huge pages, locking, sharing, access policy, allocation policy, and discard behavior.
  final pulumi.Input<DomainMemoryBacking>? memoryBacking;
  /// Controls whether guest memory is included in the core dump when the domain crashes, by setting the memory attribute (dumpCore) on the domain element; valid values are user-provided according to libvirt’s dumpCore policy (e.g. enabling or disabling memory dumping).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-allocation&gt;
  final pulumi.Input<String>? memoryDumpCore;
  /// Configures memory tuning parameters for the guest, including soft, hard, and swap limits and minimum guarantees.
  final pulumi.Input<DomainMemoryTune>? memoryTune;
  /// Sets the unit for the domain’s main memory value, typically as a memory size unit such as KiB, MiB, or GiB; the string is user-provided and must match libvirt’s accepted memory units.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-allocation&gt;
  final pulumi.Input<String>? memoryUnit;
  /// Configures an arbitrary metadata block associated with the domain, typically used to store application- or tool-specific XML or other structured data.
  final pulumi.Input<DomainMetadata>? metadata;
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String>? name;
  /// Configures NUMA policy for the domain process and its memory, controlling how guest CPUs and memory are placed on host NUMA nodes.
  final pulumi.Input<DomainNumaTune>? numaTune;
  /// Sets the action libvirt takes when the guest crashes; valid values include "destroy", "restart", "preserve", "coredump-destroy", "coredump-restart", "rename-restart", "ignore", or "pause". Example: "coredump-restart" keeps a crash dump and then restarts the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  final pulumi.Input<String>? onCrash;
  /// Sets the action libvirt takes when the guest issues a poweroff/shutdown; valid values include "destroy", "restart", "preserve", or "rename-restart". If unset, the hypervisor default is used.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  final pulumi.Input<String>? onPoweroff;
  /// Sets the action libvirt takes when the guest reboots; valid values include "destroy", "restart", "preserve", "rename-restart", "ignore", or "pause". If unset, the hypervisor default is used.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  final pulumi.Input<String>? onReboot;
  /// Groups configuration of how the guest operating system is booted, including firmware, BIOS, boot devices, kernel parameters, and related options. All sub-attributes are optional and user-provided.
  final pulumi.Input<DomainOs>? os;
  /// Enables configuration of performance monitoring events exposed to the guest and collected by the hypervisor.
  final pulumi.Input<DomainPerf>? perf;
  /// Configures power management behavior advertised to the guest, such as support for suspend-to-RAM and suspend-to-disk.
  final pulumi.Input<DomainPm>? pm;
  /// Groups resource-partitioning settings that associate the domain with hypervisor-specific resource partitions or classes.
  final pulumi.Input<DomainResource>? resource;
  /// Whether the domain should be started after creation.
  final pulumi.Input<bool>? running;
  /// Configures one security label configuration for the domain, controlling how a security driver (such as SELinux or DAC) labels and isolates the domain and its resources.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#security-label&gt;
  final pulumi.Input<List<DomainSecLabel>>? secLabels;
  /// Configures system information presented to the guest (such as SMBIOS and fw_cfg data), allowing customization of what hardware/firmware details the guest sees.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#smbios-system-information&gt;
  final pulumi.Input<List<DomainSysInfo>>? sysInfos;
  /// Enables configuration of one or more named disk I/O throttle groups that can be referenced by disk `throttlefilters` to apply shared I/O rate limits.
  final pulumi.Input<DomainThrottleGroups>? throttleGroups;
  /// Sets a human‑readable title for the domain, which is user‑provided free text and may be used by management tools but has no functional effect on the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#general-metadata&gt;
  final pulumi.Input<String>? title;
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  final pulumi.Input<String> type;
  /// Sets the maximum number of virtual CPUs configured for the guest, as a positive integer within the hypervisor’s supported range (for example 1–255).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  final pulumi.Input<double>? vcpu;
  /// Sets the optional CPU affinity for all vCPUs using a cpuset expression (for example "0-3,8"), corresponding to the vcpu element’s cpuset attribute.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  final pulumi.Input<String>? vcpuCpuset;
  /// Sets the number of vCPUs that are initially online at boot via the vcpu element’s current attribute, as a positive integer not exceeding domain.vcpu.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  final pulumi.Input<double>? vcpuCurrent;
  /// Sets the vCPU placement policy via the vcpu element’s placement attribute, typically "static" or "auto", controlling whether libvirt chooses NUMA/CPU placement automatically.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  final pulumi.Input<String>? vcpuPlacement;
  /// Enables per‑vCPU configuration; when present, it contains one or more vcpu entries that can individually control online state and pinning.
  final pulumi.Input<DomainVcpus>? vcpus;

  /// Creates a new [DomainArgs].
  /// [autostart] Whether the domain should be started automatically when the host boots.
  /// [blockIoTune] Configures block I/O tuning parameters for the domain, allowing control over I/O performance settings.
  /// [bootloader] Specifies the bootloader that the domain uses to boot the operating system.
  /// [bootloaderArgs] Defines arguments passed to the bootloader during the boot process.
  /// [clock] Configures the timing settings for the domain's virtual clock.
  /// [cpu] CPU allocation and topology configuration
  /// [cpuTune] Configures CPU tuning options that affect performance management for the domain.
  /// [create] Start behavior flags passed to libvirt when running is true.
  /// [currentMemory] Specifies the current amount of memory assigned to the domain, impacting its operational capacity and performance.
  /// [currentMemoryUnit] Defines the unit of measurement for the current memory assigned to the domain, ensuring clarity in memory specifications.
  /// [defaultIoThread] Sets the default IO thread configuration for the domain, facilitating efficient management of IO operations.
  /// [description] Provides a human-readable description of the domain, assisting in the identification and documentation of domain settings.
  /// [destroy] Optional.
  /// [devices] Devices provided to the guest domain
  /// [features] Hypervisor features that can be toggled on/off
  /// [genId] Holds the generation ID for the domain, used to track configuration changes and provide uniqueness.
  /// [hwuuid] Sets a unique identifier for the hardware of the domain, allowing system management tools to refer to it distinctly.
  /// [idMap] Configures the mapping of user IDs for the domain, allowing control over user permissions and access.
  /// [ioThreadIDs] Configures the identification of I/O threads used by the domain.
  /// [ioThreads] Sets the number of I/O threads allocated to the domain for processing.
  /// [keyWrap] Configures key wrapping for cryptographic operations in the domain.
  /// [launchSecurity] Configures launch security features for the domain to protect sensitive information.
  /// [maximumMemory] Configures the maximum memory allocation for the domain at boot time.
  /// [maximumMemorySlots] Configures the total number of memory slots that can be used in the domain.
  /// [maximumMemoryUnit] Sets the unit for maximum memory allocation in the domain configuration.
  /// [memory] Maximum memory allocation for the guest at boot time
  /// [memoryBacking] Configures how the guest’s RAM is backed by host memory, including huge pages, locking, sharing, access policy, allocation policy, and discard behavior.
  /// [memoryDumpCore] Controls whether guest memory is included in the core dump when the domain crashes, by setting the memory attribute (dumpCore) on the domain element; valid values are user-provided according to libvirt’s dumpCore policy (e.g. enabling or disabling memory dumping).
  /// [memoryTune] Configures memory tuning parameters for the guest, including soft, hard, and swap limits and minimum guarantees.
  /// [memoryUnit] Sets the unit for the domain’s main memory value, typically as a memory size unit such as KiB, MiB, or GiB; the string is user-provided and must match libvirt’s accepted memory units.
  /// [metadata] Configures an arbitrary metadata block associated with the domain, typically used to store application- or tool-specific XML or other structured data.
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  /// [numaTune] Configures NUMA policy for the domain process and its memory, controlling how guest CPUs and memory are placed on host NUMA nodes.
  /// [onCrash] Sets the action libvirt takes when the guest crashes; valid values include "destroy", "restart", "preserve", "coredump-destroy", "coredump-restart", "rename-restart", "ignore", or "pause". Example: "coredump-restart" keeps a crash dump and then restarts the domain.
  /// [onPoweroff] Sets the action libvirt takes when the guest issues a poweroff/shutdown; valid values include "destroy", "restart", "preserve", or "rename-restart". If unset, the hypervisor default is used.
  /// [onReboot] Sets the action libvirt takes when the guest reboots; valid values include "destroy", "restart", "preserve", "rename-restart", "ignore", or "pause". If unset, the hypervisor default is used.
  /// [os] Groups configuration of how the guest operating system is booted, including firmware, BIOS, boot devices, kernel parameters, and related options. All sub-attributes are optional and user-provided.
  /// [perf] Enables configuration of performance monitoring events exposed to the guest and collected by the hypervisor.
  /// [pm] Configures power management behavior advertised to the guest, such as support for suspend-to-RAM and suspend-to-disk.
  /// [resource] Groups resource-partitioning settings that associate the domain with hypervisor-specific resource partitions or classes.
  /// [running] Whether the domain should be started after creation.
  /// [secLabels] Configures one security label configuration for the domain, controlling how a security driver (such as SELinux or DAC) labels and isolates the domain and its resources.
  /// [sysInfos] Configures system information presented to the guest (such as SMBIOS and fw_cfg data), allowing customization of what hardware/firmware details the guest sees.
  /// [throttleGroups] Enables configuration of one or more named disk I/O throttle groups that can be referenced by disk `throttlefilters` to apply shared I/O rate limits.
  /// [title] Sets a human‑readable title for the domain, which is user‑provided free text and may be used by management tools but has no functional effect on the guest.
  /// [type] Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  /// [vcpu] Sets the maximum number of virtual CPUs configured for the guest, as a positive integer within the hypervisor’s supported range (for example 1–255).
  /// [vcpuCpuset] Sets the optional CPU affinity for all vCPUs using a cpuset expression (for example "0-3,8"), corresponding to the vcpu element’s cpuset attribute.
  /// [vcpuCurrent] Sets the number of vCPUs that are initially online at boot via the vcpu element’s current attribute, as a positive integer not exceeding domain.vcpu.
  /// [vcpuPlacement] Sets the vCPU placement policy via the vcpu element’s placement attribute, typically "static" or "auto", controlling whether libvirt chooses NUMA/CPU placement automatically.
  /// [vcpus] Enables per‑vCPU configuration; when present, it contains one or more vcpu entries that can individually control online state and pinning.
  const DomainArgs({
    this.autostart,
    this.blockIoTune,
    this.bootloader,
    this.bootloaderArgs,
    this.clock,
    this.cpu,
    this.cpuTune,
    this.create,
    this.currentMemory,
    this.currentMemoryUnit,
    this.defaultIoThread,
    this.description,
    this.destroy,
    this.devices,
    this.features,
    this.genId,
    this.hwuuid,
    this.idMap,
    this.ioThreadIDs,
    this.ioThreads,
    this.keyWrap,
    this.launchSecurity,
    this.maximumMemory,
    this.maximumMemorySlots,
    this.maximumMemoryUnit,
    this.memory,
    this.memoryBacking,
    this.memoryDumpCore,
    this.memoryTune,
    this.memoryUnit,
    this.metadata,
    this.name,
    this.numaTune,
    this.onCrash,
    this.onPoweroff,
    this.onReboot,
    this.os,
    this.perf,
    this.pm,
    this.resource,
    this.running,
    this.secLabels,
    this.sysInfos,
    this.throttleGroups,
    this.title,
    required this.type,
    this.vcpu,
    this.vcpuCpuset,
    this.vcpuCurrent,
    this.vcpuPlacement,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autostart': ?autostart,
      'blockIoTune': ?pulumi.Input.mapOptionalInputValue<DomainBlockIoTune, Map<String, dynamic>>(blockIoTune, (value) => value.toMap()),
      'bootloader': ?bootloader,
      'bootloaderArgs': ?bootloaderArgs,
      'clock': ?pulumi.Input.mapOptionalInputValue<DomainClock, Map<String, dynamic>>(clock, (value) => value.toMap()),
      'cpu': ?pulumi.Input.mapOptionalInputValue<DomainCpu, Map<String, dynamic>>(cpu, (value) => value.toMap()),
      'cpuTune': ?pulumi.Input.mapOptionalInputValue<DomainCpuTune, Map<String, dynamic>>(cpuTune, (value) => value.toMap()),
      'create': ?pulumi.Input.mapOptionalInputValue<DomainCreate, Map<String, dynamic>>(create, (value) => value.toMap()),
      'currentMemory': ?currentMemory,
      'currentMemoryUnit': ?currentMemoryUnit,
      'defaultIoThread': ?pulumi.Input.mapOptionalInputValue<DomainDefaultIoThread, Map<String, dynamic>>(defaultIoThread, (value) => value.toMap()),
      'description': ?description,
      'destroy': ?pulumi.Input.mapOptionalInputValue<DomainDestroy, Map<String, dynamic>>(destroy, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<DomainDevices, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'features': ?pulumi.Input.mapOptionalInputValue<DomainFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'genId': ?genId,
      'hwuuid': ?hwuuid,
      'idMap': ?pulumi.Input.mapOptionalInputValue<DomainIdMap, Map<String, dynamic>>(idMap, (value) => value.toMap()),
      'ioThreadIDs': ?pulumi.Input.mapOptionalInputValue<DomainIoThreadIDs, Map<String, dynamic>>(ioThreadIDs, (value) => value.toMap()),
      'ioThreads': ?ioThreads,
      'keyWrap': ?pulumi.Input.mapOptionalInputValue<DomainKeyWrap, Map<String, dynamic>>(keyWrap, (value) => value.toMap()),
      'launchSecurity': ?pulumi.Input.mapOptionalInputValue<DomainLaunchSecurity, Map<String, dynamic>>(launchSecurity, (value) => value.toMap()),
      'maximumMemory': ?maximumMemory,
      'maximumMemorySlots': ?maximumMemorySlots,
      'maximumMemoryUnit': ?maximumMemoryUnit,
      'memory': ?memory,
      'memoryBacking': ?pulumi.Input.mapOptionalInputValue<DomainMemoryBacking, Map<String, dynamic>>(memoryBacking, (value) => value.toMap()),
      'memoryDumpCore': ?memoryDumpCore,
      'memoryTune': ?pulumi.Input.mapOptionalInputValue<DomainMemoryTune, Map<String, dynamic>>(memoryTune, (value) => value.toMap()),
      'memoryUnit': ?memoryUnit,
      'metadata': ?pulumi.Input.mapOptionalInputValue<DomainMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'numaTune': ?pulumi.Input.mapOptionalInputValue<DomainNumaTune, Map<String, dynamic>>(numaTune, (value) => value.toMap()),
      'onCrash': ?onCrash,
      'onPoweroff': ?onPoweroff,
      'onReboot': ?onReboot,
      'os': ?pulumi.Input.mapOptionalInputValue<DomainOs, Map<String, dynamic>>(os, (value) => value.toMap()),
      'perf': ?pulumi.Input.mapOptionalInputValue<DomainPerf, Map<String, dynamic>>(perf, (value) => value.toMap()),
      'pm': ?pulumi.Input.mapOptionalInputValue<DomainPm, Map<String, dynamic>>(pm, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<DomainResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'running': ?running,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sysInfos': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfo>, List<Map<String, dynamic>>>(sysInfos, (value) => pulumi.Input.encodeList<DomainSysInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'throttleGroups': ?pulumi.Input.mapOptionalInputValue<DomainThrottleGroups, Map<String, dynamic>>(throttleGroups, (value) => value.toMap()),
      'title': ?title,
      'type': type,
      'vcpu': ?vcpu,
      'vcpuCpuset': ?vcpuCpuset,
      'vcpuCurrent': ?vcpuCurrent,
      'vcpuPlacement': ?vcpuPlacement,
      'vcpus': ?pulumi.Input.mapOptionalInputValue<DomainVcpus, Map<String, dynamic>>(vcpus, (value) => value.toMap()),
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      autostart: (() { final guardedValue = map['autostart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockIoTune: (() { final guardedValue = map['blockIoTune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainBlockIoTune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootloader: (() { final guardedValue = map['bootloader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootloaderArgs: (() { final guardedValue = map['bootloaderArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clock: (() { final guardedValue = map['clock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainClock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuTune: (() { final guardedValue = map['cpuTune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCpuTune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCreate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentMemory: (() { final guardedValue = map['currentMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      currentMemoryUnit: (() { final guardedValue = map['currentMemoryUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultIoThread: (() { final guardedValue = map['defaultIoThread']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultIoThread.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destroy: (() { final guardedValue = map['destroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDestroy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      genId: (() { final guardedValue = map['genId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hwuuid: (() { final guardedValue = map['hwuuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idMap: (() { final guardedValue = map['idMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainIdMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ioThreadIDs: (() { final guardedValue = map['ioThreadIDs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainIoThreadIDs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ioThreads: (() { final guardedValue = map['ioThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      keyWrap: (() { final guardedValue = map['keyWrap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainKeyWrap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      launchSecurity: (() { final guardedValue = map['launchSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLaunchSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumMemory: (() { final guardedValue = map['maximumMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maximumMemorySlots: (() { final guardedValue = map['maximumMemorySlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maximumMemoryUnit: (() { final guardedValue = map['maximumMemoryUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryBacking: (() { final guardedValue = map['memoryBacking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMemoryBacking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryDumpCore: (() { final guardedValue = map['memoryDumpCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryTune: (() { final guardedValue = map['memoryTune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMemoryTune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryUnit: (() { final guardedValue = map['memoryUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numaTune: (() { final guardedValue = map['numaTune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainNumaTune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onCrash: (() { final guardedValue = map['onCrash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onPoweroff: (() { final guardedValue = map['onPoweroff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onReboot: (() { final guardedValue = map['onReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      os: (() { final guardedValue = map['os']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perf: (() { final guardedValue = map['perf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainPerf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pm: (() { final guardedValue = map['pm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainPm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      running: (() { final guardedValue = map['running']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSecLabel>(guardedValue, (value) => DomainSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sysInfos: (() { final guardedValue = map['sysInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfo>(guardedValue, (value) => DomainSysInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      throttleGroups: (() { final guardedValue = map['throttleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainThrottleGroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vcpu: (() { final guardedValue = map['vcpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vcpuCpuset: (() { final guardedValue = map['vcpuCpuset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcpuCurrent: (() { final guardedValue = map['vcpuCurrent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vcpuPlacement: (() { final guardedValue = map['vcpuPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcpus: (() { final guardedValue = map['vcpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainVcpus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

