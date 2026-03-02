// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_provision_provision_args_doc}
/// The set of arguments for Provision.
/// {@endtemplate}
/// {@macro pulumi_sys_provision_provision_args_doc}
class ProvisionArgs {
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? cpuRatio;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? diskRatio;
  final pulumi.Input<String>? fullPath;
  /// Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to `dedicated` requires setting all others to `none`. Setting the level of a module to `none` means the module is not activated.
  /// default is `nominal`
  /// possible options:
  /// * nominal
  /// * minimum
  /// * none
  /// * dedicated
  final pulumi.Input<String>? level;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? memoryRatio;
  /// Name of module to provision in BIG-IP.
  /// possible options:
  /// * afm
  /// * am
  /// * apm
  /// * cgnat
  /// * asm
  /// * avr
  /// * dos
  /// * fps
  /// * gtm
  /// * ilx
  /// * lc
  /// * ltm
  /// * pem
  /// * sslo
  /// * swg
  /// * urldb
  final pulumi.Input<String> name;

  /// Creates a new [ProvisionArgs].
  /// [cpuRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [diskRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [fullPath] Optional.
  /// [level] Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to `dedicated` requires setting all others to `none`. Setting the level of a module to `none` means the module is not activated.
  /// [memoryRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [name] Name of module to provision in BIG-IP.
  ProvisionArgs({
    this.cpuRatio,
    this.diskRatio,
    this.fullPath,
    this.level,
    this.memoryRatio,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuRatio': ?cpuRatio,
      'diskRatio': ?diskRatio,
      'fullPath': ?fullPath,
      'level': ?level,
      'memoryRatio': ?memoryRatio,
      'name': name,
    };
  }

  factory ProvisionArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionArgs(
      cpuRatio: map['cpuRatio'] == null ? null : (map['cpuRatio']! as int).input(),
      diskRatio: map['diskRatio'] == null ? null : (map['diskRatio']! as int).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      memoryRatio: map['memoryRatio'] == null ? null : (map['memoryRatio']! as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

