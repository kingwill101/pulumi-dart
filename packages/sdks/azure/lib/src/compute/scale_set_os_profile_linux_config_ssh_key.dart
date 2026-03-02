// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfileLinuxConfigSshKey {
  /// The Public SSH Key which should be written to the `path` defined above.
  ///
  /// > **Note:** Azure only supports RSA SSH2 key signatures of at least 2048 bits in length
  ///
  /// > **NOTE:** Rather than defining this in-line you can source this from a local file using the `file` function - for example `key_data = file("~/.ssh/id_rsa.pub")`.
  final pulumi.Input<String>? keyData;
  /// The path of the destination file on the virtual machine
  ///
  /// > **NOTE:** Due to a limitation in the Azure VM Agent the only allowed `path` is `/home/{username}/.ssh/authorized_keys`.
  final pulumi.Input<String> path;

  /// Creates a new [ScaleSetOsProfileLinuxConfigSshKey].
  /// [keyData] The Public SSH Key which should be written to the `path` defined above.
  /// [path] The path of the destination file on the virtual machine
  ScaleSetOsProfileLinuxConfigSshKey({
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
      keyData: map['keyData'] == null ? null : (map['keyData'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

