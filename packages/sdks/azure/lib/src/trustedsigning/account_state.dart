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
  AccountState({
    pulumi.Output<String>? accountUri,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountUri = pulumi.Input.asOptionalInput<String>(accountUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountUri: map['accountUri'] == null ? null : pulumi.Output.create<String>(map['accountUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

