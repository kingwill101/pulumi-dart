// ignore_for_file: unused_element, unnecessary_cast

import 'arc_auto_provisioning_response_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Configuration for servers Arc auto provisioning for a given environment
  final ArcAutoProvisioningResponseConfiguration? configuration;
  /// Is arc auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning({
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

  factory DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      configuration: map['configuration'] == null ? null : ArcAutoProvisioningResponseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

