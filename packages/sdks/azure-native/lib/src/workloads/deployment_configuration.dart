// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_installation_software_configuration.dart';
import 'single_server_configuration.dart';

/// Deployment Configuration.
class DeploymentConfiguration {
  /// The geo-location where the SAP system is to be created.
  final pulumi.Input<String>? appLocation;
  /// The configuration Type.
  /// Expected value is 'Deployment'.
  final pulumi.Input<String> configurationType;
  /// The infrastructure configuration.
  final pulumi.Input<SingleServerConfiguration>? infrastructureConfiguration;
  /// The software configuration.
  final pulumi.Input<ExternalInstallationSoftwareConfiguration>? softwareConfiguration;

  /// Creates a new [DeploymentConfiguration].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [softwareConfiguration] The software configuration.
  DeploymentConfiguration({
    this.appLocation,
    required this.configurationType,
    this.infrastructureConfiguration,
    this.softwareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'configurationType': configurationType,
      'infrastructureConfiguration': ?pulumi.Input.mapOptionalInputValue<SingleServerConfiguration, Map<String, dynamic>>(infrastructureConfiguration, (value) => value.toMap()),
      'softwareConfiguration': ?pulumi.Input.mapOptionalInputValue<ExternalInstallationSoftwareConfiguration, Map<String, dynamic>>(softwareConfiguration, (value) => value.toMap()),
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      appLocation: map['appLocation'] == null ? null : (map['appLocation'] as String).input(),
      configurationType: (map['configurationType'] as String).input(),
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : (SingleServerConfiguration.fromMap((map['infrastructureConfiguration'] as Map).cast<String, dynamic>())).input(),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : (ExternalInstallationSoftwareConfiguration.fromMap((map['softwareConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

