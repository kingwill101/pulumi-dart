// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateVolumeGcs {
  /// GCS Bucket name
  final pulumi.Input<String> bucket;
  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final pulumi.Input<List<String>?>? mountOptions;
  /// If true, mount the GCS bucket as read-only
  final pulumi.Input<bool?>? readOnly;

  /// Creates a new [WorkerPoolTemplateVolumeGcs].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  const WorkerPoolTemplateVolumeGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'mountOptions': ?mountOptions,
      'readOnly': ?readOnly,
    };
  }

  factory WorkerPoolTemplateVolumeGcs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolumeGcs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
