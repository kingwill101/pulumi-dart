// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateVolumeGc {
  /// GCS Bucket name
  final pulumi.Input<String> bucket;

  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final pulumi.Input<List<String>> mountOptions;

  /// If true, mount the GCS bucket as read-only
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetWorkerPoolTemplateVolumeGc].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  GetWorkerPoolTemplateVolumeGc({
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

  factory GetWorkerPoolTemplateVolumeGc.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolumeGc(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      mountOptions: pulumi.Input.fromValue(
        (map['mountOptions'] as List).cast<String>(),
      ),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
    );
  }
}
