// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_gcp_offering_va_auto_provisioning_configuration_response.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersGcpOfferingVaAutoProvisioningResponse {
  /// configuration for Vulnerability Assessment autoprovisioning
  final pulumi.Input<DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse>? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVaAutoProvisioningResponse].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  const DefenderForServersGcpOfferingVaAutoProvisioningResponse({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVaAutoProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVaAutoProvisioningResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
