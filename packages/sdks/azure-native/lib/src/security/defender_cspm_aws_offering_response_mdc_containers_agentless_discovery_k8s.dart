// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender container agentless discovery K8s configuration
class DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is Microsoft Defender container agentless discovery K8s enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender container agentless discovery K8s enabled
  DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

