// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_auto_provisioning_configuration.dart';

/// The ARC autoprovisioning configuration
class DefenderForServersGcpOfferingArcAutoProvisioning {
  /// Configuration for servers Arc auto provisioning for a given environment
  final pulumi.Input<ArcAutoProvisioningConfiguration>? configuration;
  /// Is arc auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingArcAutoProvisioning].
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  DefenderForServersGcpOfferingArcAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArcAutoProvisioningConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingArcAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingArcAutoProvisioning(
      configuration: map['configuration'] == null ? null : (ArcAutoProvisioningConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

