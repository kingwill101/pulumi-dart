// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_virtual_instance_identity.dart';

/// Input properties used for looking up and filtering DiscoveryVirtualInstance resources.
class DiscoveryVirtualInstanceState {
  /// The ID of the Virtual Machine of the Central Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? centralServerVirtualMachineId;
  /// The environment type for the SAP Discovery Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? environment;
  /// An `identity` block as defined below.
  final pulumi.Input<DiscoveryVirtualInstanceIdentity>? identity;
  /// The Azure Region where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the managed Resource Group for the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  final pulumi.Input<String>? managedResourcesNetworkAccessType;
  /// The name of the custom Storage Account created by the service in the managed Resource Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedStorageAccountName;
  /// Specifies the name of the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SAP Product type for the SAP Discovery Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sapProduct;
  /// A mapping of tags which should be assigned to the SAP Discovery Virtual Instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiscoveryVirtualInstanceState].
  /// [centralServerVirtualMachineId] The ID of the Virtual Machine of the Central Server. Changing this forces a new resource to be created.
  /// [environment] The environment type for the SAP Discovery Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of the managed Resource Group for the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  /// [managedResourcesNetworkAccessType] The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  /// [managedStorageAccountName] The name of the custom Storage Account created by the service in the managed Resource Group. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [sapProduct] The SAP Product type for the SAP Discovery Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the SAP Discovery Virtual Instance.
  DiscoveryVirtualInstanceState({
    this.centralServerVirtualMachineId,
    this.environment,
    this.identity,
    this.location,
    this.managedResourceGroupName,
    this.managedResourcesNetworkAccessType,
    this.managedStorageAccountName,
    this.name,
    this.resourceGroupName,
    this.sapProduct,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralServerVirtualMachineId': ?centralServerVirtualMachineId,
      'environment': ?environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<DiscoveryVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'managedStorageAccountName': ?managedStorageAccountName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sapProduct': ?sapProduct,
      'tags': ?tags,
    };
  }

  factory DiscoveryVirtualInstanceState.fromMap(Map<String, dynamic> map) {
    return DiscoveryVirtualInstanceState(
      centralServerVirtualMachineId: map['centralServerVirtualMachineId'] == null ? null : (map['centralServerVirtualMachineId']! as String).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      identity: map['identity'] == null ? null : (DiscoveryVirtualInstanceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName']! as String).input(),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : (map['managedResourcesNetworkAccessType']! as String).input(),
      managedStorageAccountName: map['managedStorageAccountName'] == null ? null : (map['managedStorageAccountName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      sapProduct: map['sapProduct'] == null ? null : (map['sapProduct']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

