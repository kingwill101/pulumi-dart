// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender Data Sensitivity discovery configuration
class DefenderCspmGcpOfferingResponseDataSensitivityDiscovery {
  /// Is Microsoft Defender Data Sensitivity discovery enabled
  final bool? enabled;
  /// The service account email address in GCP for this feature
  final String? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingResponseDataSensitivityDiscovery].
  /// [enabled] Is Microsoft Defender Data Sensitivity discovery enabled
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  DefenderCspmGcpOfferingResponseDataSensitivityDiscovery({
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

  factory DefenderCspmGcpOfferingResponseDataSensitivityDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponseDataSensitivityDiscovery(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

