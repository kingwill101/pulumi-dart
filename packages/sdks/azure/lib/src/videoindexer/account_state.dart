// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';
import 'account_storage.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `storage` block as defined below.
  final pulumi.Input<AccountStorage>? storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  /// [name] The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  /// [publicNetworkAccess] The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  /// [storage] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AccountStorage>? storage,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storage = pulumi.Input.asOptionalInput<AccountStorage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'storage': ?pulumi.Input.mapOptionalInputValue<AccountStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<AccountStorage>(AccountStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

