// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cors.dart';
import 'account_data_store.dart';
import 'account_identity.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// A `cors` block as defined below
  final pulumi.Input<AccountCors>? cors;
  /// One or more `data_store` blocks as defined below.
  final pulumi.Input<List<AccountDataStore>>? dataStores;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// The Location in which the Azure Maps Account should be provisioned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Azure Maps Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs.
  final pulumi.Input<String>? primaryAccessKey;
  /// The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary key used to authenticate and authorize access to the Maps REST APIs.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Gen1 SKUs (`S0` and `S1`) are deprecated and can no longer be used for new deployments, which should instead use a Gen2 SKU (`G2`) - more information can be found [in the Azure documentation](https://learn.microsoft.com/azure/azure-maps/how-to-manage-pricing-tier).
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the Azure Maps Account.
  final pulumi.Input<Map<String, String>>? tags;
  /// A unique identifier for the Maps Account.
  final pulumi.Input<String>? xMsClientId;

  /// Creates a new [AccountState].
  /// [cors] A `cors` block as defined below
  /// [dataStores] One or more `data_store` blocks as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`.
  /// [location] The Location in which the Azure Maps Account should be provisioned. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Maps Account. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The primary key used to authenticate and authorize access to the Maps REST APIs.
  /// [resourceGroupName] The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The secondary key used to authenticate and authorize access to the Maps REST APIs.
  /// [skuName] The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Azure Maps Account.
  /// [xMsClientId] A unique identifier for the Maps Account.
  AccountState({
    this.cors,
    this.dataStores,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.primaryAccessKey,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.skuName,
    this.tags,
    this.xMsClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cors': ?pulumi.Input.mapOptionalInputValue<AccountCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'dataStores': ?pulumi.Input.mapOptionalInputValue<List<AccountDataStore>, List<Map<String, dynamic>>>(dataStores, (value) => pulumi.Input.encodeList<AccountDataStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'skuName': ?skuName,
      'tags': ?tags,
      'xMsClientId': ?xMsClientId,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      cors: map['cors'] == null ? null : (AccountCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      dataStores: map['dataStores'] == null ? null : (pulumi.Input.decodeList<AccountDataStore>(map['dataStores']!, (value) => AccountDataStore.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      xMsClientId: map['xMsClientId'] == null ? null : (map['xMsClientId']! as String).input(),
    );
  }
}

