// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gcpOrganization data for the member account
class GcpOrganizationalDataMember {
  /// The GCP management project number from organizational onboarding
  final pulumi.Input<String?>? managementProjectNumber;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Member'.
  final pulumi.Input<String> organizationMembershipType;
  /// If the multi cloud account is not of membership type organization, this will be the ID of the project's parent
  final pulumi.Input<String?>? parentHierarchyId;

  /// Creates a new [GcpOrganizationalDataMember].
  /// [managementProjectNumber] The GCP management project number from organizational onboarding
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [parentHierarchyId] If the multi cloud account is not of membership type organization, this will be the ID of the project's parent
  const GcpOrganizationalDataMember({
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

  factory GcpOrganizationalDataMember.fromMap(Map<String, dynamic> map) {
    return GcpOrganizationalDataMember(
      managementProjectNumber: (() { final guardedValue = map['managementProjectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationMembershipType: pulumi.Input.fromValue(map['organizationMembershipType'] as String),
      parentHierarchyId: (() { final guardedValue = map['parentHierarchyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
