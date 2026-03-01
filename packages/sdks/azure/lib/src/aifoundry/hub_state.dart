// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_encryption.dart';
import 'hub_identity.dart';
import 'hub_managed_network.dart';

/// Input properties used for looking up and filtering Hub resources.
class HubState {
  /// The Application Insights ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String>? applicationInsightsId;
  /// The Container Registry ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String>? containerRegistryId;
  /// The description of this AI Foundry Hub.
  final pulumi.Input<String>? description;
  /// The URL for the discovery service to identify regional endpoints for AI Foundry Hub services.
  final pulumi.Input<String>? discoveryUrl;
  /// An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<HubEncryption>? encryption;
  /// The display name of this AI Foundry Hub.
  final pulumi.Input<String>? friendlyName;
  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  ///
  /// > **Note:** `high_business_impact_enabled` will be enabled by default when creating an AI Foundry Hub with `encryption` enabled.
  final pulumi.Input<bool>? highBusinessImpactEnabled;
  /// A `identity` block as defined below.
  final pulumi.Input<HubIdentity>? identity;
  /// The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? keyVaultId;
  /// The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? location;
  /// A `managed_network` block as defined below.
  final pulumi.Input<HubManagedNetwork>? managedNetwork;
  /// The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? name;
  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  final pulumi.Input<String>? primaryUserAssignedIdentity;
  /// Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? storageAccountId;
  /// A mapping of tags which should be assigned to the AI Foundry Hub.
  final pulumi.Input<Map<String, String>>? tags;
  /// The immutable ID associated with this AI Foundry Hub.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [HubState].
  /// [applicationInsightsId] The Application Insights ID that should be used by this AI Foundry Hub.
  /// [containerRegistryId] The Container Registry ID that should be used by this AI Foundry Hub.
  /// [description] The description of this AI Foundry Hub.
  /// [discoveryUrl] The URL for the discovery service to identify regional endpoints for AI Foundry Hub services.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  /// [friendlyName] The display name of this AI Foundry Hub.
  /// [highBusinessImpactEnabled] Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [keyVaultId] The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [location] The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [managedNetwork] A `managed_network` block as defined below.
  /// [name] The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  /// [publicNetworkAccess] Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [storageAccountId] The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [tags] A mapping of tags which should be assigned to the AI Foundry Hub.
  /// [workspaceId] The immutable ID associated with this AI Foundry Hub.
  HubState({
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<String>? containerRegistryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? discoveryUrl,
    pulumi.Output<HubEncryption>? encryption,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<bool>? highBusinessImpactEnabled,
    pulumi.Output<HubIdentity>? identity,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? location,
    pulumi.Output<HubManagedNetwork>? managedNetwork,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryUserAssignedIdentity,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      containerRegistryId = pulumi.Input.asOptionalInput<String>(containerRegistryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveryUrl = pulumi.Input.asOptionalInput<String>(discoveryUrl),
      encryption = pulumi.Input.asOptionalInput<HubEncryption>(encryption),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      highBusinessImpactEnabled = pulumi.Input.asOptionalInput<bool>(highBusinessImpactEnabled),
      identity = pulumi.Input.asOptionalInput<HubIdentity>(identity),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedNetwork = pulumi.Input.asOptionalInput<HubManagedNetwork>(managedNetwork),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryUserAssignedIdentity = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentity),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'containerRegistryId': ?containerRegistryId,
      'description': ?description,
      'discoveryUrl': ?discoveryUrl,
      'encryption': ?pulumi.Input.mapOptionalInputValue<HubEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'highBusinessImpactEnabled': ?highBusinessImpactEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<HubIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultId': ?keyVaultId,
      'location': ?location,
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<HubManagedNetwork, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory HubState.fromMap(Map<String, dynamic> map) {
    return HubState(
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      containerRegistryId: map['containerRegistryId'] == null ? null : pulumi.Output.create<String>(map['containerRegistryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveryUrl: map['discoveryUrl'] == null ? null : pulumi.Output.create<String>(map['discoveryUrl'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<HubEncryption>(HubEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      highBusinessImpactEnabled: map['highBusinessImpactEnabled'] == null ? null : pulumi.Output.create<bool>(map['highBusinessImpactEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<HubIdentity>(HubIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedNetwork: map['managedNetwork'] == null ? null : pulumi.Output.create<HubManagedNetwork>(HubManagedNetwork.fromMap((map['managedNetwork'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : pulumi.Output.create<String>(map['primaryUserAssignedIdentity'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

