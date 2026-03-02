// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersAwsOfferingVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final pulumi.Input<DefenderForServersAwsOfferingConfiguration>? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  DefenderForServersAwsOfferingVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVaAutoProvisioning(
      configuration: map['configuration'] == null ? null : (DefenderForServersAwsOfferingConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

