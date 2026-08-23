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
  const DeploymentWithOSConfigurationResponse({
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
      appLocation: (() { final guardedValue = map['appLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      infrastructureConfiguration: (() { final guardedValue = map['infrastructureConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleServerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osSapConfiguration: (() { final guardedValue = map['osSapConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsSapConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softwareConfiguration: (() { final guardedValue = map['softwareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalInstallationSoftwareConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
