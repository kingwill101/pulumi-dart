// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_gcp_offering_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersGcpOfferingVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final DefenderForServersGcpOfferingConfiguration? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  DefenderForServersGcpOfferingVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVaAutoProvisioning(
      configuration: map['configuration'] == null ? null : DefenderForServersGcpOfferingConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

