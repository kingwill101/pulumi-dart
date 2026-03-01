// ignore_for_file: unused_element, unnecessary_cast


/// The gcpOrganization data for the member account
class GcpOrganizationalDataMemberResponse {
  /// The GCP management project number from organizational onboarding
  final String? managementProjectNumber;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Member'.
  final String organizationMembershipType;
  /// If the multi cloud account is not of membership type organization, this will be the ID of the project's parent
  final String? parentHierarchyId;

  /// Creates a new [GcpOrganizationalDataMemberResponse].
  /// [managementProjectNumber] The GCP management project number from organizational onboarding
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [parentHierarchyId] If the multi cloud account is not of membership type organization, this will be the ID of the project's parent
  GcpOrganizationalDataMemberResponse({
    this.managementProjectNumber,
    required this.organizationMembershipType,
    this.parentHierarchyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementProjectNumber': ?managementProjectNumber,
      'organizationMembershipType': organizationMembershipType,
      'parentHierarchyId': ?parentHierarchyId,
    };
  }

  factory GcpOrganizationalDataMemberResponse.fromMap(Map<String, dynamic> map) {
    return GcpOrganizationalDataMemberResponse(
      managementProjectNumber: map['managementProjectNumber'] == null ? null : map['managementProjectNumber'] as String,
      organizationMembershipType: map['organizationMembershipType'] as String,
      parentHierarchyId: map['parentHierarchyId'] == null ? null : map['parentHierarchyId'] as String,
    );
  }
}

