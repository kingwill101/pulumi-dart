// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecLustreMount {
  /// The name of the Lustre filesystem.
  final pulumi.Input<String> filesystem;
  /// IP address of the Lustre instance.
  final pulumi.Input<String> instanceIp;
  /// Destination mount path. The Lustre file system will be mounted for the user under /mnt/lustre/&lt;mount_point&gt;.
  final pulumi.Input<String> mountPoint;
  /// The unique identifier of the Lustre volume.
  final pulumi.Input<String> volumeHandle;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecLustreMount].
  /// [filesystem] The name of the Lustre filesystem.
  /// [instanceIp] IP address of the Lustre instance.
  /// [mountPoint] Destination mount path. The Lustre file system will be mounted for the user under /mnt/lustre/&lt;mount_point&gt;.
  /// [volumeHandle] The unique identifier of the Lustre volume.
  const AiCustomJobJobSpecWorkerPoolSpecLustreMount({
    required this.filesystem,
    required this.instanceIp,
    required this.mountPoint,
    required this.volumeHandle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystem': filesystem,
      'instanceIp': instanceIp,
      'mountPoint': mountPoint,
      'volumeHandle': volumeHandle,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecLustreMount.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecLustreMount(
      filesystem: pulumi.Input.fromValue(map['filesystem'] as String),
      instanceIp: pulumi.Input.fromValue(map['instanceIp'] as String),
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
      volumeHandle: pulumi.Input.fromValue(map['volumeHandle'] as String),
    );
  }
}
