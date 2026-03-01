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
    pulumi.Output<String>? centralServerVirtualMachineId,
    pulumi.Output<String>? environment,
    pulumi.Output<DiscoveryVirtualInstanceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? managedResourcesNetworkAccessType,
    pulumi.Output<String>? managedStorageAccountName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sapProduct,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      centralServerVirtualMachineId = pulumi.Input.asOptionalInput<String>(centralServerVirtualMachineId),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      identity = pulumi.Input.asOptionalInput<DiscoveryVirtualInstanceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedResourcesNetworkAccessType = pulumi.Input.asOptionalInput<String>(managedResourcesNetworkAccessType),
      managedStorageAccountName = pulumi.Input.asOptionalInput<String>(managedStorageAccountName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sapProduct = pulumi.Input.asOptionalInput<String>(sapProduct),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      centralServerVirtualMachineId: map['centralServerVirtualMachineId'] == null ? null : pulumi.Output.create<String>(map['centralServerVirtualMachineId'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<DiscoveryVirtualInstanceIdentity>(DiscoveryVirtualInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : pulumi.Output.create<String>(map['managedResourcesNetworkAccessType'] as String),
      managedStorageAccountName: map['managedStorageAccountName'] == null ? null : pulumi.Output.create<String>(map['managedStorageAccountName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapProduct: map['sapProduct'] == null ? null : pulumi.Output.create<String>(map['sapProduct'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

