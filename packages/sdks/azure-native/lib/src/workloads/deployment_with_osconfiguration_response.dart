// ignore_for_file: unused_element, unnecessary_cast

import 'external_installation_software_configuration_response.dart';
import 'os_sap_configuration_response.dart';
import 'single_server_configuration_response.dart';

/// Deployment along with OS Configuration.
class DeploymentWithOSConfigurationResponse {
  /// The geo-location where the SAP system is to be created.
  final String? appLocation;
  /// The configuration Type.
  /// Expected value is 'DeploymentWithOSConfig'.
  final String configurationType;
  /// The infrastructure configuration.
  final SingleServerConfigurationResponse? infrastructureConfiguration;
  /// The OS and SAP configuration.
  final OsSapConfigurationResponse? osSapConfiguration;
  /// The software configuration.
  final ExternalInstallationSoftwareConfigurationResponse? softwareConfiguration;

  /// Creates a new [DeploymentWithOSConfigurationResponse].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [osSapConfiguration] The OS and SAP configuration.
  /// [softwareConfiguration] The software configuration.
  DeploymentWithOSConfigurationResponse({
    this.appLocation,
    required this.configurationType,
    this.infrastructureConfiguration,
    this.osSapConfiguration,
    this.softwareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'configurationType': configurationType,
      'infrastructureConfiguration': ?infrastructureConfiguration == null ? null : infrastructureConfiguration!.toMap(),
      'osSapConfiguration': ?osSapConfiguration == null ? null : osSapConfiguration!.toMap(),
      'softwareConfiguration': ?softwareConfiguration == null ? null : softwareConfiguration!.toMap(),
    };
  }

  factory DeploymentWithOSConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentWithOSConfigurationResponse(
      appLocation: map['appLocation'] == null ? null : map['appLocation'] as String,
      configurationType: map['configurationType'] as String,
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : SingleServerConfigurationResponse.fromMap((map['infrastructureConfiguration'] as Map).cast<String, dynamic>()),
      osSapConfiguration: map['osSapConfiguration'] == null ? null : OsSapConfigurationResponse.fromMap((map['osSapConfiguration'] as Map).cast<String, dynamic>()),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : ExternalInstallationSoftwareConfigurationResponse.fromMap((map['softwareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

