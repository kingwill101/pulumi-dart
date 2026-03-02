// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
class DefenderCspmGcpOfferingResponseCiemDiscovery {
  /// the azure active directory app name used of authenticating against GCP workload identity federation
  final pulumi.Input<String>? azureActiveDirectoryAppName;
  /// The service account email address in GCP for Permissions Management offering
  final pulumi.Input<String>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for Permissions Management offering
  final pulumi.Input<String>? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingResponseCiemDiscovery].
  /// [azureActiveDirectoryAppName] the azure active directory app name used of authenticating against GCP workload identity federation
  /// [serviceAccountEmailAddress] The service account email address in GCP for Permissions Management offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for Permissions Management offering
  DefenderCspmGcpOfferingResponseCiemDiscovery({
    this.azureActiveDirectoryAppName,
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAppName': ?azureActiveDirectoryAppName,
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderCspmGcpOfferingResponseCiemDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponseCiemDiscovery(
      azureActiveDirectoryAppName: map['azureActiveDirectoryAppName'] == null ? null : (map['azureActiveDirectoryAppName'] as String).input(),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : (map['serviceAccountEmailAddress'] as String).input(),
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : (map['workloadIdentityProviderId'] as String).input(),
    );
  }
}

