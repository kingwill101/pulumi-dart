// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_glb_setting_cdn.dart';

class GetLoadBalancerGlbSetting {
  /// CDN specific configurations
  final pulumi.Input<List<GetLoadBalancerGlbSettingCdn>> cdns;
  /// fail-over threshold
  final pulumi.Input<int> failoverThreshold;
  /// region priority map
  final pulumi.Input<Map<String, int>> regionPriorities;
  /// target port rules
  final pulumi.Input<int> targetPort;
  /// target protocol rules
  final pulumi.Input<String> targetProtocol;

  /// Creates a new [GetLoadBalancerGlbSetting].
  /// [cdns] CDN specific configurations
  /// [failoverThreshold] fail-over threshold
  /// [regionPriorities] region priority map
  /// [targetPort] target port rules
  /// [targetProtocol] target protocol rules
  const GetLoadBalancerGlbSetting({
    required this.cdns,
    required this.failoverThreshold,
    required this.regionPriorities,
    required this.targetPort,
    required this.targetProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdns': pulumi.Input.mapInputValue<List<GetLoadBalancerGlbSettingCdn>, List<Map<String, dynamic>>>(cdns, (value) => pulumi.Input.encodeList<GetLoadBalancerGlbSettingCdn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failoverThreshold': failoverThreshold,
      'regionPriorities': regionPriorities,
      'targetPort': targetPort,
      'targetProtocol': targetProtocol,
    };
  }

  factory GetLoadBalancerGlbSetting.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerGlbSetting(
      cdns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancerGlbSettingCdn>(map['cdns']!, (value) => GetLoadBalancerGlbSettingCdn.fromMap((value as Map).cast<String, dynamic>()))),
      failoverThreshold: pulumi.Input.fromValue(map['failoverThreshold'] as int),
      regionPriorities: pulumi.Input.fromValue((map['regionPriorities'] as Map).cast<String, int>()),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
      targetProtocol: pulumi.Input.fromValue(map['targetProtocol'] as String),
    );
  }
}
