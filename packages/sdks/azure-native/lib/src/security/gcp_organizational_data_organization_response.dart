// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The gcpOrganization data for the parent account
class GcpOrganizationalDataOrganizationResponse {
  /// If the multi cloud account is of membership type organization, list of accounts excluded from offering
  final pulumi.Input<List<String>?>? excludedProjectNumbers;
  /// The multi cloud account's membership type in the organization
  /// Expected value is 'Organization'.
  final pulumi.Input<String> organizationMembershipType;
  /// GCP organization name
  final pulumi.Input<String> organizationName;
  /// The service account email address which represents the organization level permissions container.
  final pulumi.Input<String?>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  final pulumi.Input<String?>? workloadIdentityProviderId;

  /// Creates a new [GcpOrganizationalDataOrganizationResponse].
  /// [excludedProjectNumbers] If the multi cloud account is of membership type organization, list of accounts excluded from offering
  /// [organizationMembershipType] The multi cloud account's membership type in the organization
  /// [organizationName] GCP organization name
  /// [serviceAccountEmailAddress] The service account email address which represents the organization level permissions container.
  /// [workloadIdentityProviderId] The GCP workload identity provider id which represents the permissions required to auto provision security connectors
  const GcpOrganizationalDataOrganizationResponse({
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
      excludedProjectNumbers: (() { final guardedValue = map['excludedProjectNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      organizationMembershipType: pulumi.Input.fromValue(map['organizationMembershipType'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityProviderId: (() { final guardedValue = map['workloadIdentityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
