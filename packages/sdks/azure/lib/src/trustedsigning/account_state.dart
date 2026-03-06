// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The URI of the Trusted Signing Account which is used during signing files.
  final pulumi.Input<String>? accountUri;
  /// The Azure Region where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Trusted Signing Account. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The sku name of this Trusted Signing Account. Possible values are `Basic` and `Premium`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Trusted Signing Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [accountUri] The URI of the Trusted Signing Account which is used during signing files.
  /// [location] The Azure Region where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  /// [name] The name which should be used for this Trusted Signing Account. Changing this forces a new Trusted Signing Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  /// [skuName] The sku name of this Trusted Signing Account. Possible values are `Basic` and `Premium`.
  /// [tags] A mapping of tags which should be assigned to the Trusted Signing Account.
  const AccountState({
    this.accountUri,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUri': ?accountUri,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountUri: (() { final guardedValue = map['accountUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

