// ignore_for_file: unused_element, unnecessary_cast

import 'data_masking_policy_response.dart';

/// Result data returned by getDataPolicy.
class GetDataPolicyResult {
  /// The data masking policy that specifies the data masking rule to use.
  final DataMaskingPolicyResponse? dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  final String? dataPolicyId;
  /// Type of data policy.
  final String? dataPolicyType;
  /// Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  final String? name;
  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  final String? policyTag;

  /// Creates a new [GetDataPolicyResult].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  /// [dataPolicyType] Type of data policy.
  /// [name] Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  /// [policyTag] Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  const GetDataPolicyResult({
    this.dataMaskingPolicy,
    this.dataPolicyId,
    this.dataPolicyType,
    this.name,
    this.policyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy': ?dataMaskingPolicy?.toMap(),
      'dataPolicyId': ?dataPolicyId,
      'dataPolicyType': ?dataPolicyType,
      'name': ?name,
      'policyTag': ?policyTag,
    };
  }

  factory GetDataPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyResult(
      dataMaskingPolicy: (() { final guardedValue = map['dataMaskingPolicy']; if (guardedValue == null) return null; return DataMaskingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataPolicyId: (() { final guardedValue = map['dataPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPolicyType: (() { final guardedValue = map['dataPolicyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyTag: (() { final guardedValue = map['policyTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
