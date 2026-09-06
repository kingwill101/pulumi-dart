// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse {
  /// The data collection service account email address in GCP for this offering
  final pulumi.Input<String?>? serviceAccountEmailAddress;
  /// The data collection GCP workload identity provider id for this offering
  final pulumi.Input<String?>? workloadIdentityProviderId;

  /// Creates a new [DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse].
  /// [serviceAccountEmailAddress] The data collection service account email address in GCP for this offering
  /// [workloadIdentityProviderId] The data collection GCP workload identity provider id for this offering
  const DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse(
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityProviderId: (() { final guardedValue = map['workloadIdentityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
