import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_bhyve_commandline.dart';
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
import 'domain_lxc_namespace.dart';
import 'domain_memory_backing.dart';
import 'domain_memory_tune.dart';
import 'domain_metadata.dart';
import 'domain_numa_tune.dart';
import 'domain_os.dart';
import 'domain_perf.dart';
import 'domain_pm.dart';
import 'domain_qemu_capabilities.dart';
import 'domain_qemu_commandline.dart';
import 'domain_qemu_deprecation.dart';
import 'domain_qemu_override.dart';
import 'domain_resource.dart';
import 'domain_state.dart';
import 'domain_throttle_groups.dart';
import 'domain_update.dart';
import 'domain_vcpus.dart';
import 'domain_xen_commandline.dart';
import '../internal/package_registration.dart' as package_registration;

/// Manages a libvirt domain (virtual machine).
///
/// This resource follows the [libvirt domain XML schema](https://libvirt.org/formatdomain.html) closely,
/// providing fine-grained control over VM configuration.
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   # Basic VM configuration
///   example:
///     type: libvirt:Domain
///     properties:
///       name: example-vm
///       memory: 2048
///       memoryUnit: MiB
///       vcpu: 2
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         typeMachine: q35
///         bootDevices:
///           - hd
///           - network
///       devices:
///         disks:
///           - source:
///               file:
///                 file: /var/lib/libvirt/images/example.qcow2
///             target:
///               dev: vda
///               bus: virtio
///         interfaces:
///           - model:
///               type: virtio
///             source:
///               network:
///                 network: default
///   # VM with UEFI firmware
///   uefiExample:
///     type: libvirt:Domain
///     name: uefi_example
///     properties:
///       name: uefi-vm
///       memory: 4096
///       memoryUnit: MiB
///       vcpu: 4
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         typeMachine: q35
///         firmware: efi
///         loader: /usr/share/edk2/x64/OVMF_CODE.secboot.4m.fd
///         loaderReadonly: true
///         loaderType: pflash
///         nvRam:
///           nvRam: /var/lib/libvirt/qemu/nvram/uefi-vm.fd
///           template: /usr/share/edk2/x64/OVMF_VARS.4m.fd
///         bootDevices:
///           - hd
///   # VM with direct kernel boot
///   kernelBoot:
///     type: libvirt:Domain
///     name: kernel_boot
///     properties:
///       name: kernel-boot-vm
///       memory: 1024
///       memoryUnit: MiB
///       vcpu: 1
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         kernel: /boot/vmlinuz
///         initrd: /boot/initrd.img
///         kernelArgs: console=ttyS0 root=/dev/vda1
/// ```
class Domain extends pulumi.CustomResource {
  /// Whether the domain should be started automatically when the host boots.
  late final pulumi.Output<bool?> autostart;
  /// Configures bhyve-specific command-line passthrough for a domain, allowing extra arguments and environment variables to be appended through the bhyve XML namespace.
  late final pulumi.Output<DomainBhyveCommandline?> bhyveCommandline;
  /// Configures block I/O tuning parameters for the domain, allowing control over I/O performance settings.
  late final pulumi.Output<DomainBlockIoTune?> blockIoTune;
  /// Specifies the bootloader that the domain uses to boot the operating system.
  late final pulumi.Output<String?> bootloader;
  /// Defines arguments passed to the bootloader during the boot process.
  late final pulumi.Output<String?> bootloaderArgs;
  /// Configures the timing settings for the domain's virtual clock.
  late final pulumi.Output<DomainClock?> clock;
  /// CPU allocation and topology configuration
  late final pulumi.Output<DomainCpu?> cpu;
  /// Configures CPU tuning options that affect performance management for the domain.
  late final pulumi.Output<DomainCpuTune?> cpuTune;
  /// Start behavior flags passed to libvirt when running is true.
  late final pulumi.Output<DomainCreate?> create;
  /// Specifies the current amount of memory assigned to the domain, impacting its operational capacity and performance.
  late final pulumi.Output<double?> currentMemory;
  /// Defines the unit of measurement for the current memory assigned to the domain, ensuring clarity in memory specifications.
  late final pulumi.Output<String?> currentMemoryUnit;
  /// Sets the default IO thread configuration for the domain, facilitating efficient management of IO operations.
  late final pulumi.Output<DomainDefaultIoThread?> defaultIoThread;
  /// Provides a human-readable description of the domain, assisting in the identification and documentation of domain settings.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<DomainDestroy?> destroy;
  /// Devices provided to the guest domain
  late final pulumi.Output<DomainDevices?> devices;
  /// Exposes the numeric domain ID assigned by libvirt at runtime; this value is computed by libvirt and is read-only.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#element-and-attribute-overview&gt;
  late final pulumi.Output<double> domainId;
  /// Hypervisor features that can be toggled on/off
  late final pulumi.Output<DomainFeatures?> features;
  /// Holds the generation ID for the domain, used to track configuration changes and provide uniqueness.
  late final pulumi.Output<String?> genId;
  /// Sets a unique identifier for the hardware of the domain, allowing system management tools to refer to it distinctly.
  late final pulumi.Output<String?> hwuuid;
  /// Configures the mapping of user IDs for the domain, allowing control over user permissions and access.
  late final pulumi.Output<DomainIdMap?> idMap;
  /// Configures the identification of I/O threads used by the domain.
  late final pulumi.Output<DomainIoThreadIDs?> ioThreadIDs;
  /// Sets the number of I/O threads allocated to the domain for processing.
  late final pulumi.Output<double?> ioThreads;
  /// Configures key wrapping for cryptographic operations in the domain.
  late final pulumi.Output<DomainKeyWrap?> keyWrap;
  /// Configures launch security features for the domain to protect sensitive information.
  late final pulumi.Output<DomainLaunchSecurity?> launchSecurity;
  /// Configures inherited Linux namespaces for LXC guests, allowing selected namespaces to be shared with another process or namespace provider.
  late final pulumi.Output<DomainLxcNamespace?> lxcNamespace;
  /// Configures the maximum memory allocation for the domain at boot time.
  late final pulumi.Output<double?> maximumMemory;
  /// Configures the total number of memory slots that can be used in the domain.
  late final pulumi.Output<double?> maximumMemorySlots;
  /// Sets the unit for maximum memory allocation in the domain configuration.
  late final pulumi.Output<String?> maximumMemoryUnit;
  /// Maximum memory allocation for the guest at boot time
  late final pulumi.Output<double?> memory;
  /// Configures how the guest’s RAM is backed by host memory, including huge pages, locking, sharing, access policy, allocation policy, and discard behavior.
  late final pulumi.Output<DomainMemoryBacking?> memoryBacking;
  /// Controls whether guest memory is included in the core dump when the domain crashes, by setting the memory attribute (dumpCore) on the domain element; valid values are user-provided according to libvirt’s dumpCore policy (e.g. enabling or disabling memory dumping).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-allocation&gt;
  late final pulumi.Output<String?> memoryDumpCore;
  /// Configures memory tuning parameters for the guest, including soft, hard, and swap limits and minimum guarantees.
  late final pulumi.Output<DomainMemoryTune?> memoryTune;
  /// Sets the unit for the domain’s main memory value, typically as a memory size unit such as KiB, MiB, or GiB; the string is user-provided and must match libvirt’s accepted memory units.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#memory-allocation&gt;
  late final pulumi.Output<String?> memoryUnit;
  /// Configures an arbitrary metadata block associated with the domain, typically used to store application- or tool-specific XML or other structured data.
  late final pulumi.Output<DomainMetadata?> metadata;
  /// Configures the name of the domain, which should be unique within the host environment.
  late final pulumi.Output<String> name;
  /// Configures NUMA policy for the domain process and its memory, controlling how guest CPUs and memory are placed on host NUMA nodes.
  late final pulumi.Output<DomainNumaTune?> numaTune;
  /// Sets the action libvirt takes when the guest crashes; valid values include "destroy", "restart", "preserve", "coredump-destroy", "coredump-restart", "rename-restart", "ignore", or "pause". Example: "coredump-restart" keeps a crash dump and then restarts the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  late final pulumi.Output<String?> onCrash;
  /// Sets the action libvirt takes when the guest issues a poweroff/shutdown; valid values include "destroy", "restart", "preserve", or "rename-restart". If unset, the hypervisor default is used.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  late final pulumi.Output<String?> onPoweroff;
  /// Sets the action libvirt takes when the guest reboots; valid values include "destroy", "restart", "preserve", "rename-restart", "ignore", or "pause". If unset, the hypervisor default is used.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#events-configuration&gt;
  late final pulumi.Output<String?> onReboot;
  /// Groups configuration of how the guest operating system is booted, including firmware, BIOS, boot devices, kernel parameters, and related options. All sub-attributes are optional and user-provided.
  late final pulumi.Output<DomainOs?> os;
  /// Enables configuration of performance monitoring events exposed to the guest and collected by the hypervisor.
  late final pulumi.Output<DomainPerf?> perf;
  /// Configures power management behavior advertised to the guest, such as support for suspend-to-RAM and suspend-to-disk.
  late final pulumi.Output<DomainPm?> pm;
  /// Configures QEMU capability toggles through the QEMU namespace, allowing named capabilities to be explicitly added to or removed from the launched device model.
  late final pulumi.Output<DomainQemuCapabilities?> qemuCapabilities;
  /// Configures QEMU-specific command-line passthrough for a domain, allowing explicit extra arguments and environment variables to be passed through the dedicated QEMU XML namespace.
  late final pulumi.Output<DomainQemuCommandline?> qemuCommandline;
  /// Configures the QEMU namespace deprecation behavior for the domain.
  late final pulumi.Output<DomainQemuDeprecation?> qemuDeprecation;
  /// Configures QEMU frontend property overrides in the QEMU namespace, targeting specific devices by alias and setting named frontend properties.
  late final pulumi.Output<DomainQemuOverride?> qemuOverride;
  /// Groups resource-partitioning settings that associate the domain with hypervisor-specific resource partitions or classes.
  late final pulumi.Output<DomainResource?> resource;
  /// Whether the domain should be started after creation.
  late final pulumi.Output<bool?> running;
  /// Configures one security label configuration for the domain, controlling how a security driver (such as SELinux or DAC) labels and isolates the domain and its resources.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#security-label&gt;
  late final pulumi.Output<List<Map<String, dynamic>>?> secLabels;
  /// Configures system information presented to the guest (such as SMBIOS and fw_cfg data), allowing customization of what hardware/firmware details the guest sees.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#smbios-system-information&gt;
  late final pulumi.Output<List<Map<String, dynamic>>?> sysInfos;
  /// Enables configuration of one or more named disk I/O throttle groups that can be referenced by disk `throttlefilters` to apply shared I/O rate limits.
  late final pulumi.Output<DomainThrottleGroups?> throttleGroups;
  /// Sets a human‑readable title for the domain, which is user‑provided free text and may be used by management tools but has no functional effect on the guest.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#general-metadata&gt;
  late final pulumi.Output<String?> title;
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  late final pulumi.Output<String> type;
  late final pulumi.Output<DomainUpdate?> update;
  /// Sets the domain’s UUID; if omitted libvirt generates one, and any provided value must be a valid RFC‑4122‑style UUID string.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#general-metadata&gt;
  late final pulumi.Output<String> uuid;
  /// Sets the maximum number of virtual CPUs configured for the guest, as a positive integer within the hypervisor’s supported range (for example 1–255).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  late final pulumi.Output<double?> vcpu;
  /// Sets the optional CPU affinity for all vCPUs using a cpuset expression (for example "0-3,8"), corresponding to the vcpu element’s cpuset attribute.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  late final pulumi.Output<String?> vcpuCpuset;
  /// Sets the number of vCPUs that are initially online at boot via the vcpu element’s current attribute, as a positive integer not exceeding domain.vcpu.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  late final pulumi.Output<double?> vcpuCurrent;
  /// Sets the vCPU placement policy via the vcpu element’s placement attribute, typically "static" or "auto", controlling whether libvirt chooses NUMA/CPU placement automatically.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#cpu-allocation&gt;
  late final pulumi.Output<String?> vcpuPlacement;
  /// Enables per‑vCPU configuration; when present, it contains one or more vcpu entries that can individually control online state and pinning.
  late final pulumi.Output<DomainVcpus?> vcpus;
  /// Sets the VMware datacenter path associated with the domain when using the VMware driver, matching the datacenter-oriented path conventions used by libvirt `vpx://` connections.
  ///
  /// See: &lt;https://libvirt.org/drvesx.html&gt;
  late final pulumi.Output<String?> vmwareDataCenterPath;
  /// Configures Xen-specific command-line passthrough to the qemu device model, using the Xen XML namespace for additional arguments.
  late final pulumi.Output<DomainXenCommandline?> xenCommandline;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_index_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    autostart = registerOutput<bool?>('autostart');
    bhyveCommandline = registerOutput<DomainBhyveCommandline?>('bhyveCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainBhyveCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockIoTune = registerOutput<DomainBlockIoTune?>('blockIoTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainBlockIoTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootloader = registerOutput<String?>('bootloader');
    bootloaderArgs = registerOutput<String?>('bootloaderArgs');
    clock = registerOutput<DomainClock?>('clock', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainClock.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpu = registerOutput<DomainCpu?>('cpu', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCpu.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuTune = registerOutput<DomainCpuTune?>('cpuTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCpuTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    create = registerOutput<DomainCreate?>('create', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCreate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentMemory = registerOutput<double?>('currentMemory');
    currentMemoryUnit = registerOutput<String?>('currentMemoryUnit');
    defaultIoThread = registerOutput<DomainDefaultIoThread?>('defaultIoThread', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDefaultIoThread.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    destroy = registerOutput<DomainDestroy?>('destroy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDestroy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    devices = registerOutput<DomainDevices?>('devices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDevices.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainId = registerOutput<double>('domainId');
    features = registerOutput<DomainFeatures?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    genId = registerOutput<String?>('genId');
    hwuuid = registerOutput<String?>('hwuuid');
    idMap = registerOutput<DomainIdMap?>('idMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIdMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioThreadIDs = registerOutput<DomainIoThreadIDs?>('ioThreadIDs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIoThreadIDs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioThreads = registerOutput<double?>('ioThreads');
    keyWrap = registerOutput<DomainKeyWrap?>('keyWrap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainKeyWrap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    launchSecurity = registerOutput<DomainLaunchSecurity?>('launchSecurity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainLaunchSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lxcNamespace = registerOutput<DomainLxcNamespace?>('lxcNamespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainLxcNamespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumMemory = registerOutput<double?>('maximumMemory');
    maximumMemorySlots = registerOutput<double?>('maximumMemorySlots');
    maximumMemoryUnit = registerOutput<String?>('maximumMemoryUnit');
    memory = registerOutput<double?>('memory');
    memoryBacking = registerOutput<DomainMemoryBacking?>('memoryBacking', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMemoryBacking.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryDumpCore = registerOutput<String?>('memoryDumpCore');
    memoryTune = registerOutput<DomainMemoryTune?>('memoryTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMemoryTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryUnit = registerOutput<String?>('memoryUnit');
    metadata = registerOutput<DomainMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    numaTune = registerOutput<DomainNumaTune?>('numaTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNumaTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onCrash = registerOutput<String?>('onCrash');
    onPoweroff = registerOutput<String?>('onPoweroff');
    onReboot = registerOutput<String?>('onReboot');
    os = registerOutput<DomainOs?>('os', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainOs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    perf = registerOutput<DomainPerf?>('perf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPerf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pm = registerOutput<DomainPm?>('pm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPm.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuCapabilities = registerOutput<DomainQemuCapabilities?>('qemuCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuCommandline = registerOutput<DomainQemuCommandline?>('qemuCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuDeprecation = registerOutput<DomainQemuDeprecation?>('qemuDeprecation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuDeprecation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuOverride = registerOutput<DomainQemuOverride?>('qemuOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuOverride.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<DomainResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    running = registerOutput<bool?>('running');
    secLabels = registerOutput<List<Map<String, dynamic>>?>('secLabels');
    sysInfos = registerOutput<List<Map<String, dynamic>>?>('sysInfos');
    throttleGroups = registerOutput<DomainThrottleGroups?>('throttleGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainThrottleGroups.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
    update = registerOutput<DomainUpdate?>('update', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    vcpu = registerOutput<double?>('vcpu');
    vcpuCpuset = registerOutput<String?>('vcpuCpuset');
    vcpuCurrent = registerOutput<double?>('vcpuCurrent');
    vcpuPlacement = registerOutput<String?>('vcpuPlacement');
    vcpus = registerOutput<DomainVcpus?>('vcpus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainVcpus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmwareDataCenterPath = registerOutput<String?>('vmwareDataCenterPath');
    xenCommandline = registerOutput<DomainXenCommandline?>('xenCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainXenCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autostart = registerOutput<bool?>('autostart');
    bhyveCommandline = registerOutput<DomainBhyveCommandline?>('bhyveCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainBhyveCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockIoTune = registerOutput<DomainBlockIoTune?>('blockIoTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainBlockIoTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootloader = registerOutput<String?>('bootloader');
    bootloaderArgs = registerOutput<String?>('bootloaderArgs');
    clock = registerOutput<DomainClock?>('clock', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainClock.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpu = registerOutput<DomainCpu?>('cpu', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCpu.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuTune = registerOutput<DomainCpuTune?>('cpuTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCpuTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    create = registerOutput<DomainCreate?>('create', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCreate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentMemory = registerOutput<double?>('currentMemory');
    currentMemoryUnit = registerOutput<String?>('currentMemoryUnit');
    defaultIoThread = registerOutput<DomainDefaultIoThread?>('defaultIoThread', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDefaultIoThread.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    destroy = registerOutput<DomainDestroy?>('destroy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDestroy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    devices = registerOutput<DomainDevices?>('devices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDevices.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainId = registerOutput<double>('domainId');
    features = registerOutput<DomainFeatures?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    genId = registerOutput<String?>('genId');
    hwuuid = registerOutput<String?>('hwuuid');
    idMap = registerOutput<DomainIdMap?>('idMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIdMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioThreadIDs = registerOutput<DomainIoThreadIDs?>('ioThreadIDs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIoThreadIDs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioThreads = registerOutput<double?>('ioThreads');
    keyWrap = registerOutput<DomainKeyWrap?>('keyWrap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainKeyWrap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    launchSecurity = registerOutput<DomainLaunchSecurity?>('launchSecurity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainLaunchSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lxcNamespace = registerOutput<DomainLxcNamespace?>('lxcNamespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainLxcNamespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumMemory = registerOutput<double?>('maximumMemory');
    maximumMemorySlots = registerOutput<double?>('maximumMemorySlots');
    maximumMemoryUnit = registerOutput<String?>('maximumMemoryUnit');
    memory = registerOutput<double?>('memory');
    memoryBacking = registerOutput<DomainMemoryBacking?>('memoryBacking', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMemoryBacking.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryDumpCore = registerOutput<String?>('memoryDumpCore');
    memoryTune = registerOutput<DomainMemoryTune?>('memoryTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMemoryTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryUnit = registerOutput<String?>('memoryUnit');
    metadata = registerOutput<DomainMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    numaTune = registerOutput<DomainNumaTune?>('numaTune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNumaTune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onCrash = registerOutput<String?>('onCrash');
    onPoweroff = registerOutput<String?>('onPoweroff');
    onReboot = registerOutput<String?>('onReboot');
    os = registerOutput<DomainOs?>('os', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainOs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    perf = registerOutput<DomainPerf?>('perf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPerf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pm = registerOutput<DomainPm?>('pm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainPm.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuCapabilities = registerOutput<DomainQemuCapabilities?>('qemuCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuCommandline = registerOutput<DomainQemuCommandline?>('qemuCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuDeprecation = registerOutput<DomainQemuDeprecation?>('qemuDeprecation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuDeprecation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qemuOverride = registerOutput<DomainQemuOverride?>('qemuOverride', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainQemuOverride.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<DomainResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    running = registerOutput<bool?>('running');
    secLabels = registerOutput<List<Map<String, dynamic>>?>('secLabels');
    sysInfos = registerOutput<List<Map<String, dynamic>>?>('sysInfos');
    throttleGroups = registerOutput<DomainThrottleGroups?>('throttleGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainThrottleGroups.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
    update = registerOutput<DomainUpdate?>('update', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    vcpu = registerOutput<double?>('vcpu');
    vcpuCpuset = registerOutput<String?>('vcpuCpuset');
    vcpuCurrent = registerOutput<double?>('vcpuCurrent');
    vcpuPlacement = registerOutput<String?>('vcpuPlacement');
    vcpus = registerOutput<DomainVcpus?>('vcpus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainVcpus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmwareDataCenterPath = registerOutput<String?>('vmwareDataCenterPath');
    xenCommandline = registerOutput<DomainXenCommandline?>('xenCommandline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainXenCommandline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
