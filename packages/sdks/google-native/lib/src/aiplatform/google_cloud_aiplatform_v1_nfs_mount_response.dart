// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a mount configuration for Network File System (NFS) to mount.
class GoogleCloudAiplatformV1NfsMountResponse {
  /// Destination mount path. The NFS will be mounted for the user under /mnt/nfs/
  final pulumi.Input<String> mountPoint;

  /// Source path exported from NFS server. Has to start with '/', and combined with the ip address, it indicates the source mount path in the form of `server:path`
  final pulumi.Input<String> path;

  /// IP address of the NFS server.
  final pulumi.Input<String> server;

  /// Creates a new [GoogleCloudAiplatformV1NfsMountResponse].
  /// [mountPoint] Destination mount path. The NFS will be mounted for the user under /mnt/nfs/
  /// [path] Source path exported from NFS server. Has to start with '/', and combined with the ip address, it indicates the source mount path in the form of `server:path`
  /// [server] IP address of the NFS server.
  GoogleCloudAiplatformV1NfsMountResponse({
    required this.mountPoint,
    required this.path,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoint': mountPoint,
      'path': path,
      'server': server,
    };
  }

  factory GoogleCloudAiplatformV1NfsMountResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1NfsMountResponse(
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
