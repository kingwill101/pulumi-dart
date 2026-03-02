// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_server_configuration_response.dart';
import 'central_server_configuration_response.dart';
import 'database_configuration_response.dart';
import 'high_availability_configuration_response.dart';
import 'network_configuration_response.dart';
import 'storage_configuration_response.dart';
import 'three_tier_full_resource_names_response.dart';

/// Gets or sets the three tier SAP configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class ThreeTierConfigurationResponse {
  /// The application resource group where SAP system resources will be deployed.
  final pulumi.Input<String> appResourceGroup;
  /// The application server configuration.
  final pulumi.Input<ApplicationServerConfigurationResponse> applicationServer;
  /// The central server configuration.
  final pulumi.Input<CentralServerConfigurationResponse> centralServer;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final pulumi.Input<ThreeTierFullResourceNamesResponse>? customResourceNames;
  /// The database configuration.
  final pulumi.Input<DatabaseConfigurationResponse> databaseServer;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'ThreeTier'.
  final pulumi.Input<String> deploymentType;
  /// The high availability configuration.
  final pulumi.Input<HighAvailabilityConfigurationResponse>? highAvailabilityConfig;
  /// Network configuration common to all servers
  final pulumi.Input<NetworkConfigurationResponse>? networkConfiguration;
  /// The storage configuration.
  final pulumi.Input<StorageConfigurationResponse>? storageConfiguration;

  /// Creates a new [ThreeTierConfigurationResponse].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [applicationServer] The application server configuration.
  /// [centralServer] The central server configuration.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseServer] The database configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [highAvailabilityConfig] The high availability configuration.
  /// [networkConfiguration] Network configuration common to all servers
  /// [storageConfiguration] The storage configuration.
  ThreeTierConfigurationResponse({
    required this.appResourceGroup,
    required this.applicationServer,
    required this.centralServer,
    this.customResourceNames,
    required this.databaseServer,
    required this.deploymentType,
    this.highAvailabilityConfig,
    this.networkConfiguration,
    this.storageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceGroup': appResourceGroup,
      'applicationServer': pulumi.Input.mapInputValue<ApplicationServerConfigurationResponse, Map<String, dynamic>>(applicationServer, (value) => value.toMap()),
      'centralServer': pulumi.Input.mapInputValue<CentralServerConfigurationResponse, Map<String, dynamic>>(centralServer, (value) => value.toMap()),
      'customResourceNames': ?pulumi.Input.mapOptionalInputValue<ThreeTierFullResourceNamesResponse, Map<String, dynamic>>(customResourceNames, (value) => value.toMap()),
      'databaseServer': pulumi.Input.mapInputValue<DatabaseConfigurationResponse, Map<String, dynamic>>(databaseServer, (value) => value.toMap()),
      'deploymentType': deploymentType,
      'highAvailabilityConfig': ?pulumi.Input.mapOptionalInputValue<HighAvailabilityConfigurationResponse, Map<String, dynamic>>(highAvailabilityConfig, (value) => value.toMap()),
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfigurationResponse, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<StorageConfigurationResponse, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ThreeTierConfigurationResponse(
      appResourceGroup: (map['appResourceGroup'] as String).input(),
      applicationServer: (ApplicationServerConfigurationResponse.fromMap((map['applicationServer'] as Map).cast<String, dynamic>())).input(),
      centralServer: (CentralServerConfigurationResponse.fromMap((map['centralServer'] as Map).cast<String, dynamic>())).input(),
      customResourceNames: map['customResourceNames'] == null ? null : (ThreeTierFullResourceNamesResponse.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>())).input(),
      databaseServer: (DatabaseConfigurationResponse.fromMap((map['databaseServer'] as Map).cast<String, dynamic>())).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : (HighAvailabilityConfigurationResponse.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>())).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (NetworkConfigurationResponse.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      storageConfiguration: map['storageConfiguration'] == null ? null : (StorageConfigurationResponse.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

