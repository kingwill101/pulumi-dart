// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_encryption.dart';
import 'get_account_key_vault_reference.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The account endpoint used to interact with the Batch service.
  final String? accountEndpoint;
  /// The `encryption` block that describes the Azure KeyVault key reference used to encrypt data for the Azure Batch account.
  final List<GetAccountEncryption>? encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The `keyVaultReference` block that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  final List<GetAccountKeyVaultReference>? keyVaultReferences;
  /// The Azure Region in which this Batch account exists.
  final String? location;
  /// The Batch account name.
  final String? name;
  /// The pool allocation mode configured for this Batch account.
  final String? poolAllocationMode;
  /// The Batch account primary access key.
  final String? primaryAccessKey;
  final String? resourceGroupName;
  /// The Batch account secondary access key.
  final String? secondaryAccessKey;
  /// The ID of the Storage Account used for this Batch account.
  final String? storageAccountId;
  /// A map of tags assigned to the Batch account.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [accountEndpoint] The account endpoint used to interact with the Batch service.
  /// [encryptions] The `encryption` block that describes the Azure KeyVault key reference used to encrypt data for the Azure Batch account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultReferences] The `keyVaultReference` block that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  /// [location] The Azure Region in which this Batch account exists.
  /// [name] The Batch account name.
  /// [poolAllocationMode] The pool allocation mode configured for this Batch account.
  /// [primaryAccessKey] The Batch account primary access key.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The Batch account secondary access key.
  /// [storageAccountId] The ID of the Storage Account used for this Batch account.
  /// [tags] A map of tags assigned to the Batch account.
  const GetAccountResult({
    this.accountEndpoint,
    this.encryptions,
    this.id,
    this.keyVaultReferences,
    this.location,
    this.name,
    this.poolAllocationMode,
    this.primaryAccessKey,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.storageAccountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': ?accountEndpoint,
      'encryptions': ?(() { final guardedValue = encryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'keyVaultReferences': ?(() { final guardedValue = keyVaultReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountKeyVaultReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'poolAllocationMode': ?poolAllocationMode,
      'primaryAccessKey': ?primaryAccessKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountEndpoint: (() { final guardedValue = map['accountEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountEncryption>(guardedValue, (value) => GetAccountEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultReferences: (() { final guardedValue = map['keyVaultReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountKeyVaultReference>(guardedValue, (value) => GetAccountKeyVaultReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolAllocationMode: (() { final guardedValue = map['poolAllocationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
