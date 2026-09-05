// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_identity.dart';
import 'three_tier_virtual_instance_three_tier_configuration.dart';

/// Input properties used for looking up and filtering ThreeTierVirtualInstance resources.
class ThreeTierVirtualInstanceState {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? appLocation;
  /// The environment type for the SAP Three Tier Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? environment;
  /// An `identity` block as defined below.
  final pulumi.Input<ThreeTierVirtualInstanceIdentity?>? identity;
  /// The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  final pulumi.Input<String?>? managedResourcesNetworkAccessType;
  /// Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The FQDN of the SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sapFqdn;
  /// The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sapProduct;
  /// A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A `threeTierConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfiguration?>? threeTierConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceState].
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
  /// [threeTierConfiguration] A `threeTierConfiguration` block as defined below. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceState({
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
    this.tags,
    this.threeTierConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'environment': ?environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sapFqdn': ?sapFqdn,
      'sapProduct': ?sapProduct,
      'tags': ?tags,
      'threeTierConfiguration': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfiguration, Map<String, dynamic>>(threeTierConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceState.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceState(
      appLocation: (() { final guardedValue = map['appLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourcesNetworkAccessType: (() { final guardedValue = map['managedResourcesNetworkAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapFqdn: (() { final guardedValue = map['sapFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapProduct: (() { final guardedValue = map['sapProduct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threeTierConfiguration: (() { final guardedValue = map['threeTierConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
