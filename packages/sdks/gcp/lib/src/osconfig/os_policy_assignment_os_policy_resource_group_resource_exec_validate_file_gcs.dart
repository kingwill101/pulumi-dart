// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object.
  final pulumi.Input<int>? generation;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object_;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object_] Name of the Cloud Storage object.
  OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

