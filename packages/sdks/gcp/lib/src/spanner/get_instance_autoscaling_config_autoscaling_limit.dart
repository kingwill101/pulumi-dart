// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAutoscalingConfigAutoscalingLimit {
  /// Specifies maximum number of nodes allocated to the instance. If set, this number
  /// should be greater than or equal to min_nodes.
  final pulumi.Input<int> maxNodes;
  /// Specifies maximum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final pulumi.Input<int> maxProcessingUnits;
  /// Specifies number of nodes allocated to the instance. If set, this number
  /// should be greater than or equal to 1.
  final pulumi.Input<int> minNodes;
  /// Specifies minimum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000.
  final pulumi.Input<int> minProcessingUnits;

  /// Creates a new [GetInstanceAutoscalingConfigAutoscalingLimit].
  /// [maxNodes] Specifies maximum number of nodes allocated to the instance. If set, this number
  /// [maxProcessingUnits] Specifies maximum number of processing units allocated to the instance.
  /// [minNodes] Specifies number of nodes allocated to the instance. If set, this number
  /// [minProcessingUnits] Specifies minimum number of processing units allocated to the instance.
  const GetInstanceAutoscalingConfigAutoscalingLimit({
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

  factory GetInstanceAutoscalingConfigAutoscalingLimit.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAutoscalingLimit(
      maxNodes: pulumi.Input.fromValue((map['maxNodes'] as num).toInt()),
      maxProcessingUnits: pulumi.Input.fromValue((map['maxProcessingUnits'] as num).toInt()),
      minNodes: pulumi.Input.fromValue((map['minNodes'] as num).toInt()),
      minProcessingUnits: pulumi.Input.fromValue((map['minProcessingUnits'] as num).toInt()),
    );
  }
}
