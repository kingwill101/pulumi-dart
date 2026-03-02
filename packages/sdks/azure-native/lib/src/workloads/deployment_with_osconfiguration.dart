// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_installation_software_configuration.dart';
import 'os_sap_configuration.dart';
import 'single_server_configuration.dart';

/// Deployment along with OS Configuration.
class DeploymentWithOSConfiguration {
  /// The geo-location where the SAP system is to be created.
  final pulumi.Input<String>? appLocation;
  /// The configuration Type.
  /// Expected value is 'DeploymentWithOSConfig'.
  final pulumi.Input<String> configurationType;
  /// The infrastructure configuration.
  final pulumi.Input<SingleServerConfiguration>? infrastructureConfiguration;
  /// The OS and SAP configuration.
  final pulumi.Input<OsSapConfiguration>? osSapConfiguration;
  /// The software configuration.
  final pulumi.Input<ExternalInstallationSoftwareConfiguration>? softwareConfiguration;

  /// Creates a new [DeploymentWithOSConfiguration].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [osSapConfiguration] The OS and SAP configuration.
  /// [softwareConfiguration] The software configuration.
  DeploymentWithOSConfiguration({
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
      'infrastructureConfiguration': ?pulumi.Input.mapOptionalInputValue<SingleServerConfiguration, Map<String, dynamic>>(infrastructureConfiguration, (value) => value.toMap()),
      'osSapConfiguration': ?pulumi.Input.mapOptionalInputValue<OsSapConfiguration, Map<String, dynamic>>(osSapConfiguration, (value) => value.toMap()),
      'softwareConfiguration': ?pulumi.Input.mapOptionalInputValue<ExternalInstallationSoftwareConfiguration, Map<String, dynamic>>(softwareConfiguration, (value) => value.toMap()),
    };
  }

  factory DeploymentWithOSConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentWithOSConfiguration(
      appLocation: map['appLocation'] == null ? null : (map['appLocation']! as String).input(),
      configurationType: (map['configurationType'] as String).input(),
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : (SingleServerConfiguration.fromMap((map['infrastructureConfiguration']! as Map).cast<String, dynamic>())).input(),
      osSapConfiguration: map['osSapConfiguration'] == null ? null : (OsSapConfiguration.fromMap((map['osSapConfiguration']! as Map).cast<String, dynamic>())).input(),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : (ExternalInstallationSoftwareConfiguration.fromMap((map['softwareConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

