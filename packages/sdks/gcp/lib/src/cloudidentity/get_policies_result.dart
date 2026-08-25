// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_policy.dart';

/// Result data returned by getPolicies.
class GetPoliciesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of Cloud Identity policies that match the filter (or all policies if no filter is provided). Structure is documented below.
  final List<GetPoliciesPolicy>? policies;

  /// Creates a new [GetPoliciesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policies] List of Cloud Identity policies that match the filter (or all policies if no filter is provided). Structure is documented below.
  const GetPoliciesResult({
    this.filter,
    this.id,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoliciesPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoliciesPolicy>(guardedValue, (value) => GetPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
