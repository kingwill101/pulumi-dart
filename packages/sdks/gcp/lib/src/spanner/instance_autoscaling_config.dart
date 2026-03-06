// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config_asymmetric_autoscaling_option.dart';
import 'instance_autoscaling_config_autoscaling_limits.dart';
import 'instance_autoscaling_config_autoscaling_targets.dart';

class InstanceAutoscalingConfig {
  /// Asymmetric autoscaling options for specific replicas.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceAutoscalingConfigAsymmetricAutoscalingOption>>? asymmetricAutoscalingOptions;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events. Users can define the minimum and
  /// maximum compute capacity allocated to the instance, and the autoscaler will
  /// only scale within that range. Users can either use nodes or processing
  /// units to specify the limits, but should use the same unit to set both the
  /// min_limit and max_limit.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfigAutoscalingLimits>? autoscalingLimits;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfigAutoscalingTargets>? autoscalingTargets;

  /// Creates a new [InstanceAutoscalingConfig].
  /// [asymmetricAutoscalingOptions] Asymmetric autoscaling options for specific replicas.
  /// [autoscalingLimits] Defines scale in controls to reduce the risk of response latency
  /// [autoscalingTargets] Defines scale in controls to reduce the risk of response latency
  const InstanceAutoscalingConfig({
    this.asymmetricAutoscalingOptions,
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asymmetricAutoscalingOptions': ?pulumi.Input.mapOptionalInputValue<List<InstanceAutoscalingConfigAsymmetricAutoscalingOption>, List<Map<String, dynamic>>>(asymmetricAutoscalingOptions, (value) => pulumi.Input.encodeList<InstanceAutoscalingConfigAsymmetricAutoscalingOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscalingLimits': ?pulumi.Input.mapOptionalInputValue<InstanceAutoscalingConfigAutoscalingLimits, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargets': ?pulumi.Input.mapOptionalInputValue<InstanceAutoscalingConfigAutoscalingTargets, Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap()),
    };
  }

  factory InstanceAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfig(
      asymmetricAutoscalingOptions: (() { final guardedValue = map['asymmetricAutoscalingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAutoscalingConfigAsymmetricAutoscalingOption>(guardedValue, (value) => InstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscalingLimits: (() { final guardedValue = map['autoscalingLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoscalingConfigAutoscalingLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscalingTargets: (() { final guardedValue = map['autoscalingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoscalingConfigAutoscalingTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

