// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineExternalRuntimeOptionsVolumeMount {
  /// The absolute path within the container where the volume should be
  /// mounted. For example, `/mnt/data`.
  final pulumi.Input<String> mountPath;
  /// The absolute path of the source to be mounted. Only Google Cloud
  /// Storage buckets or folders are currently supported. For example,
  /// `gs://my-bucket` for a Cloud Storage bucket, or
  /// `gs://my-bucket/folder1/folder2` for a Cloud Storage folder.
  final pulumi.Input<String> sourcePath;

  /// Creates a new [RoutineExternalRuntimeOptionsVolumeMount].
  /// [mountPath] The absolute path within the container where the volume should be
  /// [sourcePath] The absolute path of the source to be mounted. Only Google Cloud
  const RoutineExternalRuntimeOptionsVolumeMount({
    required this.mountPath,
    required this.sourcePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'sourcePath': sourcePath,
    };
  }

  factory RoutineExternalRuntimeOptionsVolumeMount.fromMap(Map<String, dynamic> map) {
    return RoutineExternalRuntimeOptionsVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      sourcePath: pulumi.Input.fromValue(map['sourcePath'] as String),
    );
  }
}
