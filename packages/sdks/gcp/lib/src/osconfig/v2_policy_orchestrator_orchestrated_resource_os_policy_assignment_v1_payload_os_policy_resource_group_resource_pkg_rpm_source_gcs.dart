// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs {
  /// Required. Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;

  /// Generation number of the Cloud Storage object.
  final pulumi.Input<String>? generation;

  /// Required. Name of the Cloud Storage object.
  final pulumi.Input<String> object_;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs].
  /// [bucket] Required. Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object_] Required. Name of the Cloud Storage object.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs({
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

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
