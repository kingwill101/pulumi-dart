// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_response_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersAwsOfferingResponseVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final pulumi.Input<DefenderForServersAwsOfferingResponseConfiguration>? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingResponseVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  const DefenderForServersAwsOfferingResponseVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingResponseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingResponseVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponseVaAutoProvisioning(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingResponseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

