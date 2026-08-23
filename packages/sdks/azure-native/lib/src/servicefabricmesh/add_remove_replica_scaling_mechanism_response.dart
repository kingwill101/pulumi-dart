// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the horizontal auto scaling mechanism that adds or removes replicas (containers or container groups).
class AddRemoveReplicaScalingMechanismResponse {
  /// Enumerates the mechanisms for auto scaling.
  /// Expected value is 'AddRemoveReplica'.
  final pulumi.Input<String> kind;
  /// Maximum number of containers (scale up won't be performed above this number).
  final pulumi.Input<int> maxCount;
  /// Minimum number of containers (scale down won't be performed below this number).
  final pulumi.Input<int> minCount;
  /// Each time auto scaling is performed, this number of containers will be added or removed.
  final pulumi.Input<int> scaleIncrement;

  /// Creates a new [AddRemoveReplicaScalingMechanismResponse].
  /// [kind] Enumerates the mechanisms for auto scaling.
  /// [maxCount] Maximum number of containers (scale up won't be performed above this number).
  /// [minCount] Minimum number of containers (scale down won't be performed below this number).
  /// [scaleIncrement] Each time auto scaling is performed, this number of containers will be added or removed.
  const AddRemoveReplicaScalingMechanismResponse({
    required this.kind,
    required this.maxCount,
    required this.minCount,
    required this.scaleIncrement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'maxCount': maxCount,
      'minCount': minCount,
      'scaleIncrement': scaleIncrement,
    };
  }

  factory AddRemoveReplicaScalingMechanismResponse.fromMap(Map<String, dynamic> map) {
    return AddRemoveReplicaScalingMechanismResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      maxCount: pulumi.Input.fromValue(map['maxCount'] as int),
      minCount: pulumi.Input.fromValue(map['minCount'] as int),
      scaleIncrement: pulumi.Input.fromValue(map['scaleIncrement'] as int),
    );
  }
}
