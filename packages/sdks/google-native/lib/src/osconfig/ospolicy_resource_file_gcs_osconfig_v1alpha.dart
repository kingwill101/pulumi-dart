// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcsOsconfigV1alpha {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object.
  final pulumi.Input<String>? generation;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object_;

  /// Creates a new [OSPolicyResourceFileGcsOsconfigV1alpha].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object_] Name of the Cloud Storage object.
  const OSPolicyResourceFileGcsOsconfigV1alpha({
    required this.bucket,
    this.generation,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object_,
    };
  }

  factory OSPolicyResourceFileGcsOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileGcsOsconfigV1alpha(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
