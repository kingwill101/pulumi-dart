// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_auto_provisioning_response_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Configuration for servers Arc auto provisioning for a given environment
  final pulumi.Input<ArcAutoProvisioningResponseConfiguration>? configuration;
  /// Is arc auto provisioning enabled
  final pulumi.Input<bool>? enabled;

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
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArcAutoProvisioningResponseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
      configuration: map['configuration'] == null ? null : (ArcAutoProvisioningResponseConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

