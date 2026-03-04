// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecVolumeCsi {
  /// Unique name representing the type of file system to be created. Cloud Run supports the following values:
  /// * gcsfuse.run.googleapis.com: Mount a Google Cloud Storage bucket using GCSFuse. This driver requires the
  /// run.googleapis.com/execution-environment annotation to be unset or set to "gen2"
  final pulumi.Input<String> driver;

  /// If true, all mounts created from this volume will be read-only.
  final pulumi.Input<bool> readOnly;

  /// Driver-specific attributes. The following options are supported for available drivers:
  /// * gcsfuse.run.googleapis.com
  /// * bucketName: The name of the Cloud Storage Bucket that backs this volume. The Cloud Run Service identity must have access to this bucket.
  final pulumi.Input<Map<String, String>> volumeAttributes;

  /// Creates a new [GetServiceTemplateSpecVolumeCsi].
  /// [driver] Unique name representing the type of file system to be created. Cloud Run supports the following values:
  /// [readOnly] If true, all mounts created from this volume will be read-only.
  /// [volumeAttributes] Driver-specific attributes. The following options are supported for available drivers:
  GetServiceTemplateSpecVolumeCsi({
    required this.driver,
    required this.readOnly,
    required this.volumeAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': driver,
      'readOnly': readOnly,
      'volumeAttributes': volumeAttributes,
    };
  }

  factory GetServiceTemplateSpecVolumeCsi.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeCsi(
      driver: pulumi.Input.fromValue(map['driver'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      volumeAttributes: pulumi.Input.fromValue(
        (map['volumeAttributes'] as Map).cast<String, String>(),
      ),
    );
  }
}
