// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_encryption.dart';
import 'get_account_key_vault_reference.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The account endpoint used to interact with the Batch service.
  final String accountEndpoint;
  /// The `encryption` block that describes the Azure KeyVault key reference used to encrypt data for the Azure Batch account.
  final List<GetAccountEncryption> encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The `key_vault_reference` block that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  final List<GetAccountKeyVaultReference> keyVaultReferences;
  /// The Azure Region in which this Batch account exists.
  final String location;
  /// The Batch account name.
  final String name;
  /// The pool allocation mode configured for this Batch account.
  final String poolAllocationMode;
  /// The Batch account primary access key.
  final String primaryAccessKey;
  final String resourceGroupName;
  /// The Batch account secondary access key.
  final String secondaryAccessKey;
  /// The ID of the Storage Account used for this Batch account.
  final String storageAccountId;
  /// A map of tags assigned to the Batch account.
  final Map<String, String> tags;

  /// Creates a new [GetAccountResult].
  /// [accountEndpoint] The account endpoint used to interact with the Batch service.
  /// [encryptions] The `encryption` block that describes the Azure KeyVault key reference used to encrypt data for the Azure Batch account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultReferences] The `key_vault_reference` block that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  /// [location] The Azure Region in which this Batch account exists.
  /// [name] The Batch account name.
  /// [poolAllocationMode] The pool allocation mode configured for this Batch account.
  /// [primaryAccessKey] The Batch account primary access key.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The Batch account secondary access key.
  /// [storageAccountId] The ID of the Storage Account used for this Batch account.
  /// [tags] A map of tags assigned to the Batch account.
  GetAccountResult({
    required this.accountEndpoint,
    required this.encryptions,
    required this.id,
    required this.keyVaultReferences,
    required this.location,
    required this.name,
    required this.poolAllocationMode,
    required this.primaryAccessKey,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.storageAccountId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': accountEndpoint,
      'encryptions': pulumi.Input.encodeList<GetAccountEncryption, Map<String, dynamic>>(encryptions, (value) => value.toMap()),
      'id': id,
      'keyVaultReferences': pulumi.Input.encodeList<GetAccountKeyVaultReference, Map<String, dynamic>>(keyVaultReferences, (value) => value.toMap()),
      'location': location,
      'name': name,
      'poolAllocationMode': poolAllocationMode,
      'primaryAccessKey': primaryAccessKey,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'storageAccountId': storageAccountId,
      'tags': tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountEndpoint: map['accountEndpoint'] as String,
      encryptions: pulumi.Input.decodeList<GetAccountEncryption>(map['encryptions']!, (value) => GetAccountEncryption.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      keyVaultReferences: pulumi.Input.decodeList<GetAccountKeyVaultReference>(map['keyVaultReferences']!, (value) => GetAccountKeyVaultReference.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      poolAllocationMode: map['poolAllocationMode'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      storageAccountId: map['storageAccountId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

