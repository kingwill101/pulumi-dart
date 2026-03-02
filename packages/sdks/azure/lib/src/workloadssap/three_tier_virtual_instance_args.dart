// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_identity.dart';
import 'three_tier_virtual_instance_three_tier_configuration.dart';

/// {@template pulumi_workloadssap_three_tier_virtual_instance_three_tier_virtual_instance_args_doc}
/// The set of arguments for ThreeTierVirtualInstance.
/// {@endtemplate}
/// {@macro pulumi_workloadssap_three_tier_virtual_instance_three_tier_virtual_instance_args_doc}
class ThreeTierVirtualInstanceArgs {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> appLocation;
  /// The environment type for the SAP Three Tier Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  final pulumi.Input<String> environment;
  /// An `identity` block as defined below.
  final pulumi.Input<ThreeTierVirtualInstanceIdentity>? identity;
  /// The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  final pulumi.Input<String>? managedResourcesNetworkAccessType;
  /// Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The FQDN of the SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String> sapFqdn;
  /// The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sapProduct;
  /// A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `three_tier_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfiguration> threeTierConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceArgs].
  /// [appLocation] The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  /// [environment] The environment type for the SAP Three Tier Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  /// [managedResourcesNetworkAccessType] The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  /// [name] Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  /// [sapFqdn] The FQDN of the SAP system. Changing this forces a new resource to be created.
  /// [sapProduct] The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance.
  /// [threeTierConfiguration] A `three_tier_configuration` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceArgs({
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
    this.tags,
    required this.threeTierConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'environment': environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sapFqdn': sapFqdn,
      'sapProduct': sapProduct,
      'tags': ?tags,
      'threeTierConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfiguration, Map<String, dynamic>>(threeTierConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceArgs(
      appLocation: (map['appLocation'] as String).input(),
      environment: (map['environment'] as String).input(),
      identity: map['identity'] == null ? null : (ThreeTierVirtualInstanceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName']! as String).input(),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : (map['managedResourcesNetworkAccessType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapFqdn: (map['sapFqdn'] as String).input(),
      sapProduct: (map['sapProduct'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threeTierConfiguration: (ThreeTierVirtualInstanceThreeTierConfiguration.fromMap((map['threeTierConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

