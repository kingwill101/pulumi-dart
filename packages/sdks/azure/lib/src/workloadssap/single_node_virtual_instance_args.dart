// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_identity.dart';
import 'single_node_virtual_instance_single_server_configuration.dart';

/// {@template pulumi_workloadssap_single_node_virtual_instance_single_node_virtual_instance_args_doc}
/// The set of arguments for SingleNodeVirtualInstance.
/// {@endtemplate}
/// {@macro pulumi_workloadssap_single_node_virtual_instance_single_node_virtual_instance_args_doc}
class SingleNodeVirtualInstanceArgs {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> appLocation;
  /// The environment type for the SAP Single Node Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  final pulumi.Input<String> environment;
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
  final pulumi.Input<String> resourceGroupName;
  /// The fully qualified domain name for the SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String> sapFqdn;
  /// The SAP Product type for the SAP Single Node Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sapProduct;
  /// A `singleServerConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfiguration> singleServerConfiguration;
  /// A mapping of tags which should be assigned to the SAP Single Node Virtual Instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SingleNodeVirtualInstanceArgs].
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
  /// [singleServerConfiguration] A `singleServerConfiguration` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the SAP Single Node Virtual Instance.
  const SingleNodeVirtualInstanceArgs({
    required this.appLocation,
    required this.environment,
    this.identity,
    this.location,
    this.managedResourceGroupName,
    this.managedResourcesNetworkAccessType,
    this.name,
    required this.resourceGroupName,
    required this.sapFqdn,
    required this.sapProduct,
    required this.singleServerConfiguration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'environment': environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<SingleNodeVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sapFqdn': sapFqdn,
      'sapProduct': sapProduct,
      'singleServerConfiguration': pulumi.Input.mapInputValue<SingleNodeVirtualInstanceSingleServerConfiguration, Map<String, dynamic>>(singleServerConfiguration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SingleNodeVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceArgs(
      appLocation: pulumi.Input.fromValue(map['appLocation'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleNodeVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourcesNetworkAccessType: (() { final guardedValue = map['managedResourcesNetworkAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapFqdn: pulumi.Input.fromValue(map['sapFqdn'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct'] as String),
      singleServerConfiguration: pulumi.Input.fromValue(SingleNodeVirtualInstanceSingleServerConfiguration.fromMap((map['singleServerConfiguration']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
