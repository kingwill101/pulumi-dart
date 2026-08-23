// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cors.dart';
import 'account_data_store.dart';
import 'account_identity.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
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
  /// The primary key used to authenticate and authorize access to the Maps REST APIs.
  final pulumi.Input<String>? primaryAccessKey;
  /// The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary key used to authenticate and authorize access to the Maps REST APIs.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Gen1 SKUs (`S0` and `S1`) are deprecated and can no longer be used for new deployments, which should instead use a Gen2 SKU (`G2`) - more information can be found [in the Azure documentation](https://learn.microsoft.com/azure/azure-maps/how-to-manage-pricing-tier).
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the Azure Maps Account.
  final pulumi.Input<Map<String, String>>? tags;
  /// A unique identifier for the Maps Account.
  final pulumi.Input<String>? xMsClientId;

  /// Creates a new [AccountState].
  /// [cors] A `cors` block as defined below
  /// [dataStores] One or more `dataStore` blocks as defined below.
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
  const AccountState({
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
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStores: (() { final guardedValue = map['dataStores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountDataStore>(guardedValue, (value) => AccountDataStore.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      xMsClientId: (() { final guardedValue = map['xMsClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
