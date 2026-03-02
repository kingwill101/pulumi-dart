// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcsResponse {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object.
  final pulumi.Input<String> generation;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object;

  /// Creates a new [OSPolicyResourceFileGcsResponse].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OSPolicyResourceFileGcsResponse({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object,
    };
  }

  factory OSPolicyResourceFileGcsResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileGcsResponse(
      bucket: (map['bucket'] as String).input(),
      generation: (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

