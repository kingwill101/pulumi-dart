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
    pulumi.Output<AccountActiveDirectory>? activeDirectory,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activeDirectory = pulumi.Input.asOptionalInput<AccountActiveDirectory>(activeDirectory),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activeDirectory: map['activeDirectory'] == null ? null : pulumi.Output.create<AccountActiveDirectory>(AccountActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

