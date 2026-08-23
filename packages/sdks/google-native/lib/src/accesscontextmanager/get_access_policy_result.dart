// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.
  final String etag;
  /// Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`
  final String name;
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  final String parent;
  /// The scopes of the AccessPolicy. Scopes define which resources a policy can restrict and where its resources can be referenced. For example, policy A with `scopes=["folders/123"]` has the following behavior: - ServicePerimeter can only restrict projects within `folders/123`. - ServicePerimeter within policy A can only reference access levels defined within policy A. - Only one policy can include a given scope; thus, attempting to create a second policy which includes `folders/123` will result in an error. If no scopes are provided, then any resource within the organization can be restricted. Scopes cannot be modified after a policy is created. Policies can only have a single scope. Format: list of `folders/{folder_number}` or `projects/{project_number}`
  final List<String> scopes;
  /// Human readable title. Does not affect behavior.
  final String title;

  /// Creates a new [GetAccessPolicyResult].
  /// [etag] An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.
  /// [name] Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`
  /// [parent] The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  /// [scopes] The scopes of the AccessPolicy. Scopes define which resources a policy can restrict and where its resources can be referenced. For example, policy A with `scopes=["folders/123"]` has the following behavior: - ServicePerimeter can only restrict projects within `folders/123`. - ServicePerimeter within policy A can only reference access levels defined within policy A. - Only one policy can include a given scope; thus, attempting to create a second policy which includes `folders/123` will result in an error. If no scopes are provided, then any resource within the organization can be restricted. Scopes cannot be modified after a policy is created. Policies can only have a single scope. Format: list of `folders/{folder_number}` or `projects/{project_number}`
  /// [title] Human readable title. Does not affect behavior.
  const GetAccessPolicyResult({
    required this.etag,
    required this.name,
    required this.parent,
    required this.scopes,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'name': name,
      'parent': parent,
      'scopes': scopes,
      'title': title,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      etag: map['etag'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}
