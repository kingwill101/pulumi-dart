// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a scaling mechanism for adding or removing named partitions of a stateless service. Partition names are in the format '0','1'...'N-1'.
class AddRemoveIncrementalNamedPartitionScalingMechanism {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'AddRemoveIncrementalNamedPartition'.
  final pulumi.Input<String> kind;
  /// Maximum number of named partitions of the service.
  final pulumi.Input<int> maxPartitionCount;
  /// Minimum number of named partitions of the service.
  final pulumi.Input<int> minPartitionCount;
  /// The number of instances to add or remove during a scaling operation.
  final pulumi.Input<int> scaleIncrement;

  /// Creates a new [AddRemoveIncrementalNamedPartitionScalingMechanism].
  /// [kind] Enumerates the ways that a service can be partitioned.
  /// [maxPartitionCount] Maximum number of named partitions of the service.
  /// [minPartitionCount] Minimum number of named partitions of the service.
  /// [scaleIncrement] The number of instances to add or remove during a scaling operation.
  AddRemoveIncrementalNamedPartitionScalingMechanism({
    required this.kind,
    required this.maxPartitionCount,
    required this.minPartitionCount,
    required this.scaleIncrement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'maxPartitionCount': maxPartitionCount,
      'minPartitionCount': minPartitionCount,
      'scaleIncrement': scaleIncrement,
    };
  }

  factory AddRemoveIncrementalNamedPartitionScalingMechanism.fromMap(Map<String, dynamic> map) {
    return AddRemoveIncrementalNamedPartitionScalingMechanism(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      maxPartitionCount: pulumi.Input.fromValue(map['maxPartitionCount'] as int),
      minPartitionCount: pulumi.Input.fromValue(map['minPartitionCount'] as int),
      scaleIncrement: pulumi.Input.fromValue(map['scaleIncrement'] as int),
    );
  }
}

