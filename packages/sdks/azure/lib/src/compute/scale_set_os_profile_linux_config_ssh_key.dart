// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfileLinuxConfigSshKey {
  /// The Public SSH Key which should be written to the `path` defined above.
  ///
  /// &gt; **Note:** Azure only supports RSA SSH2 key signatures of at least 2048 bits in length
  ///
  /// &gt; **NOTE:** Rather than defining this in-line you can source this from a local file using the `file` function - for example `keyData = file("~/.ssh/id_rsa.pub")`.
  final pulumi.Input<String>? keyData;
  /// The path of the destination file on the virtual machine
  ///
  /// &gt; **NOTE:** Due to a limitation in the Azure VM Agent the only allowed `path` is `/home/{username}/.ssh/authorized_keys`.
  final pulumi.Input<String> path;

  /// Creates a new [ScaleSetOsProfileLinuxConfigSshKey].
  /// [keyData] The Public SSH Key which should be written to the `path` defined above.
  /// [path] The path of the destination file on the virtual machine
  const ScaleSetOsProfileLinuxConfigSshKey({
    this.keyData,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
      'path': path,
    };
  }

  factory ScaleSetOsProfileLinuxConfigSshKey.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileLinuxConfigSshKey(
      keyData: (() { final guardedValue = map['keyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
