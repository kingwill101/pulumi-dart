// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_policy_query.dart';
import 'policy_setting.dart';

/// {@template pulumi_cloudidentity_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_policy_policy_args_doc}
class PolicyArgs {
  /// The customer that the Policy belongs to. Format: `customers/{customer_id}`.
  final pulumi.Input<String> customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The PolicyQuery the Setting applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyPolicyQuery> policyQuery;
  /// The Setting configured by this Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicySetting> setting;

  /// Creates a new [PolicyArgs].
  /// [customer] The customer that the Policy belongs to. Format: `customers/{customer_id}`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [policyQuery] The PolicyQuery the Setting applies to.
  /// [setting] The Setting configured by this Policy.
  const PolicyArgs({
    required this.customer,
    this.deletionPolicy,
    required this.policyQuery,
    required this.setting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': customer,
      'deletionPolicy': ?deletionPolicy,
      'policyQuery': pulumi.Input.mapInputValue<PolicyPolicyQuery, Map<String, dynamic>>(policyQuery, (value) => value.toMap()),
      'setting': pulumi.Input.mapInputValue<PolicySetting, Map<String, dynamic>>(setting, (value) => value.toMap()),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      customer: pulumi.Input.fromValue(map['customer'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyQuery: pulumi.Input.fromValue(PolicyPolicyQuery.fromMap((map['policyQuery']! as Map).cast<String, dynamic>())),
      setting: pulumi.Input.fromValue(PolicySetting.fromMap((map['setting']! as Map).cast<String, dynamic>())),
    );
  }
}
