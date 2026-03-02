// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object.
  final pulumi.Input<int>? generation;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs(
      bucket: (map['bucket'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      object: (map['object'] as String).input(),
    );
  }
}

