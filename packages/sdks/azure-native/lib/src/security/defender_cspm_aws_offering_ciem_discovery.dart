// ignore_for_file: unused_element, unnecessary_cast


/// Defender CSPM Permissions Management discovery configuration
class DefenderCspmAwsOfferingCiemDiscovery {
  /// The cloud role ARN in AWS for Permissions Management discovery
  final String? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingCiemDiscovery].
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management discovery
  DefenderCspmAwsOfferingCiemDiscovery({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderCspmAwsOfferingCiemDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiemDiscovery(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

