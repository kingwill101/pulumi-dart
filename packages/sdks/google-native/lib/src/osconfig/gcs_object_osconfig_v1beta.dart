// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Storage object representation.
class GcsObjectOsconfigV1beta {
  /// Bucket of the Google Cloud Storage object.
  final pulumi.Input<String> bucket;

  /// Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final pulumi.Input<String> generationNumber;

  /// Name of the Google Cloud Storage object.
  final pulumi.Input<String> object_;

  /// Creates a new [GcsObjectOsconfigV1beta].
  /// [bucket] Bucket of the Google Cloud Storage object.
  /// [generationNumber] Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object_] Name of the Google Cloud Storage object.
  GcsObjectOsconfigV1beta({
    required this.bucket,
    required this.generationNumber,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generationNumber': generationNumber,
      'object': object_,
    };
  }

  factory GcsObjectOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return GcsObjectOsconfigV1beta(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generationNumber: pulumi.Input.fromValue(
        map['generationNumber'] as String,
      ),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
