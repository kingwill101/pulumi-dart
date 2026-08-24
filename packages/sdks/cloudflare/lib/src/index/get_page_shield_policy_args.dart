// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_policy_get_page_shield_policy_args_doc}
/// Arguments for getPageShieldPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_policy_get_page_shield_policy_args_doc}
class GetPageShieldPolicyArgs {
  /// Identifier
  final pulumi.Input<String> policyId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldPolicyArgs].
  /// [policyId] Identifier
  /// [zoneId] Identifier
  const GetPageShieldPolicyArgs({
    required this.policyId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldPolicyArgs(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
