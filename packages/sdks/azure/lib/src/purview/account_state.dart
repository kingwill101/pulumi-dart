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
  /// > **Note:** `managed_event_hub_enabled` must be `false` in order to use a Kafka Configuration with the Purview Account.
  final pulumi.Input<bool>? managedEventHubEnabled;
  /// The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created.
  ///
  /// > **Note:** `managed_resource_group_name` must be a new Resource Group.
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
  AccountState({
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
      atlasKafkaEndpointPrimaryConnectionString: map['atlasKafkaEndpointPrimaryConnectionString'] == null ? null : (map['atlasKafkaEndpointPrimaryConnectionString'] as String).input(),
      atlasKafkaEndpointSecondaryConnectionString: map['atlasKafkaEndpointSecondaryConnectionString'] == null ? null : (map['atlasKafkaEndpointSecondaryConnectionString'] as String).input(),
      awsExternalId: map['awsExternalId'] == null ? null : (map['awsExternalId'] as String).input(),
      catalogEndpoint: map['catalogEndpoint'] == null ? null : (map['catalogEndpoint'] as String).input(),
      guardianEndpoint: map['guardianEndpoint'] == null ? null : (map['guardianEndpoint'] as String).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedEventHubEnabled: map['managedEventHubEnabled'] == null ? null : (map['managedEventHubEnabled'] as bool).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName'] as String).input(),
      managedResources: map['managedResources'] == null ? null : (pulumi.Input.decodeList<AccountManagedResource>(map['managedResources'], (value) => AccountManagedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicNetworkEnabled: map['publicNetworkEnabled'] == null ? null : (map['publicNetworkEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      scanEndpoint: map['scanEndpoint'] == null ? null : (map['scanEndpoint'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

