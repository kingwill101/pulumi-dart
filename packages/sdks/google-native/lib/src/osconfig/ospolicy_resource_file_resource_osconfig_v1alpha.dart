// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_resource_state_osconfig_v1alpha.dart';

/// A resource that manages the state of a file.
class OSPolicyResourceFileResourceOsconfigV1alpha {
  /// A a file with this content. The size of the content is limited to 32KiB.
  final pulumi.Input<String>? content;
  /// A remote or local source.
  final pulumi.Input<OSPolicyResourceFileOsconfigV1alpha>? file;
  /// The absolute path of the file within the VM.
  final pulumi.Input<String> path;
  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final pulumi.Input<String>? permissions;
  /// Desired state of the file.
  final pulumi.Input<OSPolicyResourceFileResourceStateOsconfigV1alpha> state;

  /// Creates a new [OSPolicyResourceFileResourceOsconfigV1alpha].
  /// [content] A a file with this content. The size of the content is limited to 32KiB.
  /// [file] A remote or local source.
  /// [path] The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  /// [state] Desired state of the file.
  OSPolicyResourceFileResourceOsconfigV1alpha({
    this.content,
    this.file,
    required this.path,
    this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'file': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileOsconfigV1alpha, Map<String, dynamic>>(file, (value) => value.toMap()),
      'path': path,
      'permissions': ?permissions,
      'state': pulumi.Input.mapInputValue<OSPolicyResourceFileResourceStateOsconfigV1alpha, String>(state, (value) => value.value),
    };
  }

  factory OSPolicyResourceFileResourceOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResourceOsconfigV1alpha(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      file: map['file'] == null ? null : (OSPolicyResourceFileOsconfigV1alpha.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      path: (map['path'] as String).input(),
      permissions: map['permissions'] == null ? null : (map['permissions'] as String).input(),
      state: (OSPolicyResourceFileResourceStateOsconfigV1alpha.fromValue(map['state'] as String)).input(),
    );
  }
}

