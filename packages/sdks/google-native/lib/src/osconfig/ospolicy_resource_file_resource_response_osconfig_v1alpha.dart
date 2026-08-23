// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// A resource that manages the state of a file.
class OSPolicyResourceFileResourceResponseOsconfigV1alpha {
  /// A a file with this content. The size of the content is limited to 32KiB.
  final pulumi.Input<String> content;
  /// A remote or local source.
  final pulumi.Input<OSPolicyResourceFileResponseOsconfigV1alpha> file;
  /// The absolute path of the file within the VM.
  final pulumi.Input<String> path;
  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final pulumi.Input<String> permissions;
  /// Desired state of the file.
  final pulumi.Input<String> state;

  /// Creates a new [OSPolicyResourceFileResourceResponseOsconfigV1alpha].
  /// [content] A a file with this content. The size of the content is limited to 32KiB.
  /// [file] A remote or local source.
  /// [path] The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  /// [state] Desired state of the file.
  const OSPolicyResourceFileResourceResponseOsconfigV1alpha({
    required this.content,
    required this.file,
    required this.path,
    required this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'file': pulumi.Input.mapInputValue<OSPolicyResourceFileResponseOsconfigV1alpha, Map<String, dynamic>>(file, (value) => value.toMap()),
      'path': path,
      'permissions': permissions,
      'state': state,
    };
  }

  factory OSPolicyResourceFileResourceResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResourceResponseOsconfigV1alpha(
      content: pulumi.Input.fromValue(map['content'] as String),
      file: pulumi.Input.fromValue(OSPolicyResourceFileResponseOsconfigV1alpha.fromMap((map['file']! as Map).cast<String, dynamic>())),
      path: pulumi.Input.fromValue(map['path'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
