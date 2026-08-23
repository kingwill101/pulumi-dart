// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyPacks.
class GetPolicyPacksResult {
  /// List of policy packs in the organization.
  final List<Map<String, String>> policyPacks;

  /// Creates a new [GetPolicyPacksResult].
  /// [policyPacks] List of policy packs in the organization.
  const GetPolicyPacksResult({
    required this.policyPacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyPacks': policyPacks,
    };
  }

  factory GetPolicyPacksResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyPacksResult(
      policyPacks: (map['policyPacks'] as List).cast<Map<String, String>>(),
    );
  }
}
