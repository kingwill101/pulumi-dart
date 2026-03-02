// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_configuration.dart';
import 'network_configuration.dart';
import 'single_server_full_resource_names.dart';
import 'virtual_machine_configuration.dart';

/// Gets or sets the single server configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class SingleServerConfiguration {
  /// The application resource group where SAP system resources will be deployed.
  final pulumi.Input<String> appResourceGroup;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final pulumi.Input<SingleServerFullResourceNames>? customResourceNames;
  /// The database type.
  final pulumi.Input<String>? databaseType;
  /// Gets or sets the disk configuration.
  final pulumi.Input<DiskConfiguration>? dbDiskConfiguration;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'SingleServer'.
  final pulumi.Input<String> deploymentType;
  /// Network configuration for the server
  final pulumi.Input<NetworkConfiguration>? networkConfiguration;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [SingleServerConfiguration].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseType] The database type.
  /// [dbDiskConfiguration] Gets or sets the disk configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [networkConfiguration] Network configuration for the server
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  SingleServerConfiguration({
    required this.appResourceGroup,
    this.customResourceNames,
    this.databaseType,
    this.dbDiskConfiguration,
    required this.deploymentType,
    this.networkConfiguration,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceGroup': appResourceGroup,
      'customResourceNames': ?pulumi.Input.mapOptionalInputValue<SingleServerFullResourceNames, Map<String, dynamic>>(customResourceNames, (value) => value.toMap()),
      'databaseType': ?databaseType,
      'dbDiskConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskConfiguration, Map<String, dynamic>>(dbDiskConfiguration, (value) => value.toMap()),
      'deploymentType': deploymentType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<VirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory SingleServerConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleServerConfiguration(
      appResourceGroup: (map['appResourceGroup'] as String).input(),
      customResourceNames: map['customResourceNames'] == null ? null : (SingleServerFullResourceNames.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>())).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType'] as String).input(),
      dbDiskConfiguration: map['dbDiskConfiguration'] == null ? null : (DiskConfiguration.fromMap((map['dbDiskConfiguration'] as Map).cast<String, dynamic>())).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      subnetId: (map['subnetId'] as String).input(),
      virtualMachineConfiguration: (VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

