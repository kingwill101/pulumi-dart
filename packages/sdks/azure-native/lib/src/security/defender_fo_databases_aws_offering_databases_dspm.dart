// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The databases data security posture management (DSPM) configuration
class DefenderFoDatabasesAwsOfferingDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Is databases data security posture management (DSPM) protection enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases data security posture management (DSPM) protection enabled
  const DefenderFoDatabasesAwsOfferingDatabasesDspm({
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
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
