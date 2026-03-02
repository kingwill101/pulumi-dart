// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_application_server_configuration.dart';
import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration.dart';
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names.dart';
import 'three_tier_virtual_instance_three_tier_configuration_transport_create_and_mount.dart';

class ThreeTierVirtualInstanceThreeTierConfiguration {
  /// The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created.
  ///
  /// > **Note:** While creating an SAP Three Tier Virtual Instance, the service will provision the extra SAP systems/components in the `app_resource_group_name` that are not defined in the HCL Configuration. At this time, if the `app_resource_group_name` is different from the Resource Group where SAP Three Tier Virtual Instance exists, you can set `prevent_deletion_if_contains_resources` to `false` to delete all resources defined in the HCL Configurations and the resources created in the `app_resource_group_name` with `terraform destroy`. However, if the `app_resource_group_name` is the same with the Resource Group where SAP Three Tier Virtual Instance exists, some resources, such as the subnet defined in the HCL Configuration, cannot be deleted with `terraform destroy` since the resources defined in the HCL Configuration are being referenced by the SAP system/component. In this case, you have to manually delete the SAP system/component before deleting the resources in the HCL Configuration.
  final pulumi.Input<String> appResourceGroupName;
  /// An `application_server_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration> applicationServerConfiguration;
  /// A `central_server_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration> centralServerConfiguration;
  /// A `database_server_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration> databaseServerConfiguration;
  /// The high availability type for the three tier configuration. Possible values are `AvailabilitySet` and `AvailabilityZone`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? highAvailabilityType;
  /// A `resource_names` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNames>? resourceNames;
  /// Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secondaryIpEnabled;
  /// A `transport_create_and_mount` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The file share configuration uses `skip` by default when `transport_create_and_mount` isn't set.
  ///
  /// > **Note:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/25209) where the Storage File Share Id is not defined correctly, it is not currently possible to support using Transport Mount.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount>? transportCreateAndMount;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfiguration].
  /// [appResourceGroupName] The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created.
  /// [applicationServerConfiguration] An `application_server_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [centralServerConfiguration] A `central_server_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [databaseServerConfiguration] A `database_server_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [highAvailabilityType] The high availability type for the three tier configuration. Possible values are `AvailabilitySet` and `AvailabilityZone`. Changing this forces a new resource to be created.
  /// [resourceNames] A `resource_names` block as defined below. Changing this forces a new resource to be created.
  /// [secondaryIpEnabled] Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to `false`. Changing this forces a new resource to be created.
  /// [transportCreateAndMount] A `transport_create_and_mount` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfiguration({
    required this.appResourceGroupName,
    required this.applicationServerConfiguration,
    required this.centralServerConfiguration,
    required this.databaseServerConfiguration,
    this.highAvailabilityType,
    this.resourceNames,
    this.secondaryIpEnabled,
    this.transportCreateAndMount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceGroupName': appResourceGroupName,
      'applicationServerConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration, Map<String, dynamic>>(applicationServerConfiguration, (value) => value.toMap()),
      'centralServerConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration, Map<String, dynamic>>(centralServerConfiguration, (value) => value.toMap()),
      'databaseServerConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration, Map<String, dynamic>>(databaseServerConfiguration, (value) => value.toMap()),
      'highAvailabilityType': ?highAvailabilityType,
      'resourceNames': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNames, Map<String, dynamic>>(resourceNames, (value) => value.toMap()),
      'secondaryIpEnabled': ?secondaryIpEnabled,
      'transportCreateAndMount': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount, Map<String, dynamic>>(transportCreateAndMount, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfiguration(
      appResourceGroupName: (map['appResourceGroupName'] as String).input(),
      applicationServerConfiguration: (ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration.fromMap((map['applicationServerConfiguration'] as Map).cast<String, dynamic>())).input(),
      centralServerConfiguration: (ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration.fromMap((map['centralServerConfiguration'] as Map).cast<String, dynamic>())).input(),
      databaseServerConfiguration: (ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration.fromMap((map['databaseServerConfiguration'] as Map).cast<String, dynamic>())).input(),
      highAvailabilityType: map['highAvailabilityType'] == null ? null : (map['highAvailabilityType']! as String).input(),
      resourceNames: map['resourceNames'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNames.fromMap((map['resourceNames']! as Map).cast<String, dynamic>())).input(),
      secondaryIpEnabled: map['secondaryIpEnabled'] == null ? null : (map['secondaryIpEnabled']! as bool).input(),
      transportCreateAndMount: map['transportCreateAndMount'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount.fromMap((map['transportCreateAndMount']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

