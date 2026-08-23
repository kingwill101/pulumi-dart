// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule.dart';
import 'get_app_spec_ingress_secure_header.dart';

class GetAppSpecIngress {
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final pulumi.Input<List<GetAppSpecIngressRule>>? rules;
  final pulumi.Input<GetAppSpecIngressSecureHeader>? secureHeader;

  /// Creates a new [GetAppSpecIngress].
  /// [rules] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  /// [secureHeader] Optional.
  const GetAppSpecIngress({
    this.rules,
    this.secureHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecIngressRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetAppSpecIngressRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureHeader': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressSecureHeader, Map<String, dynamic>>(secureHeader, (value) => value.toMap()),
    };
  }

  factory GetAppSpecIngress.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngress(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecIngressRule>(guardedValue, (value) => GetAppSpecIngressRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secureHeader: (() { final guardedValue = map['secureHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressSecureHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
