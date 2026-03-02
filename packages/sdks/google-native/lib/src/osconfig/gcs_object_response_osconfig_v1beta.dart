// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Storage object representation.
class GcsObjectResponseOsconfigV1beta {
  /// Bucket of the Google Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final pulumi.Input<String> generationNumber;
  /// Name of the Google Cloud Storage object.
  final pulumi.Input<String> object;

  /// Creates a new [GcsObjectResponseOsconfigV1beta].
  /// [bucket] Bucket of the Google Cloud Storage object.
  /// [generationNumber] Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object] Name of the Google Cloud Storage object.
  GcsObjectResponseOsconfigV1beta({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generationNumber': generationNumber,
      'object': object,
    };
  }

  factory GcsObjectResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return GcsObjectResponseOsconfigV1beta(
      bucket: (map['bucket'] as String).input(),
      generationNumber: (map['generationNumber'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

