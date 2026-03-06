// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AIServicesStorage {
  /// The client ID of the Managed Identity associated with the Storage Account.
  final pulumi.Input<String>? identityClientId;
  /// The ID of the Storage Account.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AIServicesStorage].
  /// [identityClientId] The client ID of the Managed Identity associated with the Storage Account.
  /// [storageAccountId] The ID of the Storage Account.
  const AIServicesStorage({
    this.identityClientId,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'storageAccountId': storageAccountId,
    };
  }

  factory AIServicesStorage.fromMap(Map<String, dynamic> map) {
    return AIServicesStorage(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

