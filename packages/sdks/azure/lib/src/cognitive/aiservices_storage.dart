// ignore_for_file: unused_element, unnecessary_cast


class AIServicesStorage {
  /// The client ID of the Managed Identity associated with the Storage Account.
  final String? identityClientId;
  /// The ID of the Storage Account.
  final String storageAccountId;

  /// Creates a new [AIServicesStorage].
  /// [identityClientId] The client ID of the Managed Identity associated with the Storage Account.
  /// [storageAccountId] The ID of the Storage Account.
  AIServicesStorage({
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
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

