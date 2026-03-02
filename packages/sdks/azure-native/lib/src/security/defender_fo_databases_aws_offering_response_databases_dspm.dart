// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The databases data security posture management (DSPM) configuration
class DefenderFoDatabasesAwsOfferingResponseDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Is databases data security posture management (DSPM) protection enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingResponseDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases data security posture management (DSPM) protection enabled
  DefenderFoDatabasesAwsOfferingResponseDatabasesDspm({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponseDatabasesDspm.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponseDatabasesDspm(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

