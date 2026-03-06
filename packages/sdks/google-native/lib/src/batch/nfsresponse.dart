// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an NFS volume.
class NFSResponse {
  /// Remote source path exported from the NFS, e.g., "/share".
  final pulumi.Input<String> remotePath;
  /// The IP address of the NFS.
  final pulumi.Input<String> server;

  /// Creates a new [NFSResponse].
  /// [remotePath] Remote source path exported from the NFS, e.g., "/share".
  /// [server] The IP address of the NFS.
  const NFSResponse({
    required this.remotePath,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePath': remotePath,
      'server': server,
    };
  }

  factory NFSResponse.fromMap(Map<String, dynamic> map) {
    return NFSResponse(
      remotePath: pulumi.Input.fromValue(map['remotePath'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}

