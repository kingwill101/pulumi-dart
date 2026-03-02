// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_auto_provisioning_response_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning {
  /// Configuration for servers Arc auto provisioning for a given environment
  final pulumi.Input<ArcAutoProvisioningResponseConfiguration>? configuration;
  /// Is arc auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning].
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArcAutoProvisioningResponseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning(
      configuration: map['configuration'] == null ? null : (ArcAutoProvisioningResponseConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

