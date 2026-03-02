// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AWS organization data for the master account
class AwsOrganizationalDataMaster {
  /// If the multi cloud account is of membership type organization, list of accounts excluded from offering
  final pulumi.Input<List<String>>? excludedAccountIds;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Organization'.
  final pulumi.Input<String> organizationMembershipType;
  /// If the multi cloud account is of membership type organization, this will be the name of the onboarding stackset
  final pulumi.Input<String>? stacksetName;

  /// Creates a new [AwsOrganizationalDataMaster].
  /// [excludedAccountIds] If the multi cloud account is of membership type organization, list of accounts excluded from offering
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [stacksetName] If the multi cloud account is of membership type organization, this will be the name of the onboarding stackset
  AwsOrganizationalDataMaster({
    this.excludedAccountIds,
    required this.organizationMembershipType,
    this.stacksetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedAccountIds': ?excludedAccountIds,
      'organizationMembershipType': organizationMembershipType,
      'stacksetName': ?stacksetName,
    };
  }

  factory AwsOrganizationalDataMaster.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationalDataMaster(
      excludedAccountIds: map['excludedAccountIds'] == null ? null : ((map['excludedAccountIds'] as List).cast<String>()).input(),
      organizationMembershipType: (map['organizationMembershipType'] as String).input(),
      stacksetName: map['stacksetName'] == null ? null : (map['stacksetName'] as String).input(),
    );
  }
}

