// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_server_configuration.dart';
import 'central_server_configuration.dart';
import 'database_configuration.dart';
import 'high_availability_configuration.dart';
import 'network_configuration.dart';
import 'storage_configuration.dart';
import 'three_tier_full_resource_names.dart';

/// Gets or sets the three tier SAP configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class ThreeTierConfiguration {
  /// The application resource group where SAP system resources will be deployed.
  final pulumi.Input<String> appResourceGroup;
  /// The application server configuration.
  final pulumi.Input<ApplicationServerConfiguration> applicationServer;
  /// The central server configuration.
  final pulumi.Input<CentralServerConfiguration> centralServer;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final pulumi.Input<ThreeTierFullResourceNames>? customResourceNames;
  /// The database configuration.
  final pulumi.Input<DatabaseConfiguration> databaseServer;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'ThreeTier'.
  final pulumi.Input<String> deploymentType;
  /// The high availability configuration.
  final pulumi.Input<HighAvailabilityConfiguration>? highAvailabilityConfig;
  /// Network configuration common to all servers
  final pulumi.Input<NetworkConfiguration>? networkConfiguration;
  /// The storage configuration.
  final pulumi.Input<StorageConfiguration>? storageConfiguration;

  /// Creates a new [ThreeTierConfiguration].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [applicationServer] The application server configuration.
  /// [centralServer] The central server configuration.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseServer] The database configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [highAvailabilityConfig] The high availability configuration.
  /// [networkConfiguration] Network configuration common to all servers
  /// [storageConfiguration] The storage configuration.
  ThreeTierConfiguration({
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
      'applicationServer': pulumi.Input.mapInputValue<ApplicationServerConfiguration, Map<String, dynamic>>(applicationServer, (value) => value.toMap()),
      'centralServer': pulumi.Input.mapInputValue<CentralServerConfiguration, Map<String, dynamic>>(centralServer, (value) => value.toMap()),
      'customResourceNames': ?pulumi.Input.mapOptionalInputValue<ThreeTierFullResourceNames, Map<String, dynamic>>(customResourceNames, (value) => value.toMap()),
      'databaseServer': pulumi.Input.mapInputValue<DatabaseConfiguration, Map<String, dynamic>>(databaseServer, (value) => value.toMap()),
      'deploymentType': deploymentType,
      'highAvailabilityConfig': ?pulumi.Input.mapOptionalInputValue<HighAvailabilityConfiguration, Map<String, dynamic>>(highAvailabilityConfig, (value) => value.toMap()),
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<StorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierConfiguration(
      appResourceGroup: (map['appResourceGroup'] as String).input(),
      applicationServer: (ApplicationServerConfiguration.fromMap((map['applicationServer'] as Map).cast<String, dynamic>())).input(),
      centralServer: (CentralServerConfiguration.fromMap((map['centralServer'] as Map).cast<String, dynamic>())).input(),
      customResourceNames: map['customResourceNames'] == null ? null : (ThreeTierFullResourceNames.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>())).input(),
      databaseServer: (DatabaseConfiguration.fromMap((map['databaseServer'] as Map).cast<String, dynamic>())).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : (HighAvailabilityConfiguration.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>())).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      storageConfiguration: map['storageConfiguration'] == null ? null : (StorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

