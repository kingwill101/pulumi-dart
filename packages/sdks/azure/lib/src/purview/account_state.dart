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
    pulumi.Output<String>? atlasKafkaEndpointPrimaryConnectionString,
    pulumi.Output<String>? atlasKafkaEndpointSecondaryConnectionString,
    pulumi.Output<String>? awsExternalId,
    pulumi.Output<String>? catalogEndpoint,
    pulumi.Output<String>? guardianEndpoint,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? managedEventHubEnabled,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<List<AccountManagedResource>>? managedResources,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? scanEndpoint,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      atlasKafkaEndpointPrimaryConnectionString = pulumi.Input.asOptionalInput<String>(atlasKafkaEndpointPrimaryConnectionString),
      atlasKafkaEndpointSecondaryConnectionString = pulumi.Input.asOptionalInput<String>(atlasKafkaEndpointSecondaryConnectionString),
      awsExternalId = pulumi.Input.asOptionalInput<String>(awsExternalId),
      catalogEndpoint = pulumi.Input.asOptionalInput<String>(catalogEndpoint),
      guardianEndpoint = pulumi.Input.asOptionalInput<String>(guardianEndpoint),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedEventHubEnabled = pulumi.Input.asOptionalInput<bool>(managedEventHubEnabled),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedResources = pulumi.Input.asOptionalInput<List<AccountManagedResource>>(managedResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scanEndpoint = pulumi.Input.asOptionalInput<String>(scanEndpoint),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      atlasKafkaEndpointPrimaryConnectionString: map['atlasKafkaEndpointPrimaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['atlasKafkaEndpointPrimaryConnectionString'] as String),
      atlasKafkaEndpointSecondaryConnectionString: map['atlasKafkaEndpointSecondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['atlasKafkaEndpointSecondaryConnectionString'] as String),
      awsExternalId: map['awsExternalId'] == null ? null : pulumi.Output.create<String>(map['awsExternalId'] as String),
      catalogEndpoint: map['catalogEndpoint'] == null ? null : pulumi.Output.create<String>(map['catalogEndpoint'] as String),
      guardianEndpoint: map['guardianEndpoint'] == null ? null : pulumi.Output.create<String>(map['guardianEndpoint'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedEventHubEnabled: map['managedEventHubEnabled'] == null ? null : pulumi.Output.create<bool>(map['managedEventHubEnabled'] as bool),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedResources: map['managedResources'] == null ? null : pulumi.Output.create<List<AccountManagedResource>>(pulumi.Input.decodeList<AccountManagedResource>(map['managedResources'], (value) => AccountManagedResource.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkEnabled: map['publicNetworkEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scanEndpoint: map['scanEndpoint'] == null ? null : pulumi.Output.create<String>(map['scanEndpoint'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

