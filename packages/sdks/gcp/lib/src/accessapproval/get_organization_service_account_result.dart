// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationServiceAccount.
class GetOrganizationServiceAccountResult {
  /// The email address of the service account. This value is
  /// often used to refer to the service account in order to grant IAM permissions.
  final String accountEmail;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Access Approval service account resource name. Format is "organizations/{organization_id}/serviceAccount".
  final String name;
  final String organizationId;

  /// Creates a new [GetOrganizationServiceAccountResult].
  /// [accountEmail] The email address of the service account. This value is
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The Access Approval service account resource name. Format is "organizations/{organization_id}/serviceAccount".
  /// [organizationId] Required.
  const GetOrganizationServiceAccountResult({
    required this.accountEmail,
    required this.id,
    required this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEmail': accountEmail,
      'id': id,
      'name': name,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationServiceAccountResult(
      accountEmail: map['accountEmail'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
