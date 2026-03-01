// ignore_for_file: unused_element, unnecessary_cast


/// The databases DSPM configuration
class DefenderCspmAwsOfferingResponseDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is databases DSPM protection enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmAwsOfferingResponseDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases DSPM protection enabled
  DefenderCspmAwsOfferingResponseDatabasesDspm({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingResponseDatabasesDspm.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseDatabasesDspm(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

