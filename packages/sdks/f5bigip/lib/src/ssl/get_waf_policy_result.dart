// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWafPolicy.
class GetWafPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String policyId;

  /// Exported WAF policy JSON
  final String policyJson;

  /// Creates a new [GetWafPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyId] Required.
  /// [policyJson] Exported WAF policy JSON
  GetWafPolicyResult({
    required this.id,
    required this.policyId,
    required this.policyJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'policyId': policyId,
      'policyJson': policyJson,
    };
  }

  factory GetWafPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetWafPolicyResult(
      id: map['id'] as String,
      policyId: map['policyId'] as String,
      policyJson: map['policyJson'] as String,
    );
  }
}
