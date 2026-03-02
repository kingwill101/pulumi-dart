// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an NFS volume.
class NFS {
  /// Remote source path exported from the NFS, e.g., "/share".
  final pulumi.Input<String>? remotePath;
  /// The IP address of the NFS.
  final pulumi.Input<String>? server;

  /// Creates a new [NFS].
  /// [remotePath] Remote source path exported from the NFS, e.g., "/share".
  /// [server] The IP address of the NFS.
  NFS({
    this.remotePath,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePath': ?remotePath,
      'server': ?server,
    };
  }

  factory NFS.fromMap(Map<String, dynamic> map) {
    return NFS(
      remotePath: map['remotePath'] == null ? null : (map['remotePath']! as String).input(),
      server: map['server'] == null ? null : (map['server']! as String).input(),
    );
  }
}

