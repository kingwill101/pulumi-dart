// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class CspmMonitorGcpOfferingNativeCloudConnection {
  /// The service account email address in GCP for this offering
  final pulumi.Input<String?>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for the offering
  final pulumi.Input<String?>? workloadIdentityProviderId;

  /// Creates a new [CspmMonitorGcpOfferingNativeCloudConnection].
  /// [serviceAccountEmailAddress] The service account email address in GCP for this offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for the offering
  const CspmMonitorGcpOfferingNativeCloudConnection({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory CspmMonitorGcpOfferingNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGcpOfferingNativeCloudConnection(
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityProviderId: (() { final guardedValue = map['workloadIdentityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
