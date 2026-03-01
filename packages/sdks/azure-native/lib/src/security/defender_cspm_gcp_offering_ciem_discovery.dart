// ignore_for_file: unused_element, unnecessary_cast


/// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
class DefenderCspmGcpOfferingCiemDiscovery {
  /// the azure active directory app name used of authenticating against GCP workload identity federation
  final String? azureActiveDirectoryAppName;
  /// The service account email address in GCP for Permissions Management offering
  final String? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for Permissions Management offering
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingCiemDiscovery].
  /// [azureActiveDirectoryAppName] the azure active directory app name used of authenticating against GCP workload identity federation
  /// [serviceAccountEmailAddress] The service account email address in GCP for Permissions Management offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for Permissions Management offering
  DefenderCspmGcpOfferingCiemDiscovery({
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

  factory DefenderCspmGcpOfferingCiemDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingCiemDiscovery(
      azureActiveDirectoryAppName: map['azureActiveDirectoryAppName'] == null ? null : map['azureActiveDirectoryAppName'] as String,
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

