// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iampolicy_audit_config.dart';
import 'get_iampolicy_binding.dart';

/// Result data returned by getIAMPolicy.
class GetIAMPolicyResult {
  final List<GetIAMPolicyAuditConfig>? auditConfigs;
  final List<GetIAMPolicyBinding>? bindings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The above bindings serialized in a format suitable for
  /// referencing from a resource that supports IAM.
  final String? policyData;

  /// Creates a new [GetIAMPolicyResult].
  /// [auditConfigs] Optional.
  /// [bindings] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] The above bindings serialized in a format suitable for
  const GetIAMPolicyResult({
    this.auditConfigs,
    this.bindings,
    this.id,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs': ?(() { final guardedValue = auditConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIAMPolicyAuditConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bindings': ?(() { final guardedValue = bindings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIAMPolicyBinding, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'policyData': ?policyData,
    };
  }

  factory GetIAMPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyResult(
      auditConfigs: (() { final guardedValue = map['auditConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIAMPolicyAuditConfig>(guardedValue, (value) => GetIAMPolicyAuditConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIAMPolicyBinding>(guardedValue, (value) => GetIAMPolicyBinding.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
