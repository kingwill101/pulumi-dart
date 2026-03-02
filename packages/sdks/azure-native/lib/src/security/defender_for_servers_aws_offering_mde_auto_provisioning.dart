// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender for Endpoint autoprovisioning configuration
class DefenderForServersAwsOfferingMdeAutoProvisioning {
  /// configuration for Microsoft Defender for Endpoint autoprovisioning
  final pulumi.Input<dynamic>? configuration;
  /// Is Microsoft Defender for Endpoint auto provisioning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingMdeAutoProvisioning].
  /// [configuration] configuration for Microsoft Defender for Endpoint autoprovisioning
  /// [enabled] Is Microsoft Defender for Endpoint auto provisioning enabled
  DefenderForServersAwsOfferingMdeAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingMdeAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingMdeAutoProvisioning(
      configuration: map['configuration'] == null ? null : (map['configuration']!).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

