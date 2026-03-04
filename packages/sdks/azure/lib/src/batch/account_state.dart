// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption.dart';
import 'account_identity.dart';
import 'account_key_vault_reference.dart';
import 'account_network_profile.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The account endpoint used to interact with the Batch service.
  final pulumi.Input<String>? accountEndpoint;

  /// Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`.
  final pulumi.Input<List<String>>? allowedAuthenticationModes;

  /// Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block as defined below.
  final pulumi.Input<AccountEncryption>? encryption;

  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;

  /// A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  final pulumi.Input<AccountKeyVaultReference>? keyVaultReference;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A `network_profile` block as defined below.
  final pulumi.Input<AccountNetworkProfile>? networkProfile;

  /// Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`.
  final pulumi.Input<String>? poolAllocationMode;

  /// The Batch account primary access key.
  final pulumi.Input<String>? primaryAccessKey;

  /// Whether public network access is allowed for this server. Defaults to `true`.
  ///
  /// &gt; **NOTE:** When using `UserSubscription` mode, an Azure KeyVault reference has to be specified. See `key_vault_reference` below.
  ///
  /// &gt; **NOTE:** When using `UserSubscription` mode, the `Microsoft Azure Batch` service principal has to have `Contributor` role on your subscription scope, as documented [here](https://docs.microsoft.com/azure/batch/batch-account-create-portal#additional-configuration-for-user-subscription-mode).
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** To work around [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/5574) this property is currently treated as case-insensitive. A future version of this provider will require that the casing is correct.
  final pulumi.Input<String>? resourceGroupName;

  /// The Batch account secondary access key.
  final pulumi.Input<String>? secondaryAccessKey;

  /// Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`.
  ///
  /// &gt; **NOTE:** When using `BatchAccountManagedIdentity` mod, the `identity.type` must set to `UserAssigned` or `SystemAssigned`.
  final pulumi.Input<String>? storageAccountAuthenticationMode;

  /// Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage.
  ///
  /// &gt; **NOTE:** When using `storage_account_id`, the `storage_account_authentication_mode` must be specified as well.
  final pulumi.Input<String>? storageAccountId;

  /// Specifies the user assigned identity for the storage account.
  final pulumi.Input<String>? storageAccountNodeIdentity;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [accountEndpoint] The account endpoint used to interact with the Batch service.
  /// [allowedAuthenticationModes] Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`.
  /// [encryption] Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReference] A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [poolAllocationMode] Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`.
  /// [primaryAccessKey] The Batch account primary access key.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The Batch account secondary access key.
  /// [storageAccountAuthenticationMode] Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`.
  /// [storageAccountId] Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage.
  /// [storageAccountNodeIdentity] Specifies the user assigned identity for the storage account.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    this.accountEndpoint,
    this.allowedAuthenticationModes,
    this.encryption,
    this.identity,
    this.keyVaultReference,
    this.location,
    this.name,
    this.networkProfile,
    this.poolAllocationMode,
    this.primaryAccessKey,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.storageAccountAuthenticationMode,
    this.storageAccountId,
    this.storageAccountNodeIdentity,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': ?accountEndpoint,
      'allowedAuthenticationModes': ?allowedAuthenticationModes,
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            AccountEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            AccountIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultReference':
          ?pulumi.Input.mapOptionalInputValue<
            AccountKeyVaultReference,
            Map<String, dynamic>
          >(keyVaultReference, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'networkProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AccountNetworkProfile,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'poolAllocationMode': ?poolAllocationMode,
      'primaryAccessKey': ?primaryAccessKey,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'storageAccountAuthenticationMode': ?storageAccountAuthenticationMode,
      'storageAccountId': ?storageAccountId,
      'storageAccountNodeIdentity': ?storageAccountNodeIdentity,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountEndpoint: (() {
        final guardedValue = map['accountEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allowedAuthenticationModes: (() {
        final guardedValue = map['allowedAuthenticationModes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVaultReference: (() {
        final guardedValue = map['keyVaultReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountKeyVaultReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountNetworkProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      poolAllocationMode: (() {
        final guardedValue = map['poolAllocationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryAccessKey: (() {
        final guardedValue = map['primaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryAccessKey: (() {
        final guardedValue = map['secondaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountAuthenticationMode: (() {
        final guardedValue = map['storageAccountAuthenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountId: (() {
        final guardedValue = map['storageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountNodeIdentity: (() {
        final guardedValue = map['storageAccountNodeIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
