// ignore_for_file: unused_element, unnecessary_cast

import 'arc_auto_provisioning_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderFoDatabasesAwsOfferingArcAutoProvisioning {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Configuration for servers Arc auto provisioning for a given environment
  final ArcAutoProvisioningConfiguration? configuration;
  /// Is arc auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingArcAutoProvisioning].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  DefenderFoDatabasesAwsOfferingArcAutoProvisioning({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingArcAutoProvisioning(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      configuration: map['configuration'] == null ? null : ArcAutoProvisioningConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

