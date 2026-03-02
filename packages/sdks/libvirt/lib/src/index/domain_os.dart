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

class DomainOs {
  /// Enables or disables the ACPI (Advanced Configuration and Power Interface) support for the domain.
  final pulumi.Input<DomainOsAcpi>? acpi;
  /// Configures BIOS settings for the domain, influencing its boot process and environment settings.
  final pulumi.Input<DomainOsBios>? bios;
  /// Sets the boot devices that the domain uses during the boot process.
  final pulumi.Input<List<DomainOsBootDevice>>? bootDevices;
  /// Configures the settings of the boot menu presented during startup.
  final pulumi.Input<DomainOsBootMenu>? bootMenu;
  /// Provides additional command line arguments to pass to the guest OS kernel at boot.
  final pulumi.Input<String>? cmdline;
  /// Specifies the device tree blob file to use for initializing the guest's device tree.
  final pulumi.Input<String>? dtb;
  /// Defines the firmware configuration for the domain, such as BIOS or UEFI.
  final pulumi.Input<String>? firmware;
  /// Contains information about the specific features of the firmware being used.
  final pulumi.Input<DomainOsFirmwareInfo>? firmwareInfo;
  /// Specifies the init binary to execute when booting the domain in container mode.
  final pulumi.Input<String>? init;
  /// Configures additional arguments to be passed to the init binary during boot.
  final pulumi.Input<List<String>>? initArgs;
  /// Sets the directory where the init binary resides.
  final pulumi.Input<String>? initDir;
  /// Configures environment variables to pass to the init process of the domain.
  final pulumi.Input<List<DomainOsInitEnv>>? initEnvs;
  /// Sets the group that the init process should run under.
  final pulumi.Input<String>? initGroup;
  /// Configures the user that the init process will run as within the domain.
  final pulumi.Input<String>? initUser;
  /// Specifies the initial ramdisk image to be used at boot for the domain.
  final pulumi.Input<String>? initrd;
  /// Sets the kernel image to boot into the domain.
  final pulumi.Input<String>? kernel;
  /// Specifies the path to the bootloader or firmware loader for the domain.
  final pulumi.Input<String>? loader;
  /// Indicates the format type of the loader (e.g., 'rom', 'elf').
  final pulumi.Input<String>? loaderFormat;
  /// Configures whether the loader is mounted readonly or not.
  final pulumi.Input<String>? loaderReadonly;
  /// Sets whether the loader operates in secure mode.
  final pulumi.Input<String>? loaderSecure;
  /// Configures the loader to operate in stateless mode.
  final pulumi.Input<String>? loaderStateless;
  /// Specifies the type of the loader (e.g., BIOS, UEFI).
  final pulumi.Input<String>? loaderType;
  /// Defines configurations for the non-volatile RAM (NVRAM) settings for the domain.
  final pulumi.Input<DomainOsNvRam>? nvRam;
  /// Configures the shim for the operating system in the domain.
  final pulumi.Input<String>? shim;
  /// Configures the SMBIOS settings for the domain's operating system.
  final pulumi.Input<DomainOsSmBios>? smBios;
  /// Specifies the type of operating system to be used by the domain.
  final pulumi.Input<String>? type;
  /// Sets the architecture type for the operating system.
  final pulumi.Input<String>? typeArch;
  /// Defines the machine type associated with the operating system.
  final pulumi.Input<String>? typeMachine;

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
  DomainOs({
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
    };
  }

  factory DomainOs.fromMap(Map<String, dynamic> map) {
    return DomainOs(
      acpi: map['acpi'] == null ? null : (DomainOsAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      bios: map['bios'] == null ? null : (DomainOsBios.fromMap((map['bios']! as Map).cast<String, dynamic>())).input(),
      bootDevices: map['bootDevices'] == null ? null : (pulumi.Input.decodeList<DomainOsBootDevice>(map['bootDevices']!, (value) => DomainOsBootDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootMenu: map['bootMenu'] == null ? null : (DomainOsBootMenu.fromMap((map['bootMenu']! as Map).cast<String, dynamic>())).input(),
      cmdline: map['cmdline'] == null ? null : (map['cmdline']! as String).input(),
      dtb: map['dtb'] == null ? null : (map['dtb']! as String).input(),
      firmware: map['firmware'] == null ? null : (map['firmware']! as String).input(),
      firmwareInfo: map['firmwareInfo'] == null ? null : (DomainOsFirmwareInfo.fromMap((map['firmwareInfo']! as Map).cast<String, dynamic>())).input(),
      init: map['init'] == null ? null : (map['init']! as String).input(),
      initArgs: map['initArgs'] == null ? null : ((map['initArgs']! as List).cast<String>()).input(),
      initDir: map['initDir'] == null ? null : (map['initDir']! as String).input(),
      initEnvs: map['initEnvs'] == null ? null : (pulumi.Input.decodeList<DomainOsInitEnv>(map['initEnvs']!, (value) => DomainOsInitEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initGroup: map['initGroup'] == null ? null : (map['initGroup']! as String).input(),
      initUser: map['initUser'] == null ? null : (map['initUser']! as String).input(),
      initrd: map['initrd'] == null ? null : (map['initrd']! as String).input(),
      kernel: map['kernel'] == null ? null : (map['kernel']! as String).input(),
      loader: map['loader'] == null ? null : (map['loader']! as String).input(),
      loaderFormat: map['loaderFormat'] == null ? null : (map['loaderFormat']! as String).input(),
      loaderReadonly: map['loaderReadonly'] == null ? null : (map['loaderReadonly']! as String).input(),
      loaderSecure: map['loaderSecure'] == null ? null : (map['loaderSecure']! as String).input(),
      loaderStateless: map['loaderStateless'] == null ? null : (map['loaderStateless']! as String).input(),
      loaderType: map['loaderType'] == null ? null : (map['loaderType']! as String).input(),
      nvRam: map['nvRam'] == null ? null : (DomainOsNvRam.fromMap((map['nvRam']! as Map).cast<String, dynamic>())).input(),
      shim: map['shim'] == null ? null : (map['shim']! as String).input(),
      smBios: map['smBios'] == null ? null : (DomainOsSmBios.fromMap((map['smBios']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typeArch: map['typeArch'] == null ? null : (map['typeArch']! as String).input(),
      typeMachine: map['typeMachine'] == null ? null : (map['typeMachine']! as String).input(),
    );
  }
}

