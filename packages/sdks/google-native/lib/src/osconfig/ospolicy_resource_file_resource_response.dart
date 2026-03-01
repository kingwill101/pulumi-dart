// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response.dart';

/// A resource that manages the state of a file.
class OSPolicyResourceFileResourceResponse {
  /// A a file with this content. The size of the content is limited to 32KiB.
  final String content;
  /// A remote or local source.
  final OSPolicyResourceFileResponse file;
  /// The absolute path of the file within the VM.
  final String path;
  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final String permissions;
  /// Desired state of the file.
  final String state;

  /// Creates a new [OSPolicyResourceFileResourceResponse].
  /// [content] A a file with this content. The size of the content is limited to 32KiB.
  /// [file] A remote or local source.
  /// [path] The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  /// [state] Desired state of the file.
  OSPolicyResourceFileResourceResponse({
    required this.content,
    required this.file,
    required this.path,
    required this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'file': file.toMap(),
      'path': path,
      'permissions': permissions,
      'state': state,
    };
  }

  factory OSPolicyResourceFileResourceResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResourceResponse(
      content: map['content'] as String,
      file: OSPolicyResourceFileResponse.fromMap((map['file'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      permissions: map['permissions'] as String,
      state: map['state'] as String,
    );
  }
}

