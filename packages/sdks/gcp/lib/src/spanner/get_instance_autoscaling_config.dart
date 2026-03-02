// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option.dart';
import 'get_instance_autoscaling_config_autoscaling_limit.dart';
import 'get_instance_autoscaling_config_autoscaling_target.dart';

class GetInstanceAutoscalingConfig {
  /// Asymmetric autoscaling options for specific replicas.
  final pulumi.Input<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOption>> asymmetricAutoscalingOptions;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events. Users can define the minimum and
  /// maximum compute capacity allocated to the instance, and the autoscaler will
  /// only scale within that range. Users can either use nodes or processing
  /// units to specify the limits, but should use the same unit to set both the
  /// min_limit and max_limit.
  final pulumi.Input<List<GetInstanceAutoscalingConfigAutoscalingLimit>> autoscalingLimits;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  final pulumi.Input<List<GetInstanceAutoscalingConfigAutoscalingTarget>> autoscalingTargets;

  /// Creates a new [GetInstanceAutoscalingConfig].
  /// [asymmetricAutoscalingOptions] Asymmetric autoscaling options for specific replicas.
  /// [autoscalingLimits] Defines scale in controls to reduce the risk of response latency
  /// [autoscalingTargets] Defines scale in controls to reduce the risk of response latency
  GetInstanceAutoscalingConfig({
    required this.asymmetricAutoscalingOptions,
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asymmetricAutoscalingOptions': pulumi.Input.mapInputValue<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOption>, List<Map<String, dynamic>>>(asymmetricAutoscalingOptions, (value) => pulumi.Input.encodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscalingLimits': pulumi.Input.mapInputValue<List<GetInstanceAutoscalingConfigAutoscalingLimit>, List<Map<String, dynamic>>>(autoscalingLimits, (value) => pulumi.Input.encodeList<GetInstanceAutoscalingConfigAutoscalingLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscalingTargets': pulumi.Input.mapInputValue<List<GetInstanceAutoscalingConfigAutoscalingTarget>, List<Map<String, dynamic>>>(autoscalingTargets, (value) => pulumi.Input.encodeList<GetInstanceAutoscalingConfigAutoscalingTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfig(
      asymmetricAutoscalingOptions: (pulumi.Input.decodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOption>(map['asymmetricAutoscalingOptions'], (value) => GetInstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscalingLimits: (pulumi.Input.decodeList<GetInstanceAutoscalingConfigAutoscalingLimit>(map['autoscalingLimits'], (value) => GetInstanceAutoscalingConfigAutoscalingLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscalingTargets: (pulumi.Input.decodeList<GetInstanceAutoscalingConfigAutoscalingTarget>(map['autoscalingTargets'], (value) => GetInstanceAutoscalingConfigAutoscalingTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

