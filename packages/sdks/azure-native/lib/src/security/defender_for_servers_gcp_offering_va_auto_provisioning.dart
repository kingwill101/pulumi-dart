// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_gcp_offering_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersGcpOfferingVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final pulumi.Input<DefenderForServersGcpOfferingConfiguration>? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  DefenderForServersGcpOfferingVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVaAutoProvisioning(
      configuration: map['configuration'] == null ? null : (DefenderForServersGcpOfferingConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

