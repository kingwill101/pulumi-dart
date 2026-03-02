// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_installation_software_configuration_response.dart';
import 'os_sap_configuration_response.dart';
import 'single_server_configuration_response.dart';

/// Deployment along with OS Configuration.
class DeploymentWithOSConfigurationResponse {
  /// The geo-location where the SAP system is to be created.
  final pulumi.Input<String>? appLocation;
  /// The configuration Type.
  /// Expected value is 'DeploymentWithOSConfig'.
  final pulumi.Input<String> configurationType;
  /// The infrastructure configuration.
  final pulumi.Input<SingleServerConfigurationResponse>? infrastructureConfiguration;
  /// The OS and SAP configuration.
  final pulumi.Input<OsSapConfigurationResponse>? osSapConfiguration;
  /// The software configuration.
  final pulumi.Input<ExternalInstallationSoftwareConfigurationResponse>? softwareConfiguration;

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
      'infrastructureConfiguration': ?pulumi.Input.mapOptionalInputValue<SingleServerConfigurationResponse, Map<String, dynamic>>(infrastructureConfiguration, (value) => value.toMap()),
      'osSapConfiguration': ?pulumi.Input.mapOptionalInputValue<OsSapConfigurationResponse, Map<String, dynamic>>(osSapConfiguration, (value) => value.toMap()),
      'softwareConfiguration': ?pulumi.Input.mapOptionalInputValue<ExternalInstallationSoftwareConfigurationResponse, Map<String, dynamic>>(softwareConfiguration, (value) => value.toMap()),
    };
  }

  factory DeploymentWithOSConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentWithOSConfigurationResponse(
      appLocation: map['appLocation'] == null ? null : (map['appLocation']! as String).input(),
      configurationType: (map['configurationType'] as String).input(),
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : (SingleServerConfigurationResponse.fromMap((map['infrastructureConfiguration']! as Map).cast<String, dynamic>())).input(),
      osSapConfiguration: map['osSapConfiguration'] == null ? null : (OsSapConfigurationResponse.fromMap((map['osSapConfiguration']! as Map).cast<String, dynamic>())).input(),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : (ExternalInstallationSoftwareConfigurationResponse.fromMap((map['softwareConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

