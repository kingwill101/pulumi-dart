// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rgconfiguration.dart';
import 'sapvirtual_instance_identity.dart';

/// {@template pulumi_workloads_sap_virtual_instance_args_doc}
/// The set of arguments for SapVirtualInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_virtual_instance_args_doc}
class SapVirtualInstanceArgs {
  /// Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  final pulumi.Input<dynamic> configuration;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<dynamic> environment;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SAPVirtualInstanceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Managed resource group configuration
  final pulumi.Input<ManagedRGConfiguration?>? managedResourceGroupConfiguration;
  /// Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  final pulumi.Input<dynamic>? managedResourcesNetworkAccessType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines the SAP Product type.
  final pulumi.Input<dynamic> sapProduct;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String?>? sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SapVirtualInstanceArgs].
  /// [configuration] Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  /// [environment] Defines the environment type - Production/Non Production.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [managedResourcesNetworkAccessType] Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapProduct] Defines the SAP Product type.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  const SapVirtualInstanceArgs({
    required this.configuration,
    required this.environment,
    this.identity,
    this.location,
    this.managedResourceGroupConfiguration,
    this.managedResourcesNetworkAccessType,
    required this.resourceGroupName,
    required this.sapProduct,
    this.sapVirtualInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration,
      'environment': environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<SAPVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedRGConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'resourceGroupName': resourceGroupName,
      'sapProduct': sapProduct,
      'sapVirtualInstanceName': ?sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapVirtualInstanceArgs(
      configuration: pulumi.Input.fromValue(map['configuration']),
      environment: pulumi.Input.fromValue(map['environment']),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SAPVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedRGConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedResourcesNetworkAccessType: (() { final guardedValue = map['managedResourcesNetworkAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct']),
      sapVirtualInstanceName: (() { final guardedValue = map['sapVirtualInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
