// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender for Endpoint autoprovisioning configuration
class DefenderForServersGcpOfferingMdeAutoProvisioning {
  /// configuration for Microsoft Defender for Endpoint autoprovisioning
  final pulumi.Input<dynamic>? configuration;
  /// Is Microsoft Defender for Endpoint auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingMdeAutoProvisioning].
  /// [configuration] configuration for Microsoft Defender for Endpoint autoprovisioning
  /// [enabled] Is Microsoft Defender for Endpoint auto provisioning enabled
  DefenderForServersGcpOfferingMdeAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingMdeAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingMdeAutoProvisioning(
      configuration: map['configuration'] == null ? null : (map['configuration']).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

