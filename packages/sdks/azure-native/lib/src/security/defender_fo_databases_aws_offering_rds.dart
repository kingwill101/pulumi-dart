// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The RDS configuration
class DefenderFoDatabasesAwsOfferingRds {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String?>? cloudRoleArn;
  /// Is RDS protection enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingRds].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is RDS protection enabled
  const DefenderFoDatabasesAwsOfferingRds({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingRds.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingRds(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
