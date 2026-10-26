// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_pack_summary.dart';

/// Result data returned by getPolicyPacks.
class GetPolicyPacksResult {
  /// List of policy packs in the organization.
  final List<PolicyPackSummary>? policyPacks;

  /// Creates a new [GetPolicyPacksResult].
  /// [policyPacks] List of policy packs in the organization.
  const GetPolicyPacksResult({
    this.policyPacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyPacks': ?(() { final guardedValue = policyPacks; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicyPackSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPolicyPacksResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyPacksResult(
      policyPacks: (() { final guardedValue = map['policyPacks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyPackSummary>(guardedValue, (value) => PolicyPackSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
