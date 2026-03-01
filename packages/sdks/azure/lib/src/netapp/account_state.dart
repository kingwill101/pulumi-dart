// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_active_directory.dart';
import 'account_identity.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// A `active_directory` block as defined below.
  final pulumi.Input<AccountActiveDirectory>? activeDirectory;
  /// The `identity` block where it is used when customer managed keys based encryption will be enabled as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the NetApp Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [activeDirectory] A `active_directory` block as defined below.
  /// [identity] The `identity` block where it is used when customer managed keys based encryption will be enabled as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Account. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    pulumi.Output<AccountActiveDirectory>? activeDirectory,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activeDirectory = pulumi.Input.asOptionalInput<AccountActiveDirectory>(activeDirectory),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<AccountActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      activeDirectory: map['activeDirectory'] == null ? null : pulumi.Output.create<AccountActiveDirectory>(AccountActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

