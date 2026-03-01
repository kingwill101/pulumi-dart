// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender container image assessment configuration
class DefenderForContainersAwsOfferingMdcContainersImageAssessment {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is Microsoft Defender container image assessment enabled
  final bool? enabled;

  /// Creates a new [DefenderForContainersAwsOfferingMdcContainersImageAssessment].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender container image assessment enabled
  DefenderForContainersAwsOfferingMdcContainersImageAssessment({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersAwsOfferingMdcContainersImageAssessment.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingMdcContainersImageAssessment(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

