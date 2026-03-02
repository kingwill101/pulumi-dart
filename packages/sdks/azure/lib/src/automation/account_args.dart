// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption.dart';
import 'account_identity.dart';

/// {@template pulumi_automation_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_automation_account_account_args_doc}
class AccountArgs {
  /// An `encryption` block as defined below.
  final pulumi.Input<List<AccountEncryption>>? encryptions;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Whether requests using non-AAD authentication are blocked. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed for the automation account. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the account. Possible values are `Basic` and `Free`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [encryptions] An `encryption` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Whether requests using non-AAD authentication are blocked. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the automation account. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created.
  /// [skuName] The SKU of the account. Possible values are `Basic` and `Free`.
  /// [tags] A mapping of tags to assign to the resource.
  AccountArgs({
    this.encryptions,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptions': ?pulumi.Input.mapOptionalInputValue<List<AccountEncryption>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<AccountEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      encryptions: map['encryptions'] == null ? null : (pulumi.Input.decodeList<AccountEncryption>(map['encryptions']!, (value) => AccountEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skuName: (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

