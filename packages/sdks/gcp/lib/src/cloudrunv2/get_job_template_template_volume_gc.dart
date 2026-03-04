// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateVolumeGc {
  /// Name of the cloud storage bucket to back the volume. The resource service account must have permission to access the bucket.
  final pulumi.Input<String> bucket;

  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final pulumi.Input<List<String>> mountOptions;

  /// If true, mount this volume as read-only in all mounts. If false, mount this volume as read-write.
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetJobTemplateTemplateVolumeGc].
  /// [bucket] Name of the cloud storage bucket to back the volume. The resource service account must have permission to access the bucket.
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount this volume as read-only in all mounts. If false, mount this volume as read-write.
  GetJobTemplateTemplateVolumeGc({
    required this.bucket,
    required this.mountOptions,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'mountOptions': mountOptions,
      'readOnly': readOnly,
    };
  }

  factory GetJobTemplateTemplateVolumeGc.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolumeGc(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      mountOptions: pulumi.Input.fromValue(
        (map['mountOptions'] as List).cast<String>(),
      ),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
    );
  }
}
