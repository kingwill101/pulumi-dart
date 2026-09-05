// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_acpi.dart';
import 'domain_os_bios.dart';
import 'domain_os_boot_device.dart';
import 'domain_os_boot_menu.dart';
import 'domain_os_firmware_info.dart';
import 'domain_os_init_env.dart';
import 'domain_os_nv_ram.dart';
import 'domain_os_sm_bios.dart';
import 'domain_os_var_store.dart';

class DomainOs {
  /// Enables or disables the ACPI (Advanced Configuration and Power Interface) support for the domain.
  final pulumi.Input<DomainOsAcpi?>? acpi;
  /// Configures BIOS settings for the domain, influencing its boot process and environment settings.
  final pulumi.Input<DomainOsBios?>? bios;
  /// Sets the boot devices that the domain uses during the boot process.
  final pulumi.Input<List<DomainOsBootDevice>?>? bootDevices;
  /// Configures the settings of the boot menu presented during startup.
  final pulumi.Input<DomainOsBootMenu?>? bootMenu;
  /// Provides additional command line arguments to pass to the guest OS kernel at boot.
  final pulumi.Input<String?>? cmdline;
  /// Specifies the device tree blob file to use for initializing the guest's device tree.
  final pulumi.Input<String?>? dtb;
  /// Defines the firmware configuration for the domain, such as BIOS or UEFI.
  final pulumi.Input<String?>? firmware;
  /// Contains information about the specific features of the firmware being used.
  final pulumi.Input<DomainOsFirmwareInfo?>? firmwareInfo;
  /// Specifies the init binary to execute when booting the domain in container mode.
  final pulumi.Input<String?>? init;
  /// Configures additional arguments to be passed to the init binary during boot.
  final pulumi.Input<List<String>?>? initArgs;
  /// Sets the directory where the init binary resides.
  final pulumi.Input<String?>? initDir;
  /// Configures environment variables to pass to the init process of the domain.
  final pulumi.Input<List<DomainOsInitEnv>?>? initEnvs;
  /// Sets the group that the init process should run under.
  final pulumi.Input<String?>? initGroup;
  /// Configures the user that the init process will run as within the domain.
  final pulumi.Input<String?>? initUser;
  /// Specifies the initial ramdisk image to be used at boot for the domain.
  final pulumi.Input<String?>? initrd;
  /// Sets the kernel image to boot into the domain.
  final pulumi.Input<String?>? kernel;
  /// Specifies the path to the bootloader or firmware loader for the domain.
  final pulumi.Input<String?>? loader;
  /// Indicates the format type of the loader (e.g., 'rom', 'elf').
  final pulumi.Input<String?>? loaderFormat;
  /// Configures whether the loader is mounted readonly or not.
  final pulumi.Input<String?>? loaderReadonly;
  /// Sets whether the loader operates in secure mode.
  final pulumi.Input<String?>? loaderSecure;
  /// Configures the loader to operate in stateless mode.
  final pulumi.Input<String?>? loaderStateless;
  /// Specifies the type of the loader (e.g., BIOS, UEFI).
  final pulumi.Input<String?>? loaderType;
  /// Defines configurations for the non-volatile RAM (NVRAM) settings for the domain.
  final pulumi.Input<DomainOsNvRam?>? nvRam;
  /// Configures the shim for the operating system in the domain.
  final pulumi.Input<String?>? shim;
  /// Configures the SMBIOS settings for the domain's operating system.
  final pulumi.Input<DomainOsSmBios?>? smBios;
  /// Specifies the type of operating system to be used by the domain.
  final pulumi.Input<String?>? type;
  /// Sets the architecture type for the operating system.
  final pulumi.Input<String?>? typeArch;
  /// Defines the machine type associated with the operating system.
  final pulumi.Input<String?>? typeMachine;
  final pulumi.Input<DomainOsVarStore?>? varStore;

