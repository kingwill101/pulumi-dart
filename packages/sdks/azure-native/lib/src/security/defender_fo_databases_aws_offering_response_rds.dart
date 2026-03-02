// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The RDS configuration
class DefenderFoDatabasesAwsOfferingResponseRds {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Is RDS protection enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingResponseRds].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is RDS protection enabled
  DefenderFoDatabasesAwsOfferingResponseRds({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponseRds.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponseRds(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

