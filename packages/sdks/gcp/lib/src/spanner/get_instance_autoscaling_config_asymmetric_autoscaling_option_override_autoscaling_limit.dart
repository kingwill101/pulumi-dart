// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit {
  /// The maximum number of nodes for this specific replica.
  final pulumi.Input<int> maxNodes;
  /// The maximum number of processing units for this specific replica.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final pulumi.Input<int> maxProcessingUnits;
  /// The minimum number of nodes for this specific replica.
  final pulumi.Input<int> minNodes;
  /// The minimum number of processing units for this specific replica.
  /// If set, this number should be multiples of 1000.
  final pulumi.Input<int> minProcessingUnits;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [maxProcessingUnits] The maximum number of processing units for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  /// [minProcessingUnits] The minimum number of processing units for this specific replica.
  const GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit({
    required this.maxNodes,
    required this.maxProcessingUnits,
    required this.minNodes,
    required this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': maxNodes,
      'maxProcessingUnits': maxProcessingUnits,
      'minNodes': minNodes,
      'minProcessingUnits': minProcessingUnits,
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit(
      maxNodes: pulumi.Input.fromValue(map['maxNodes'] as int),
      maxProcessingUnits: pulumi.Input.fromValue(map['maxProcessingUnits'] as int),
      minNodes: pulumi.Input.fromValue(map['minNodes'] as int),
      minProcessingUnits: pulumi.Input.fromValue(map['minProcessingUnits'] as int),
    );
  }
}
