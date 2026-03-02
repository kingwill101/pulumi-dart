// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender Container image assessment configuration
class DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment {
  /// Is Microsoft Defender container image assessment enabled
  final pulumi.Input<bool>? enabled;
  /// The service account email address in GCP for this feature
  final pulumi.Input<String>? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final pulumi.Input<String>? workloadIdentityProviderId;

  /// Creates a new [DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment].
  /// [enabled] Is Microsoft Defender container image assessment enabled
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment({
    this.enabled,
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : (map['serviceAccountEmailAddress']! as String).input(),
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : (map['workloadIdentityProviderId']! as String).input(),
    );
  }
}

