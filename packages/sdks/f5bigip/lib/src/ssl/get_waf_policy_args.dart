// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_waf_policy_get_waf_policy_args_doc}
/// Arguments for getWafPolicy.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_policy_get_waf_policy_args_doc}
class GetWafPolicyArgs {
  /// ID of the WAF policy deployed in the BIG-IP.
  final pulumi.Input<String> policyId;
  /// Exported WAF policy JSON
  final pulumi.Input<String>? policyJson;

  /// Creates a new [GetWafPolicyArgs].
  /// [policyId] ID of the WAF policy deployed in the BIG-IP.
  /// [policyJson] Exported WAF policy JSON
  GetWafPolicyArgs({
    required this.policyId,
    this.policyJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'policyJson': ?policyJson,
    };
  }

  factory GetWafPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWafPolicyArgs(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      policyJson: (() { final guardedValue = map['policyJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

