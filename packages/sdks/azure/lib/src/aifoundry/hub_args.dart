// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_encryption.dart';
import 'hub_identity.dart';
import 'hub_managed_network.dart';

/// {@template pulumi_aifoundry_hub_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_aifoundry_hub_hub_args_doc}
class HubArgs {
  /// The Application Insights ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String?>? applicationInsightsId;
  /// The Container Registry ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String?>? containerRegistryId;
  /// The description of this AI Foundry Hub.
  final pulumi.Input<String?>? description;
  /// An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<HubEncryption?>? encryption;
  /// The display name of this AI Foundry Hub.
  final pulumi.Input<String?>? friendlyName;
  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  ///
  /// &gt; **Note:** `highBusinessImpactEnabled` will be enabled by default when creating an AI Foundry Hub with `encryption` enabled.
  final pulumi.Input<bool?>? highBusinessImpactEnabled;
  /// A `identity` block as defined below.
  final pulumi.Input<HubIdentity> identity;
  /// The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> keyVaultId;
  /// The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String?>? location;
  /// A `managedNetwork` block as defined below.
  final pulumi.Input<HubManagedNetwork?>? managedNetwork;
  /// The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String?>? name;
  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  final pulumi.Input<String?>? primaryUserAssignedIdentity;
  /// Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> storageAccountId;
  /// A mapping of tags which should be assigned to the AI Foundry Hub.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [HubArgs].
  /// [applicationInsightsId] The Application Insights ID that should be used by this AI Foundry Hub.
  /// [containerRegistryId] The Container Registry ID that should be used by this AI Foundry Hub.
  /// [description] The description of this AI Foundry Hub.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  /// [friendlyName] The display name of this AI Foundry Hub.
  /// [highBusinessImpactEnabled] Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [keyVaultId] The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [location] The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [managedNetwork] A `managedNetwork` block as defined below.
  /// [name] The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  /// [publicNetworkAccess] Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [storageAccountId] The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [tags] A mapping of tags which should be assigned to the AI Foundry Hub.
  const HubArgs({
    this.applicationInsightsId,
    this.containerRegistryId,
    this.description,
    this.encryption,
    this.friendlyName,
    this.highBusinessImpactEnabled,
    required this.identity,
    required this.keyVaultId,
    this.location,
    this.managedNetwork,
    this.name,
    this.primaryUserAssignedIdentity,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.storageAccountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'containerRegistryId': ?containerRegistryId,
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<HubEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'highBusinessImpactEnabled': ?highBusinessImpactEnabled,
      'identity': pulumi.Input.mapInputValue<HubIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
      'location': ?location,
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<HubManagedNetwork, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': storageAccountId,
      'tags': ?tags,
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      applicationInsightsId: (() { final guardedValue = map['applicationInsightsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highBusinessImpactEnabled: (() { final guardedValue = map['highBusinessImpactEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: pulumi.Input.fromValue(HubIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetwork: (() { final guardedValue = map['managedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubManagedNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentity: (() { final guardedValue = map['primaryUserAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
