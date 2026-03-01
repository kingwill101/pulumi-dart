// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';

/// {@template pulumi_purview_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_purview_account_account_args_doc}
class AccountArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity> identity;
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
  /// The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created.
  final pulumi.Input<String>? name;
  /// Should the Purview Account be visible to the public network? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkEnabled;
  /// The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Purview Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  /// [managedEventHubEnabled] Whether the Purview Account should create a managed Event Hub Namespace. Defaults to `true`.
  /// [managedResourceGroupName] The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created.
  /// [name] The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created.
  /// [publicNetworkEnabled] Should the Purview Account be visible to the public network? Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  /// [tags] A mapping of tags which should be assigned to the Purview Account.
  AccountArgs({
    required pulumi.Output<AccountIdentity> identity,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? managedEventHubEnabled,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asInput<AccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedEventHubEnabled = pulumi.Input.asOptionalInput<bool>(managedEventHubEnabled),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedEventHubEnabled': ?managedEventHubEnabled,
      'managedResourceGroupName': ?managedResourceGroupName,
      'name': ?name,
      'publicNetworkEnabled': ?publicNetworkEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      identity: pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedEventHubEnabled: map['managedEventHubEnabled'] == null ? null : pulumi.Output.create<bool>(map['managedEventHubEnabled'] as bool),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkEnabled: map['publicNetworkEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

