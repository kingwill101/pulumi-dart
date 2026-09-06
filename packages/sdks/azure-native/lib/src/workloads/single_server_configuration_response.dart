// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_configuration_response.dart';
import 'network_configuration_response.dart';
import 'single_server_full_resource_names_response.dart';
import 'virtual_machine_configuration_response.dart';

/// Gets or sets the single server configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class SingleServerConfigurationResponse {
  /// The application resource group where SAP system resources will be deployed.
  final pulumi.Input<String> appResourceGroup;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final pulumi.Input<SingleServerFullResourceNamesResponse?>? customResourceNames;
  /// The database type.
  final pulumi.Input<String?>? databaseType;
  /// Gets or sets the disk configuration.
  final pulumi.Input<DiskConfigurationResponse?>? dbDiskConfiguration;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'SingleServer'.
  final pulumi.Input<String> deploymentType;
  /// Network configuration for the server
  final pulumi.Input<NetworkConfigurationResponse?>? networkConfiguration;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfigurationResponse> virtualMachineConfiguration;

  /// Creates a new [SingleServerConfigurationResponse].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseType] The database type.
  /// [dbDiskConfiguration] Gets or sets the disk configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [networkConfiguration] Network configuration for the server
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  const SingleServerConfigurationResponse({
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
      'customResourceNames': ?pulumi.Input.mapOptionalInputValue<SingleServerFullResourceNamesResponse, Map<String, dynamic>>(customResourceNames, (value) => value.toMap()),
      'databaseType': ?databaseType,
      'dbDiskConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskConfigurationResponse, Map<String, dynamic>>(dbDiskConfiguration, (value) => value.toMap()),
      'deploymentType': deploymentType,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfigurationResponse, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<VirtualMachineConfigurationResponse, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory SingleServerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SingleServerConfigurationResponse(
      appResourceGroup: pulumi.Input.fromValue(map['appResourceGroup'] as String),
      customResourceNames: (() { final guardedValue = map['customResourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleServerFullResourceNamesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbDiskConfiguration: (() { final guardedValue = map['dbDiskConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
