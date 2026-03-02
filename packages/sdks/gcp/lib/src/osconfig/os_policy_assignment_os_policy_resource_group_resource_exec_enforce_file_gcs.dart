// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileGcs {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object.
  final pulumi.Input<int>? generation;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileGcs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileGcs(
      bucket: (map['bucket'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation']! as int).input(),
      object: (map['object'] as String).input(),
    );
  }
}

