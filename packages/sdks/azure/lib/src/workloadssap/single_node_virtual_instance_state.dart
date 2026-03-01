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
    pulumi.Output<String>? appLocation,
    pulumi.Output<String>? environment,
    pulumi.Output<SingleNodeVirtualInstanceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? managedResourcesNetworkAccessType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sapFqdn,
    pulumi.Output<String>? sapProduct,
    pulumi.Output<SingleNodeVirtualInstanceSingleServerConfiguration>? singleServerConfiguration,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      appLocation = pulumi.Input.asOptionalInput<String>(appLocation),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      identity = pulumi.Input.asOptionalInput<SingleNodeVirtualInstanceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedResourcesNetworkAccessType = pulumi.Input.asOptionalInput<String>(managedResourcesNetworkAccessType),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sapFqdn = pulumi.Input.asOptionalInput<String>(sapFqdn),
      sapProduct = pulumi.Input.asOptionalInput<String>(sapProduct),
      singleServerConfiguration = pulumi.Input.asOptionalInput<SingleNodeVirtualInstanceSingleServerConfiguration>(singleServerConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      appLocation: map['appLocation'] == null ? null : pulumi.Output.create<String>(map['appLocation'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<SingleNodeVirtualInstanceIdentity>(SingleNodeVirtualInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : pulumi.Output.create<String>(map['managedResourcesNetworkAccessType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapFqdn: map['sapFqdn'] == null ? null : pulumi.Output.create<String>(map['sapFqdn'] as String),
      sapProduct: map['sapProduct'] == null ? null : pulumi.Output.create<String>(map['sapProduct'] as String),
      singleServerConfiguration: map['singleServerConfiguration'] == null ? null : pulumi.Output.create<SingleNodeVirtualInstanceSingleServerConfiguration>(SingleNodeVirtualInstanceSingleServerConfiguration.fromMap((map['singleServerConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

