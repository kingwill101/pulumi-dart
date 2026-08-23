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
  const NFS({
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
      remotePath: (() { final guardedValue = map['remotePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
