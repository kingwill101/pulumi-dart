// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecNfsMount {
  /// Destination mount path. The path must be absolute.
  final pulumi.Input<String> mountPoint;
  /// Source path exported from NFS database.
  final pulumi.Input<String> path;
  /// IP address of the NFS server.
  final pulumi.Input<String> server;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecNfsMount].
  /// [mountPoint] Destination mount path. The path must be absolute.
  /// [path] Source path exported from NFS database.
  /// [server] IP address of the NFS server.
  const AiCustomJobJobSpecWorkerPoolSpecNfsMount({
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

  factory AiCustomJobJobSpecWorkerPoolSpecNfsMount.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecNfsMount(
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
