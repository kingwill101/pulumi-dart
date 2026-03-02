// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_identity.dart';
import 'single_node_virtual_instance_single_server_configuration.dart';

/// Input properties used for looking up and filtering SingleNodeVirtualInstance resources.
class SingleNodeVirtualInstanceState {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appLocation;
  /// The environment type for the SAP Single Node Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? environment;
  /// An `identity` block as defined below.
  final pulumi.Input<SingleNodeVirtualInstanceIdentity>? identity;
  /// The Azure Region where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the managed Resource Group for the SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  final pulumi.Input<String>? managedResourcesNetworkAccessType;
  /// Specifies the name of this SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The fully qualified domain name for the SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sapFqdn;
  /// The SAP Product type for the SAP Single Node Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sapProduct;
  /// A `single_server_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfiguration>? singleServerConfiguration;
  /// A mapping of tags which should be assigned to the SAP Single Node Virtual Instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SingleNodeVirtualInstanceState].
  /// [appLocation] The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  /// [environment] The environment type for the SAP Single Node Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of the managed Resource Group for the SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  /// [managedResourcesNetworkAccessType] The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  /// [name] Specifies the name of this SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [sapFqdn] The fully qualified domain name for the SAP system. Changing this forces a new resource to be created.
  /// [sapProduct] The SAP Product type for the SAP Single Node Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  /// [singleServerConfiguration] A `single_server_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the SAP Single Node Virtual Instance.
  SingleNodeVirtualInstanceState({
    this.appLocation,
    this.environment,
    this.identity,
    this.location,
    this.managedResourceGroupName,
    this.managedResourcesNetworkAccessType,
    this.name,
    this.resourceGroupName,
    this.sapFqdn,
    this.sapProduct,
    this.singleServerConfiguration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'environment': ?environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<SingleNodeVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sapFqdn': ?sapFqdn,
      'sapProduct': ?sapProduct,
      'singleServerConfiguration': ?pulumi.Input.mapOptionalInputValue<SingleNodeVirtualInstanceSingleServerConfiguration, Map<String, dynamic>>(singleServerConfiguration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SingleNodeVirtualInstanceState.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceState(
      appLocation: map['appLocation'] == null ? null : (map['appLocation'] as String).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      identity: map['identity'] == null ? null : (SingleNodeVirtualInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName'] as String).input(),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : (map['managedResourcesNetworkAccessType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sapFqdn: map['sapFqdn'] == null ? null : (map['sapFqdn'] as String).input(),
      sapProduct: map['sapProduct'] == null ? null : (map['sapProduct'] as String).input(),
      singleServerConfiguration: map['singleServerConfiguration'] == null ? null : (SingleNodeVirtualInstanceSingleServerConfiguration.fromMap((map['singleServerConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

