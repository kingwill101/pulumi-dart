// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_auto_provisioning_configuration_response.dart';

/// The ARC autoprovisioning configuration
class DefenderForServersGcpOfferingArcAutoProvisioningResponse {
  /// Configuration for servers Arc auto provisioning for a given environment
  final pulumi.Input<ArcAutoProvisioningConfigurationResponse?>? configuration;
  /// Is arc auto provisioning enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingArcAutoProvisioningResponse].
  /// [configuration] Configuration for servers Arc auto provisioning for a given environment
  /// [enabled] Is arc auto provisioning enabled
  const DefenderForServersGcpOfferingArcAutoProvisioningResponse({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ArcAutoProvisioningConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingArcAutoProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingArcAutoProvisioningResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArcAutoProvisioningConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
