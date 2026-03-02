// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';

/// {@template pulumi_datashare_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_datashare_account_account_args_doc}
class AccountArgs {
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<AccountIdentity> identity;
  /// The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Share Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  /// [name] The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  /// [tags] A mapping of tags which should be assigned to the Data Share Account.
  AccountArgs({
    required this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      identity: (AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

