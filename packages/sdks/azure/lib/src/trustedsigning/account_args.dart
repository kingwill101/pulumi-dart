// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_trustedsigning_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_trustedsigning_account_account_args_doc}
class AccountArgs {
  /// The Azure Region where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Trusted Signing Account. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The sku name of this Trusted Signing Account. Possible values are `Basic` and `Premium`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Trusted Signing Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [location] The Azure Region where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  /// [name] The name which should be used for this Trusted Signing Account. Changing this forces a new Trusted Signing Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Trusted Signing Account should exist. Changing this forces a new Trusted Signing Account to be created.
  /// [skuName] The sku name of this Trusted Signing Account. Possible values are `Basic` and `Premium`.
  /// [tags] A mapping of tags which should be assigned to the Trusted Signing Account.
  AccountArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skuName: (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

