// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file.dart';
import 'ospolicy_resource_file_resource_state.dart';

/// A resource that manages the state of a file.
class OSPolicyResourceFileResource {
  /// A a file with this content. The size of the content is limited to 32KiB.
  final pulumi.Input<String>? content;

  /// A remote or local source.
  final pulumi.Input<OSPolicyResourceFile>? file;

  /// The absolute path of the file within the VM.
  final pulumi.Input<String> path;

  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final pulumi.Input<String>? permissions;

  /// Desired state of the file.
  final pulumi.Input<OSPolicyResourceFileResourceState> state;

  /// Creates a new [OSPolicyResourceFileResource].
  /// [content] A a file with this content. The size of the content is limited to 32KiB.
  /// [file] A remote or local source.
  /// [path] The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  /// [state] Desired state of the file.
  OSPolicyResourceFileResource({
    this.content,
    this.file,
    required this.path,
    this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            OSPolicyResourceFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'path': path,
      'permissions': ?permissions,
      'state':
          pulumi.Input.mapInputValue<OSPolicyResourceFileResourceState, String>(
            state,
            (value) => value.wireValue,
          ),
    };
  }

  factory OSPolicyResourceFileResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResource(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OSPolicyResourceFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: pulumi.Input.fromValue(
        OSPolicyResourceFileResourceState.fromValue(map['state']! as String),
      ),
    );
  }
}
