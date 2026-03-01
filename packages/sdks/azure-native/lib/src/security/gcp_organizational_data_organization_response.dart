// ignore_for_file: unused_element, unnecessary_cast


/// The gcpOrganization data for the parent account
class GcpOrganizationalDataOrganizationResponse {
  /// If the multi cloud account is of membership type organization, list of accounts excluded from offering
  final List<String>? excludedProjectNumbers;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Organization'.
  final String organizationMembershipType;
  /// GCP organization name
  final String organizationName;
  /// The service account email address which represents the organization level permissions container.
  final String? serviceAccountEmailAddress;
  /// The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  final String? workloadIdentityProviderId;

  /// Creates a new [GcpOrganizationalDataOrganizationResponse].
  /// [excludedProjectNumbers] If the multi cloud account is of membership type organization, list of accounts excluded from offering
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [organizationName] GCP organization name
  /// [serviceAccountEmailAddress] The service account email address which represents the organization level permissions container.
  /// [workloadIdentityProviderId] The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  GcpOrganizationalDataOrganizationResponse({
    this.excludedProjectNumbers,
    required this.organizationMembershipType,
    required this.organizationName,
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedProjectNumbers': ?excludedProjectNumbers,
      'organizationMembershipType': organizationMembershipType,
      'organizationName': organizationName,
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory GcpOrganizationalDataOrganizationResponse.fromMap(Map<String, dynamic> map) {
    return GcpOrganizationalDataOrganizationResponse(
      excludedProjectNumbers: map['excludedProjectNumbers'] == null ? null : (map['excludedProjectNumbers'] as List).cast<String>(),
      organizationMembershipType: map['organizationMembershipType'] as String,
      organizationName: map['organizationName'] as String,
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

