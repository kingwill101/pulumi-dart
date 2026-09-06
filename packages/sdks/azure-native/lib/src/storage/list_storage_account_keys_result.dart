// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_key_response.dart';

/// Result data returned by listStorageAccountKeys.
class ListStorageAccountKeysResult {
  /// Gets the list of storage account keys and their properties for the specified storage account.
  final List<StorageAccountKeyResponse>? keys;

  /// Creates a new [ListStorageAccountKeysResult].
  /// [keys] Gets the list of storage account keys and their properties for the specified storage account.
  const ListStorageAccountKeysResult({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?(() { final guardedValue = keys; if (guardedValue == null) return null; return pulumi.Input.encodeList<StorageAccountKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListStorageAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountKeysResult(
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageAccountKeyResponse>(guardedValue, (value) => StorageAccountKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
