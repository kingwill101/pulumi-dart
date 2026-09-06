// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender for Endpoint autoprovisioning configuration
class DefenderForServersAwsOfferingMdeAutoProvisioningResponse {
  /// configuration for Microsoft Defender for Endpoint autoprovisioning
  final pulumi.Input<dynamic>? configuration;
  /// Is Microsoft Defender for Endpoint auto provisioning enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingMdeAutoProvisioningResponse].
  /// [configuration] configuration for Microsoft Defender for Endpoint autoprovisioning
  /// [enabled] Is Microsoft Defender for Endpoint auto provisioning enabled
  const DefenderForServersAwsOfferingMdeAutoProvisioningResponse({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingMdeAutoProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingMdeAutoProvisioningResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
