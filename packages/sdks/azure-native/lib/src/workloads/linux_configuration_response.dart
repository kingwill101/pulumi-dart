// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration_response.dart';
import 'ssh_key_pair_response.dart';

/// Specifies the Linux operating system settings on the virtual machine. For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
class LinuxConfigurationResponse {
  /// Specifies whether password authentication should be disabled.
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// The OS Type
  /// Expected value is 'Linux'.
  final pulumi.Input<String> osType;
  /// Specifies the ssh key configuration for a Linux OS. (This property is deprecated, please use 'sshKeyPair' instead)
  final pulumi.Input<SshConfigurationResponse>? ssh;
  /// The SSH Key-pair used to authenticate with the VM's.
  final pulumi.Input<SshKeyPairResponse>? sshKeyPair;

  /// Creates a new [LinuxConfigurationResponse].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled.
  /// [osType] The OS Type
  /// [ssh] Specifies the ssh key configuration for a Linux OS. (This property is deprecated, please use 'sshKeyPair' instead)
  /// [sshKeyPair] The SSH Key-pair used to authenticate with the VM's.
  const LinuxConfigurationResponse({
    this.disablePasswordAuthentication,
    required this.osType,
    this.ssh,
    this.sshKeyPair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'osType': osType,
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfigurationResponse, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'sshKeyPair': ?pulumi.Input.mapOptionalInputValue<SshKeyPairResponse, Map<String, dynamic>>(sshKeyPair, (value) => value.toMap()),
    };
  }

  factory LinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LinuxConfigurationResponse(
      disablePasswordAuthentication: (() { final guardedValue = map['disablePasswordAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SshConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshKeyPair: (() { final guardedValue = map['sshKeyPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SshKeyPairResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

