// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config_asymmetric_autoscaling_option_overrides.dart';
import 'instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection.dart';

class InstanceAutoscalingConfigAsymmetricAutoscalingOption {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides> overrides;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection> replicaSelection;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOption].
  /// [overrides] A nested object resource.
  /// [replicaSelection] A nested object resource.
  InstanceAutoscalingConfigAsymmetricAutoscalingOption({
    required this.overrides,
    required this.replicaSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrides': pulumi.Input.mapInputValue<InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'replicaSelection': pulumi.Input.mapInputValue<InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection, Map<String, dynamic>>(replicaSelection, (value) => value.toMap()),
    };
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOption(
      overrides: (InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides.fromMap((map['overrides'] as Map).cast<String, dynamic>())).input(),
      replicaSelection: (InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap((map['replicaSelection'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

