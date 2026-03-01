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
    pulumi.Output<AccountCors>? cors,
    pulumi.Output<List<AccountDataStore>>? dataStores,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? xMsClientId,
  }) :
      cors = pulumi.Input.asOptionalInput<AccountCors>(cors),
      dataStores = pulumi.Input.asOptionalInput<List<AccountDataStore>>(dataStores),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      xMsClientId = pulumi.Input.asOptionalInput<String>(xMsClientId);

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
      cors: map['cors'] == null ? null : pulumi.Output.create<AccountCors>(AccountCors.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      dataStores: map['dataStores'] == null ? null : pulumi.Output.create<List<AccountDataStore>>(pulumi.Input.decodeList<AccountDataStore>(map['dataStores'], (value) => AccountDataStore.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      xMsClientId: map['xMsClientId'] == null ? null : pulumi.Output.create<String>(map['xMsClientId'] as String),
    );
  }
}

