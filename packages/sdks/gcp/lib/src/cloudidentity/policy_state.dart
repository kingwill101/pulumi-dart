// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_policy_query.dart';
import 'policy_setting.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// The customer that the Policy belongs to. Format: `customers/{customer_id}`.
  final pulumi.Input<String?>? customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The resource name of the Policy. Format: `policies/{policy_id}`.
  final pulumi.Input<String?>? name;
  /// The PolicyQuery the Setting applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyPolicyQuery?>? policyQuery;
  /// The Setting configured by this Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicySetting?>? setting;

  /// Creates a new [PolicyState].
  /// [customer] The customer that the Policy belongs to. Format: `customers/{customer_id}`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The resource name of the Policy. Format: `policies/{policy_id}`.
  /// [policyQuery] The PolicyQuery the Setting applies to.
  /// [setting] The Setting configured by this Policy.
  const PolicyState({
    this.customer,
    this.deletionPolicy,
    this.name,
    this.policyQuery,
    this.setting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'policyQuery': ?pulumi.Input.mapOptionalInputValue<PolicyPolicyQuery, Map<String, dynamic>>(policyQuery, (value) => value.toMap()),
      'setting': ?pulumi.Input.mapOptionalInputValue<PolicySetting, Map<String, dynamic>>(setting, (value) => value.toMap()),
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyQuery: (() { final guardedValue = map['policyQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPolicyQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setting: (() { final guardedValue = map['setting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
