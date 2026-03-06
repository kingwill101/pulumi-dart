// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';
import 'account_managed_resource.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// Atlas Kafka endpoint primary connection string.
  final pulumi.Input<String>? atlasKafkaEndpointPrimaryConnectionString;
  /// Atlas Kafka endpoint secondary connection string.
  final pulumi.Input<String>? atlasKafkaEndpointSecondaryConnectionString;
  /// Configured in AWS to allow use of the role arn used for scanning
  final pulumi.Input<String>? awsExternalId;
  /// Catalog endpoint.
  final pulumi.Input<String>? catalogEndpoint;
  /// Guardian endpoint.
  final pulumi.Input<String>? guardianEndpoint;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  final pulumi.Input<String>? location;
  /// Whether the Purview Account should create a managed Event Hub Namespace. Defaults to `true`.
  ///
  /// &gt; **Note:** `managed_event_hub_enabled` must be `false` in order to use a Kafka Configuration with the Purview Account.
  final pulumi.Input<bool>? managedEventHubEnabled;
  /// The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created.
  ///
  /// &gt; **Note:** `managed_resource_group_name` must be a new Resource Group.
  final pulumi.Input<String>? managedResourceGroupName;
  /// A `managed_resources` block as defined below.
  final pulumi.Input<List<AccountManagedResource>>? managedResources;
  /// The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created.
  final pulumi.Input<String>? name;
  /// Should the Purview Account be visible to the public network? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkEnabled;
  /// The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Scan endpoint.
  final pulumi.Input<String>? scanEndpoint;
  /// A mapping of tags which should be assigned to the Purview Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [atlasKafkaEndpointPrimaryConnectionString] Atlas Kafka endpoint primary connection string.
  /// [atlasKafkaEndpointSecondaryConnectionString] Atlas Kafka endpoint secondary connection string.
  /// [awsExternalId] Configured in AWS to allow use of the role arn used for scanning
  /// [catalogEndpoint] Catalog endpoint.
  /// [guardianEndpoint] Guardian endpoint.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  /// [managedEventHubEnabled] Whether the Purview Account should create a managed Event Hub Namespace. Defaults to `true`.
  /// [managedResourceGroupName] The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created.
  /// [managedResources] A `managed_resources` block as defined below.
  /// [name] The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created.
  /// [publicNetworkEnabled] Should the Purview Account be visible to the public network? Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  /// [scanEndpoint] Scan endpoint.
  /// [tags] A mapping of tags which should be assigned to the Purview Account.
  const AccountState({
    this.atlasKafkaEndpointPrimaryConnectionString,
    this.atlasKafkaEndpointSecondaryConnectionString,
    this.awsExternalId,
    this.catalogEndpoint,
    this.guardianEndpoint,
    this.identity,
    this.location,
    this.managedEventHubEnabled,
    this.managedResourceGroupName,
    this.managedResources,
    this.name,
    this.publicNetworkEnabled,
    this.resourceGroupName,
    this.scanEndpoint,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atlasKafkaEndpointPrimaryConnectionString': ?atlasKafkaEndpointPrimaryConnectionString,
      'atlasKafkaEndpointSecondaryConnectionString': ?atlasKafkaEndpointSecondaryConnectionString,
      'awsExternalId': ?awsExternalId,
      'catalogEndpoint': ?catalogEndpoint,
      'guardianEndpoint': ?guardianEndpoint,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedEventHubEnabled': ?managedEventHubEnabled,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResources': ?pulumi.Input.mapOptionalInputValue<List<AccountManagedResource>, List<Map<String, dynamic>>>(managedResources, (value) => pulumi.Input.encodeList<AccountManagedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'publicNetworkEnabled': ?publicNetworkEnabled,
      'resourceGroupName': ?resourceGroupName,
      'scanEndpoint': ?scanEndpoint,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      atlasKafkaEndpointPrimaryConnectionString: (() { final guardedValue = map['atlasKafkaEndpointPrimaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      atlasKafkaEndpointSecondaryConnectionString: (() { final guardedValue = map['atlasKafkaEndpointSecondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsExternalId: (() { final guardedValue = map['awsExternalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogEndpoint: (() { final guardedValue = map['catalogEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardianEndpoint: (() { final guardedValue = map['guardianEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedEventHubEnabled: (() { final guardedValue = map['managedEventHubEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResources: (() { final guardedValue = map['managedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountManagedResource>(guardedValue, (value) => AccountManagedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkEnabled: (() { final guardedValue = map['publicNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanEndpoint: (() { final guardedValue = map['scanEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

