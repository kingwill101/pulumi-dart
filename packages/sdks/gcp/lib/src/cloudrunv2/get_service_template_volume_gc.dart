// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateVolumeGc {
  /// GCS Bucket name
  final pulumi.Input<String> bucket;
  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final pulumi.Input<List<String>> mountOptions;
  /// If true, mount the GCS bucket as read-only
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetServiceTemplateVolumeGc].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  GetServiceTemplateVolumeGc({
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

  factory GetServiceTemplateVolumeGc.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeGc(
      bucket: (map['bucket'] as String).input(),
      mountOptions: ((map['mountOptions'] as List).cast<String>()).input(),
      readOnly: (map['readOnly'] as bool).input(),
    );
  }
}

