// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAutoscalingConfigAutoscalingLimits {
  /// The maximum number of nodes for this specific replica.
  final pulumi.Input<int>? maxNodes;
  /// Specifies maximum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final pulumi.Input<int>? maxProcessingUnits;
  /// The minimum number of nodes for this specific replica.
  final pulumi.Input<int>? minNodes;
  /// Specifies minimum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000.
  final pulumi.Input<int>? minProcessingUnits;

  /// Creates a new [InstanceAutoscalingConfigAutoscalingLimits].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [maxProcessingUnits] Specifies maximum number of processing units allocated to the instance.
  /// [minNodes] The minimum number of nodes for this specific replica.
  /// [minProcessingUnits] Specifies minimum number of processing units allocated to the instance.
  InstanceAutoscalingConfigAutoscalingLimits({
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'maxProcessingUnits': ?maxProcessingUnits,
      'minNodes': ?minNodes,
      'minProcessingUnits': ?minProcessingUnits,
    };
  }

  factory InstanceAutoscalingConfigAutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAutoscalingLimits(
      maxNodes: map['maxNodes'] == null ? null : (map['maxNodes'] as int).input(),
      maxProcessingUnits: map['maxProcessingUnits'] == null ? null : (map['maxProcessingUnits'] as int).input(),
      minNodes: map['minNodes'] == null ? null : (map['minNodes'] as int).input(),
      minProcessingUnits: map['minProcessingUnits'] == null ? null : (map['minProcessingUnits'] as int).input(),
    );
  }
}

