// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The native cloud connection configuration
class DefenderForContainersGcpOfferingResponseNativeCloudConnection {
  /// The service account email address in GCP for this offering
  final pulumi.Input<String>? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for this offering
  final pulumi.Input<String>? workloadIdentityProviderId;

  /// Creates a new [DefenderForContainersGcpOfferingResponseNativeCloudConnection].
  /// [serviceAccountEmailAddress] The service account email address in GCP for this offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for this offering
  DefenderForContainersGcpOfferingResponseNativeCloudConnection({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderForContainersGcpOfferingResponseNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponseNativeCloudConnection(
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : (map['serviceAccountEmailAddress']! as String).input(),
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : (map['workloadIdentityProviderId']! as String).input(),
    );
  }
}

