// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateVolumeGcs {
  /// GCS Bucket name
  final pulumi.Input<String> bucket;
  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final pulumi.Input<List<String>>? mountOptions;
  /// If true, mount the GCS bucket as read-only
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [WorkerPoolTemplateVolumeGcs].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  WorkerPoolTemplateVolumeGcs({
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
      bucket: (map['bucket'] as String).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions']! as List).cast<String>()).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
    );
  }
}

