// ignore_for_file: unused_element, unnecessary_cast


/// The databases data security posture management (DSPM) configuration
class DefenderFoDatabasesAwsOfferingDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is databases data security posture management (DSPM) protection enabled
  final bool? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases data security posture management (DSPM) protection enabled
  DefenderFoDatabasesAwsOfferingDatabasesDspm({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingDatabasesDspm.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingDatabasesDspm(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

