// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cors.dart';
import 'account_data_store.dart';
import 'account_identity.dart';

/// {@template pulumi_maps_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_maps_account_account_args_doc}
class AccountArgs {
  /// A `cors` block as defined below
  final pulumi.Input<AccountCors>? cors;
  /// One or more `dataStore` blocks as defined below.
  final pulumi.Input<List<AccountDataStore>>? dataStores;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// The Location in which the Azure Maps Account should be provisioned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Azure Maps Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Gen1 SKUs (`S0` and `S1`) are deprecated and can no longer be used for new deployments, which should instead use a Gen2 SKU (`G2`) - more information can be found [in the Azure documentation](https://learn.microsoft.com/azure/azure-maps/how-to-manage-pricing-tier).
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the Azure Maps Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [cors] A `cors` block as defined below
  /// [dataStores] One or more `dataStore` blocks as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`.
  /// [location] The Location in which the Azure Maps Account should be provisioned. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Maps Account. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  /// [skuName] The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Azure Maps Account.
  const AccountArgs({
    this.cors,
    this.dataStores,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cors': ?pulumi.Input.mapOptionalInputValue<AccountCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dataStores': ?pulumi.Input.mapOptionalInputValue<List<AccountDataStore>, List<Map<String, dynamic>>>(dataStores, (value) => pulumi.Input.encodeList<AccountDataStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStores: (() { final guardedValue = map['dataStores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountDataStore>(guardedValue, (value) => AccountDataStore.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
