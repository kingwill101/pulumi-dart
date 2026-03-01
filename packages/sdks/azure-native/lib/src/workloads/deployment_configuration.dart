// ignore_for_file: unused_element, unnecessary_cast

import 'external_installation_software_configuration.dart';
import 'single_server_configuration.dart';

/// Deployment Configuration.
class DeploymentConfiguration {
  /// The geo-location where the SAP system is to be created.
  final String? appLocation;
  /// The configuration Type.
  /// Expected value is 'Deployment'.
  final String configurationType;
  /// The infrastructure configuration.
  final SingleServerConfiguration? infrastructureConfiguration;
  /// The software configuration.
  final ExternalInstallationSoftwareConfiguration? softwareConfiguration;

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
      'infrastructureConfiguration': ?infrastructureConfiguration == null ? null : infrastructureConfiguration!.toMap(),
      'softwareConfiguration': ?softwareConfiguration == null ? null : softwareConfiguration!.toMap(),
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      appLocation: map['appLocation'] == null ? null : map['appLocation'] as String,
      configurationType: map['configurationType'] as String,
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : SingleServerConfiguration.fromMap((map['infrastructureConfiguration'] as Map).cast<String, dynamic>()),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : ExternalInstallationSoftwareConfiguration.fromMap((map['softwareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

