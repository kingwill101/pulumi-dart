// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AWS organization data for the member account
class AwsOrganizationalDataMemberResponse {
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Member'.
  final pulumi.Input<String> organizationMembershipType;

  /// If the multi cloud account is not of membership type organization, this will be the ID of the account's parent
  final pulumi.Input<String>? parentHierarchyId;

  /// Creates a new [AwsOrganizationalDataMemberResponse].
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [parentHierarchyId] If the multi cloud account is not of membership type organization, this will be the ID of the account's parent
  AwsOrganizationalDataMemberResponse({
    required this.organizationMembershipType,
    this.parentHierarchyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationMembershipType': organizationMembershipType,
      'parentHierarchyId': ?parentHierarchyId,
    };
  }

  factory AwsOrganizationalDataMemberResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsOrganizationalDataMemberResponse(
      organizationMembershipType: pulumi.Input.fromValue(
        map['organizationMembershipType'] as String,
      ),
      parentHierarchyId: (() {
        final guardedValue = map['parentHierarchyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
