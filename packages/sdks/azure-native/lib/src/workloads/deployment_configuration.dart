// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment Configuration.
class DeploymentConfiguration {
  /// The geo-location where the SAP system is to be created.
  final pulumi.Input<String?>? appLocation;
  /// The configuration Type.
  /// Expected value is 'Deployment'.
  final pulumi.Input<String> configurationType;
  /// The infrastructure configuration.
  final pulumi.Input<dynamic>? infrastructureConfiguration;
  /// The software configuration.
  final pulumi.Input<dynamic>? softwareConfiguration;

  /// Creates a new [DeploymentConfiguration].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [softwareConfiguration] The software configuration.
  const DeploymentConfiguration({
    this.appLocation,
    required this.configurationType,
    this.infrastructureConfiguration,
    this.softwareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'configurationType': configurationType,
      'infrastructureConfiguration': ?infrastructureConfiguration,
      'softwareConfiguration': ?softwareConfiguration,
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      appLocation: (() { final guardedValue = map['appLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      infrastructureConfiguration: (() { final guardedValue = map['infrastructureConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      softwareConfiguration: (() { final guardedValue = map['softwareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
