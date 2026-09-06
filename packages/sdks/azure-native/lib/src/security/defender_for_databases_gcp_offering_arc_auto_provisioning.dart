// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_auto_provisioning_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderForDatabasesGcpOfferingArcAutoProvisioning {
  /// Configuration for servers Arc auto provisioning for a given environment
  final pulumi.Input<ArcAutoProvisioningConfiguration?>? configuration;
  /// Is arc auto provisioning enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderForDatabasesGcpOfferingArcAutoProvisioning].
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  const DefenderForDatabasesGcpOfferingArcAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArcAutoProvisioningConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForDatabasesGcpOfferingArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOfferingArcAutoProvisioning(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArcAutoProvisioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
