// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender Data Sensitivity discovery configuration
class DefenderCspmGcpOfferingDataSensitivityDiscovery {
  /// Is Microsoft Defender Data Sensitivity discovery enabled
  final pulumi.Input<bool?>? enabled;
  /// The service account email address in GCP for this feature
  final pulumi.Input<String?>? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final pulumi.Input<String?>? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingDataSensitivityDiscovery].
  /// [enabled] Is Microsoft Defender Data Sensitivity discovery enabled
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  const DefenderCspmGcpOfferingDataSensitivityDiscovery({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityProviderId: (() { final guardedValue = map['workloadIdentityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