  /// Creates a new [DomainOs].
  /// [acpi] Enables or disables the ACPI (Advanced Configuration and Power Interface) support for the domain.
  /// [bios] Configures BIOS settings for the domain, influencing its boot process and environment settings.
  /// [bootDevices] Sets the boot devices that the domain uses during the boot process.
  /// [bootMenu] Configures the settings of the boot menu presented during startup.
  /// [cmdline] Provides additional command line arguments to pass to the guest OS kernel at boot.
  /// [dtb] Specifies the device tree blob file to use for initializing the guest's device tree.
  /// [firmware] Defines the firmware configuration for the domain, such as BIOS or UEFI.
  /// [firmwareInfo] Contains information about the specific features of the firmware being used.
  /// [init] Specifies the init binary to execute when booting the domain in container mode.
  /// [initArgs] Configures additional arguments to be passed to the init binary during boot.
  /// [initDir] Sets the directory where the init binary resides.
  /// [initEnvs] Configures environment variables to pass to the init process of the domain.
  /// [initGroup] Sets the group that the init process should run under.
  /// [initUser] Configures the user that the init process will run as within the domain.
  /// [initrd] Specifies the initial ramdisk image to be used at boot for the domain.
  /// [kernel] Sets the kernel image to boot into the domain.
  /// [loader] Specifies the path to the bootloader or firmware loader for the domain.
  /// [loaderFormat] Indicates the format type of the loader (e.g., 'rom', 'elf').
  /// [loaderReadonly] Configures whether the loader is mounted readonly or not.
  /// [loaderSecure] Sets whether the loader operates in secure mode.
  /// [loaderStateless] Configures the loader to operate in stateless mode.
  /// [loaderType] Specifies the type of the loader (e.g., BIOS, UEFI).
  /// [nvRam] Defines configurations for the non-volatile RAM (NVRAM) settings for the domain.
  /// [shim] Configures the shim for the operating system in the domain.
  /// [smBios] Configures the SMBIOS settings for the domain's operating system.
  /// [type] Specifies the type of operating system to be used by the domain.
  /// [typeArch] Sets the architecture type for the operating system.
  /// [typeMachine] Defines the machine type associated with the operating system.
  /// [varStore] Optional.
  const DomainOs({
    this.acpi,
    this.bios,
    this.bootDevices,
    this.bootMenu,
    this.cmdline,
    this.dtb,
    this.firmware,
    this.firmwareInfo,
    this.init,
    this.initArgs,
    this.initDir,
    this.initEnvs,
    this.initGroup,
    this.initUser,
    this.initrd,
    this.kernel,
    this.loader,
    this.loaderFormat,
    this.loaderReadonly,
    this.loaderSecure,
    this.loaderStateless,
    this.loaderType,
    this.nvRam,
    this.shim,
    this.smBios,
    this.type,
    this.typeArch,
    this.typeMachine,
    this.varStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainOsAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'bios': ?pulumi.Input.mapOptionalInputValue<DomainOsBios, Map<String, dynamic>>(bios, (value) => value.toMap()),
      'bootDevices': ?pulumi.Input.mapOptionalInputValue<List<DomainOsBootDevice>, List<Map<String, dynamic>>>(bootDevices, (value) => pulumi.Input.encodeList<DomainOsBootDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootMenu': ?pulumi.Input.mapOptionalInputValue<DomainOsBootMenu, Map<String, dynamic>>(bootMenu, (value) => value.toMap()),
      'cmdline': ?cmdline,
      'dtb': ?dtb,
      'firmware': ?firmware,
      'firmwareInfo': ?pulumi.Input.mapOptionalInputValue<DomainOsFirmwareInfo, Map<String, dynamic>>(firmwareInfo, (value) => value.toMap()),
      'init': ?init,
      'initArgs': ?initArgs,
      'initDir': ?initDir,
      'initEnvs': ?pulumi.Input.mapOptionalInputValue<List<DomainOsInitEnv>, List<Map<String, dynamic>>>(initEnvs, (value) => pulumi.Input.encodeList<DomainOsInitEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initGroup': ?initGroup,
      'initUser': ?initUser,
      'initrd': ?initrd,
      'kernel': ?kernel,
      'loader': ?loader,
      'loaderFormat': ?loaderFormat,
      'loaderReadonly': ?loaderReadonly,
      'loaderSecure': ?loaderSecure,
      'loaderStateless': ?loaderStateless,
      'loaderType': ?loaderType,
      'nvRam': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRam, Map<String, dynamic>>(nvRam, (value) => value.toMap()),
      'shim': ?shim,
      'smBios': ?pulumi.Input.mapOptionalInputValue<DomainOsSmBios, Map<String, dynamic>>(smBios, (value) => value.toMap()),
      'type': ?type,
      'typeArch': ?typeArch,
      'typeMachine': ?typeMachine,
      'varStore': ?pulumi.Input.mapOptionalInputValue<DomainOsVarStore, Map<String, dynamic>>(varStore, (value) => value.toMap()),
    };
  }

  factory DomainOs.fromMap(Map<String, dynamic> map) {
    return DomainOs(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bios: (() { final guardedValue = map['bios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsBios.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDevices: (() { final guardedValue = map['bootDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainOsBootDevice>(guardedValue, (value) => DomainOsBootDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootMenu: (() { final guardedValue = map['bootMenu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsBootMenu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cmdline: (() { final guardedValue = map['cmdline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dtb: (() { final guardedValue = map['dtb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firmware: (() { final guardedValue = map['firmware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firmwareInfo: (() { final guardedValue = map['firmwareInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsFirmwareInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      init: (() { final guardedValue = map['init']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initArgs: (() { final guardedValue = map['initArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      initDir: (() { final guardedValue = map['initDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initEnvs: (() { final guardedValue = map['initEnvs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainOsInitEnv>(guardedValue, (value) => DomainOsInitEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initGroup: (() { final guardedValue = map['initGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initUser: (() { final guardedValue = map['initUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initrd: (() { final guardedValue = map['initrd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kernel: (() { final guardedValue = map['kernel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loader: (() { final guardedValue = map['loader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderFormat: (() { final guardedValue = map['loaderFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderReadonly: (() { final guardedValue = map['loaderReadonly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderSecure: (() { final guardedValue = map['loaderSecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderStateless: (() { final guardedValue = map['loaderStateless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderType: (() { final guardedValue = map['loaderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nvRam: (() { final guardedValue = map['nvRam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shim: (() { final guardedValue = map['shim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smBios: (() { final guardedValue = map['smBios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsSmBios.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeArch: (() { final guardedValue = map['typeArch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeMachine: (() { final guardedValue = map['typeMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      varStore: (() { final guardedValue = map['varStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsVarStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
