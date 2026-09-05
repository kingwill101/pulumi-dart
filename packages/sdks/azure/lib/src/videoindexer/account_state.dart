// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';
import 'account_storage.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity?>? identity;
  /// The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `storage` block as defined below.
  final pulumi.Input<AccountStorage?>? storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccountState].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  /// [name] The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  /// [publicNetworkAccess] The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  /// [storage] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const AccountState({
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.storage,
    this.tags,
  });

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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
