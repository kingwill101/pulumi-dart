// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits {
  /// The maximum number of nodes for this specific replica.
  final pulumi.Input<int>? maxNodes;
  /// The maximum number of processing units for this specific replica.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final pulumi.Input<int>? maxProcessingUnits;
  /// The minimum number of nodes for this specific replica.
  final pulumi.Input<int>? minNodes;
  /// The minimum number of processing units for this specific replica.
  /// If set, this number should be multiples of 1000.
  final pulumi.Input<int>? minProcessingUnits;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [maxProcessingUnits] The maximum number of processing units for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  /// [minProcessingUnits] The minimum number of processing units for this specific replica.
  const InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits({
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

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits(
      maxNodes: (() { final guardedValue = map['maxNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxProcessingUnits: (() { final guardedValue = map['maxProcessingUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodes: (() { final guardedValue = map['minNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minProcessingUnits: (() { final guardedValue = map['minProcessingUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
