// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_single_server_configuration_disk_volume_configuration.dart';
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_configuration.dart';
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_resource_names.dart';

class SingleNodeVirtualInstanceSingleServerConfiguration {
  /// The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created.
  ///
  /// > **Note:** While creating an SAP Single Node Virtual Instance, the service will provision the extra SAP systems/components in the `app_resource_group_name` that are not defined in the HCL Configuration. At this time, if the `app_resource_group_name` is different from the Resource Group where SAP Single Node Virtual Instance exists, you can set `prevent_deletion_if_contains_resources` to `false` to delete all resources defined in the HCL Configuration and the resources created in the `app_resource_group_name` with `terraform destroy`. However, if the `app_resource_group_name` is the same with the Resource Group where SAP Single Node Virtual Instance exists, some resources, such as the subnet defined in the HCL Configuration, cannot be deleted with `terraform destroy` since the resources defined in the HCL Configuration are being referenced by the SAP system/component. In this case, you have to manually delete the SAP system/component before deleting the resources in the HCL Configuration.
  final pulumi.Input<String> appResourceGroupName;
  /// The supported SAP database type. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseType;
  /// One or more `disk_volume_configuration` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration>>? diskVolumeConfigurations;
  /// Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secondaryIpEnabled;
  /// The resource ID of the Subnet for the SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration> virtualMachineConfiguration;
  /// A `virtual_machine_resource_names` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames>? virtualMachineResourceNames;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfiguration].
  /// [appResourceGroupName] The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created.
  /// [databaseType] The supported SAP database type. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  /// [diskVolumeConfigurations] One or more `disk_volume_configuration` blocks as defined below. Changing this forces a new resource to be created.
  /// [secondaryIpEnabled] Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to `false`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineResourceNames] A `virtual_machine_resource_names` block as defined below. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfiguration({
    required this.appResourceGroupName,
    this.databaseType,
    this.diskVolumeConfigurations,
    this.secondaryIpEnabled,
    required this.subnetId,
    required this.virtualMachineConfiguration,
    this.virtualMachineResourceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceGroupName': appResourceGroupName,
      'databaseType': ?databaseType,
      'diskVolumeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration>, List<Map<String, dynamic>>>(diskVolumeConfigurations, (value) => pulumi.Input.encodeList<SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryIpEnabled': ?secondaryIpEnabled,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
      'virtualMachineResourceNames': ?pulumi.Input.mapOptionalInputValue<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames, Map<String, dynamic>>(virtualMachineResourceNames, (value) => value.toMap()),
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfiguration(
      appResourceGroupName: (map['appResourceGroupName'] as String).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType'] as String).input(),
      diskVolumeConfigurations: map['diskVolumeConfigurations'] == null ? null : (pulumi.Input.decodeList<SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration>(map['diskVolumeConfigurations'], (value) => SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryIpEnabled: map['secondaryIpEnabled'] == null ? null : (map['secondaryIpEnabled'] as bool).input(),
      subnetId: (map['subnetId'] as String).input(),
      virtualMachineConfiguration: (SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>())).input(),
      virtualMachineResourceNames: map['virtualMachineResourceNames'] == null ? null : (SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames.fromMap((map['virtualMachineResourceNames'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

