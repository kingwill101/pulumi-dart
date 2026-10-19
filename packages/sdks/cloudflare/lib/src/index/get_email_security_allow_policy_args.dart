// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_allow_policy_filter.dart';

/// {@template pulumi_index_get_email_security_allow_policy_get_email_security_allow_policy_args_doc}
/// Arguments for getEmailSecurityAllowPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_allow_policy_get_email_security_allow_policy_args_doc}
class GetEmailSecurityAllowPolicyArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetEmailSecurityAllowPolicyFilter?>? filter;
  final pulumi.Input<String?>? policyId;

  /// Creates a new [GetEmailSecurityAllowPolicyArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [policyId] Optional.
  const GetEmailSecurityAllowPolicyArgs({
    required this.accountId,
    this.filter,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailSecurityAllowPolicyFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'policyId': ?policyId,
    };
  }

  factory GetEmailSecurityAllowPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailSecurityAllowPolicyFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
