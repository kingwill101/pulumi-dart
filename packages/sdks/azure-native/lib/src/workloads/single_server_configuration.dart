// ignore_for_file: unused_element, unnecessary_cast

import 'disk_configuration.dart';
import 'network_configuration.dart';
import 'single_server_full_resource_names.dart';
import 'virtual_machine_configuration.dart';

/// Gets or sets the single server configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class SingleServerConfiguration {
  /// The application resource group where SAP system resources will be deployed.
  final String appResourceGroup;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final SingleServerFullResourceNames? customResourceNames;
  /// The database type.
  final String? databaseType;
  /// Gets or sets the disk configuration.
  final DiskConfiguration? dbDiskConfiguration;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'SingleServer'.
  final String deploymentType;
  /// Network configuration for the server
  final NetworkConfiguration? networkConfiguration;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfiguration virtualMachineConfiguration;

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
      'customResourceNames': ?customResourceNames == null ? null : customResourceNames!.toMap(),
      'databaseType': ?databaseType,
      'dbDiskConfiguration': ?dbDiskConfiguration == null ? null : dbDiskConfiguration!.toMap(),
      'deploymentType': deploymentType,
      'networkConfiguration': ?networkConfiguration == null ? null : networkConfiguration!.toMap(),
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory SingleServerConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleServerConfiguration(
      appResourceGroup: map['appResourceGroup'] as String,
      customResourceNames: map['customResourceNames'] == null ? null : SingleServerFullResourceNames.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>()),
      databaseType: map['databaseType'] == null ? null : map['databaseType'] as String,
      dbDiskConfiguration: map['dbDiskConfiguration'] == null ? null : DiskConfiguration.fromMap((map['dbDiskConfiguration'] as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'] as String,
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

