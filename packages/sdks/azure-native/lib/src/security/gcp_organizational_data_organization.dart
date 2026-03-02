// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gcpOrganization data for the parent account
class GcpOrganizationalDataOrganization {
  /// If the multi cloud account is of membership type organization, list of accounts excluded from offering
  final pulumi.Input<List<String>>? excludedProjectNumbers;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Organization'.
  final pulumi.Input<String> organizationMembershipType;
  /// The service account email address which represents the organization level permissions container.
  final pulumi.Input<String>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  final pulumi.Input<String>? workloadIdentityProviderId;

  /// Creates a new [GcpOrganizationalDataOrganization].
  /// [excludedProjectNumbers] If the multi cloud account is of membership type organization, list of accounts excluded from offering
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [serviceAccountEmailAddress] The service account email address which represents the organization level permissions container.
  /// [workloadIdentityProviderId] The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  GcpOrganizationalDataOrganization({
    this.excludedProjectNumbers,
    required this.organizationMembershipType,
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedProjectNumbers': ?excludedProjectNumbers,
      'organizationMembershipType': organizationMembershipType,
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory GcpOrganizationalDataOrganization.fromMap(Map<String, dynamic> map) {
    return GcpOrganizationalDataOrganization(
      excludedProjectNumbers: map['excludedProjectNumbers'] == null ? null : ((map['excludedProjectNumbers'] as List).cast<String>()).input(),
      organizationMembershipType: (map['organizationMembershipType'] as String).input(),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : (map['serviceAccountEmailAddress'] as String).input(),
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : (map['workloadIdentityProviderId'] as String).input(),
    );
  }
}

