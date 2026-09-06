// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_va_auto_provisioning_configuration_response.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersAwsOfferingVaAutoProvisioningResponse {
  /// configuration for Vulnerability Assessment autoprovisioning
  final pulumi.Input<DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse?>? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingVaAutoProvisioningResponse].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  const DefenderForServersAwsOfferingVaAutoProvisioningResponse({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingVaAutoProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVaAutoProvisioningResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
