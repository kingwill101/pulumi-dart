// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for servers connection configuration
class DefenderForServersGcpOfferingResponseDefenderForServers {
  /// The service account email address in GCP for this feature
  final String? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderForServersGcpOfferingResponseDefenderForServers].
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  DefenderForServersGcpOfferingResponseDefenderForServers({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderForServersGcpOfferingResponseDefenderForServers.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponseDefenderForServers(
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

