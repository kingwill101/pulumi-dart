// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_os_profile_linux_config_ssh_key.dart';

class ScaleSetOsProfileLinuxConfig {
  /// Specifies whether password authentication should be disabled. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// One or more `ssh_keys` blocks as defined below.
  ///
  /// > **Note:** Please note that the only allowed `path` is `/home/<username>/.ssh/authorized_keys` due to a limitation of Azure.
  ///
  /// > **NOTE:** At least one `ssh_keys` block is required if `disable_password_authentication` is set to `true`.
  final pulumi.Input<List<ScaleSetOsProfileLinuxConfigSshKey>>? sshKeys;

  /// Creates a new [ScaleSetOsProfileLinuxConfig].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled. Defaults to `false`. Changing this forces a new resource to be created.
  /// [sshKeys] One or more `ssh_keys` blocks as defined below.
  ScaleSetOsProfileLinuxConfig({
    this.disablePasswordAuthentication,
    this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'sshKeys': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetOsProfileLinuxConfigSshKey>, List<Map<String, dynamic>>>(sshKeys, (value) => pulumi.Input.encodeList<ScaleSetOsProfileLinuxConfigSshKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleSetOsProfileLinuxConfig.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileLinuxConfig(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : (map['disablePasswordAuthentication'] as bool).input(),
      sshKeys: map['sshKeys'] == null ? null : (pulumi.Input.decodeList<ScaleSetOsProfileLinuxConfigSshKey>(map['sshKeys'], (value) => ScaleSetOsProfileLinuxConfigSshKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

