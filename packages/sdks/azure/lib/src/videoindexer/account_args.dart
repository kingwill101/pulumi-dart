// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';
import 'account_storage.dart';

/// {@template pulumi_videoindexer_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_videoindexer_account_account_args_doc}
class AccountArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity> identity;
  /// The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `storage` block as defined below.
  final pulumi.Input<AccountStorage> storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location where the Video Indexer Account exists. Changing this forces a new resource to be created.
  /// [name] The name of the Video Indexer Account. Changing the name forces a new resource to be created.
  /// [publicNetworkAccess] The public network access for the Video Indexer Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group that the Video Indexer Account will be associated with. Changing the name forces a new resource to be created.
  /// [storage] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AccountArgs({
    required this.identity,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.storage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'storage': pulumi.Input.mapInputValue<AccountStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      identity: (AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storage: (AccountStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

