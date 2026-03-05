// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountStorage {
  /// The client ID of the managed identity associated with the storage resource.
  final pulumi.Input<String> identityClientId;
  /// The ID of the Storage Account resource associated with this Cognitive Services Account.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetAccountStorage].
  /// [identityClientId] The client ID of the managed identity associated with the storage resource.
  /// [storageAccountId] The ID of the Storage Account resource associated with this Cognitive Services Account.
  GetAccountStorage({
    required this.identityClientId,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetAccountStorage.fromMap(Map<String, dynamic> map) {
    return GetAccountStorage(
      identityClientId: pulumi.Input.fromValue(map['identityClientId'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

