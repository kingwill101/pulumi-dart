// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule.dart';
import 'get_app_spec_ingress_secure_header.dart';

class GetAppSpecIngress {
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final List<GetAppSpecIngressRule>? rules;
  final GetAppSpecIngressSecureHeader secureHeader;

  /// Creates a new [GetAppSpecIngress].
  /// [rules] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  /// [secureHeader] Required.
  GetAppSpecIngress({
    this.rules,
    required this.secureHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<GetAppSpecIngressRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'secureHeader': secureHeader.toMap(),
    };
  }

  factory GetAppSpecIngress.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngress(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<GetAppSpecIngressRule>(map['rules'], (value) => GetAppSpecIngressRule.fromMap((value as Map).cast<String, dynamic>())),
      secureHeader: GetAppSpecIngressSecureHeader.fromMap((map['secureHeader'] as Map).cast<String, dynamic>()),
    );
  }
}

