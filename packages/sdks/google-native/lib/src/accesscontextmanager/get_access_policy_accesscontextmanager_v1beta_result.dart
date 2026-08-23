// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyAccesscontextmanagerV1betaResult {
  /// Resource name of the `AccessPolicy`. Format: `accessPolicies/{policy_id}`
  final String name;
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  final String parent;
  /// Human readable title. Does not affect behavior.
  final String title;

  /// Creates a new [GetAccessPolicyAccesscontextmanagerV1betaResult].
  /// [name] Resource name of the `AccessPolicy`. Format: `accessPolicies/{policy_id}`
  /// [parent] The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  /// [title] Human readable title. Does not affect behavior.
  const GetAccessPolicyAccesscontextmanagerV1betaResult({
    required this.name,
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': parent,
      'title': title,
    };
  }

  factory GetAccessPolicyAccesscontextmanagerV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAccesscontextmanagerV1betaResult(
      name: map['name'] as String,
      parent: map['parent'] as String,
      title: map['title'] as String,
    );
  }
}
