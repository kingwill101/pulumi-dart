// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for servers connection configuration
class DefenderForServersAwsOfferingDefenderForServers {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;

  /// Creates a new [DefenderForServersAwsOfferingDefenderForServers].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  DefenderForServersAwsOfferingDefenderForServers({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForServersAwsOfferingDefenderForServers.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingDefenderForServers(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

