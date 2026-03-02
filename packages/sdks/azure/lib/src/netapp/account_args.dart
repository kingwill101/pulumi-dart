// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_active_directory.dart';
import 'account_identity.dart';

/// {@template pulumi_netapp_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_netapp_account_account_args_doc}
class AccountArgs {
  /// A `active_directory` block as defined below.
  final pulumi.Input<AccountActiveDirectory>? activeDirectory;
  /// The `identity` block where it is used when customer managed keys based encryption will be enabled as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the NetApp Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [activeDirectory] A `active_directory` block as defined below.
  /// [identity] The `identity` block where it is used when customer managed keys based encryption will be enabled as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Account. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountArgs({
    this.activeDirectory,
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<AccountActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      activeDirectory: map['activeDirectory'] == null ? null : (AccountActiveDirectory.fromMap((map['activeDirectory']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

