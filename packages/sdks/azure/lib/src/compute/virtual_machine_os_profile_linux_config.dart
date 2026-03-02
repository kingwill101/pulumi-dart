// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_os_profile_linux_config_ssh_key.dart';

class VirtualMachineOsProfileLinuxConfig {
  /// Specifies whether password authentication should be disabled. If set to `false`, an `admin_password` must be specified.
  final pulumi.Input<bool> disablePasswordAuthentication;
  /// One or more `ssh_keys` blocks as defined below. This field is required if `disable_password_authentication` is set to `true`.
  final pulumi.Input<List<VirtualMachineOsProfileLinuxConfigSshKey>>? sshKeys;

  /// Creates a new [VirtualMachineOsProfileLinuxConfig].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled. If set to `false`, an `admin_password` must be specified.
  /// [sshKeys] One or more `ssh_keys` blocks as defined below. This field is required if `disable_password_authentication` is set to `true`.
  VirtualMachineOsProfileLinuxConfig({
    required this.disablePasswordAuthentication,
    this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': disablePasswordAuthentication,
      'sshKeys': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineOsProfileLinuxConfigSshKey>, List<Map<String, dynamic>>>(sshKeys, (value) => pulumi.Input.encodeList<VirtualMachineOsProfileLinuxConfigSshKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineOsProfileLinuxConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileLinuxConfig(
      disablePasswordAuthentication: (map['disablePasswordAuthentication'] as bool).input(),
      sshKeys: map['sshKeys'] == null ? null : (pulumi.Input.decodeList<VirtualMachineOsProfileLinuxConfigSshKey>(map['sshKeys']!, (value) => VirtualMachineOsProfileLinuxConfigSshKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

