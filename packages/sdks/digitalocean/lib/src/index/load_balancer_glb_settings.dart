// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_glb_settings_cdn.dart';

class LoadBalancerGlbSettings {
  /// CDN configuration supporting the following:
  final pulumi.Input<LoadBalancerGlbSettingsCdn>? cdn;
  /// fail-over threshold
  final pulumi.Input<int>? failoverThreshold;
  /// region priority map
  final pulumi.Input<Map<String, int>>? regionPriorities;
  /// An integer representing the port on the backend Droplets to which the Load Balancer will send traffic. The possible values are: `80` for `http` and `443` for `https`.
  final pulumi.Input<int> targetPort;
  /// The protocol used for traffic from the Load Balancer to the backend Droplets. The possible values are: `http` and `https`.
  final pulumi.Input<String> targetProtocol;

  /// Creates a new [LoadBalancerGlbSettings].
  /// [cdn] CDN configuration supporting the following:
  /// [failoverThreshold] fail-over threshold
  /// [regionPriorities] region priority map
  /// [targetPort] An integer representing the port on the backend Droplets to which the Load Balancer will send traffic. The possible values are: `80` for `http` and `443` for `https`.
  /// [targetProtocol] The protocol used for traffic from the Load Balancer to the backend Droplets. The possible values are: `http` and `https`.
  const LoadBalancerGlbSettings({
    this.cdn,
    this.failoverThreshold,
    this.regionPriorities,
    required this.targetPort,
    required this.targetProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdn': ?pulumi.Input.mapOptionalInputValue<LoadBalancerGlbSettingsCdn, Map<String, dynamic>>(cdn, (value) => value.toMap()),
      'failoverThreshold': ?failoverThreshold,
      'regionPriorities': ?regionPriorities,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
    };
  }

  factory LoadBalancerGlbSettings.fromMap(Map<String, dynamic> map) {
    return LoadBalancerGlbSettings(
      cdn: (() { final guardedValue = map['cdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerGlbSettingsCdn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failoverThreshold: (() { final guardedValue = map['failoverThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionPriorities: (() { final guardedValue = map['regionPriorities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
      targetProtocol: pulumi.Input.fromValue(map['targetProtocol'] as String),
    );
  }
}
