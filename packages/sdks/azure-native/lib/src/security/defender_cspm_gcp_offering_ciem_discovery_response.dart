// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
class DefenderCspmGcpOfferingCiemDiscoveryResponse {
  /// the azure active directory app name used of authenticating against GCP workload identity federation
  final pulumi.Input<String?>? azureActiveDirectoryAppName;
  /// The service account email address in GCP for Permissions Management offering
  final pulumi.Input<String?>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for Permissions Management offering
  final pulumi.Input<String?>? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingCiemDiscoveryResponse].
  /// [azureActiveDirectoryAppName] the azure active directory app name used of authenticating against GCP workload identity federation
  /// [serviceAccountEmailAddress] The service account email address in GCP for Permissions Management offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for Permissions Management offering
  const DefenderCspmGcpOfferingCiemDiscoveryResponse({
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

  factory DefenderCspmGcpOfferingCiemDiscoveryResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingCiemDiscoveryResponse(
      azureActiveDirectoryAppName: (() { final guardedValue = map['azureActiveDirectoryAppName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityProviderId: (() { final guardedValue = map['workloadIdentityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
