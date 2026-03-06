// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option_override_autoscaling_limit.dart';

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride {
  /// A nested object resource.
  final pulumi.Input<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>> autoscalingLimits;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride].
  /// [autoscalingLimits] A nested object resource.
  const GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride({
    required this.autoscalingLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': pulumi.Input.mapInputValue<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>, List<Map<String, dynamic>>>(autoscalingLimits, (value) => pulumi.Input.encodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride(
      autoscalingLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>(map['autoscalingLimits']!, (value) => GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

