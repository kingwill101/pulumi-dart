// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a scaling mechanism for adding or removing instances of stateless service partition.
class PartitionInstanceCountScaleMechanismResponse {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'ScalePartitionInstanceCount'.
  final pulumi.Input<String> kind;
  /// Maximum number of instances of the partition.
  final pulumi.Input<int> maxInstanceCount;
  /// Minimum number of instances of the partition.
  final pulumi.Input<int> minInstanceCount;
  /// The number of instances to add or remove during a scaling operation.
  final pulumi.Input<int> scaleIncrement;

  /// Creates a new [PartitionInstanceCountScaleMechanismResponse].
  /// [kind] Enumerates the ways that a service can be partitioned.
  /// [maxInstanceCount] Maximum number of instances of the partition.
  /// [minInstanceCount] Minimum number of instances of the partition.
  /// [scaleIncrement] The number of instances to add or remove during a scaling operation.
  const PartitionInstanceCountScaleMechanismResponse({
    required this.kind,
    required this.maxInstanceCount,
    required this.minInstanceCount,
    required this.scaleIncrement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
      'scaleIncrement': scaleIncrement,
    };
  }

  factory PartitionInstanceCountScaleMechanismResponse.fromMap(Map<String, dynamic> map) {
    return PartitionInstanceCountScaleMechanismResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
      scaleIncrement: pulumi.Input.fromValue(map['scaleIncrement'] as int),
    );
  }
}

