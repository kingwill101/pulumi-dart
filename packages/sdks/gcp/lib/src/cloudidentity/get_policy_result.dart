// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_policy_query.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The customer that the policy belongs to.
  final String? customer;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the policy.
  final String? name;
  /// A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  final List<GetPolicyPolicyQuery>? policyQueries;
  /// The setting configured by this policy, represented as a JSON string.
  final String? setting;
  /// The type of the policy.
  final String? type;

  /// Creates a new [GetPolicyResult].
  /// [customer] The customer that the policy belongs to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the policy.
  /// [policyQueries] A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  /// [setting] The setting configured by this policy, represented as a JSON string.
  /// [type] The type of the policy.
  const GetPolicyResult({
    this.customer,
    this.id,
    this.name,
    this.policyQueries,
    this.setting,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'id': ?id,
      'name': ?name,
      'policyQueries': ?(() { final guardedValue = policyQueries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyPolicyQuery, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'setting': ?setting,
      'type': ?type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyQueries: (() { final guardedValue = map['policyQueries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyPolicyQuery>(guardedValue, (value) => GetPolicyPolicyQuery.fromMap((value as Map).cast<String, dynamic>())); })(),
      setting: (() { final guardedValue = map['setting']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
