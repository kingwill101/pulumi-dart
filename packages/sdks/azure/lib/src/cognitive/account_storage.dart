// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountStorage {
  /// The client ID of the managed identity associated with the storage resource.
  ///
  /// &gt; **Note:** Not all `kind` support a `storage` block. For example the `kind` `OpenAI` does not support it.
  final pulumi.Input<String>? identityClientId;
  /// Full resource id of a Microsoft.Storage resource.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AccountStorage].
  /// [identityClientId] The client ID of the managed identity associated with the storage resource.
  /// [storageAccountId] Full resource id of a Microsoft.Storage resource.
  const AccountStorage({
    this.identityClientId,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'storageAccountId': storageAccountId,
    };
  }

  factory AccountStorage.fromMap(Map<String, dynamic> map) {
    return AccountStorage(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
