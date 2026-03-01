// ignore_for_file: unused_element, unnecessary_cast


/// The AWS organization data for the member account
class AwsOrganizationalDataMember {
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Member'.
  final String organizationMembershipType;
  /// If the multi cloud account is not of membership type organization, this will be the ID of the account's parent
  final String? parentHierarchyId;

  /// Creates a new [AwsOrganizationalDataMember].
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [parentHierarchyId] If the multi cloud account is not of membership type organization, this will be the ID of the account's parent
  AwsOrganizationalDataMember({
    required this.organizationMembershipType,
    this.parentHierarchyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationMembershipType': organizationMembershipType,
      'parentHierarchyId': ?parentHierarchyId,
    };
  }

  factory AwsOrganizationalDataMember.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationalDataMember(
      organizationMembershipType: map['organizationMembershipType'] as String,
      parentHierarchyId: map['parentHierarchyId'] == null ? null : map['parentHierarchyId'] as String,
    );
  }
}

