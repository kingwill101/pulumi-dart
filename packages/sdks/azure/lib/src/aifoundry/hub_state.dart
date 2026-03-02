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
    this.applicationInsightsId,
    this.containerRegistryId,
    this.description,
    this.discoveryUrl,
    this.encryption,
    this.friendlyName,
    this.highBusinessImpactEnabled,
    this.identity,
    this.keyVaultId,
    this.location,
    this.managedNetwork,
    this.name,
    this.primaryUserAssignedIdentity,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.storageAccountId,
    this.tags,
    this.workspaceId,
  });

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
      applicationInsightsId: map['applicationInsightsId'] == null ? null : (map['applicationInsightsId'] as String).input(),
      containerRegistryId: map['containerRegistryId'] == null ? null : (map['containerRegistryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoveryUrl: map['discoveryUrl'] == null ? null : (map['discoveryUrl'] as String).input(),
      encryption: map['encryption'] == null ? null : (HubEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      highBusinessImpactEnabled: map['highBusinessImpactEnabled'] == null ? null : (map['highBusinessImpactEnabled'] as bool).input(),
      identity: map['identity'] == null ? null : (HubIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedNetwork: map['managedNetwork'] == null ? null : (HubManagedNetwork.fromMap((map['managedNetwork'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : (map['primaryUserAssignedIdentity'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}

