// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender Data Sensitivity discovery configuration
class DefenderCspmGcpOfferingDataSensitivityDiscovery {
  /// Is Microsoft Defender Data Sensitivity discovery enabled
  final bool? enabled;
  /// The service account email address in GCP for this feature
  final String? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingDataSensitivityDiscovery].
  /// [enabled] Is Microsoft Defender Data Sensitivity discovery enabled
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  DefenderCspmGcpOfferingDataSensitivityDiscovery({
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

  factory DefenderCspmGcpOfferingDataSensitivityDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingDataSensitivityDiscovery(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

