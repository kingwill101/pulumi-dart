// ignore_for_file: unused_element, unnecessary_cast


class AccountDataStore {
  /// The ID of the Storage Account that should be linked to this Azure Maps Account.
  final String? storageAccountId;
  /// The name given to the linked Storage Account.
  final String uniqueName;

  /// Creates a new [AccountDataStore].
  /// [storageAccountId] The ID of the Storage Account that should be linked to this Azure Maps Account.
  /// [uniqueName] The name given to the linked Storage Account.
  AccountDataStore({
    this.storageAccountId,
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': ?storageAccountId,
      'uniqueName': uniqueName,
    };
  }

  factory AccountDataStore.fromMap(Map<String, dynamic> map) {
    return AccountDataStore(
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      uniqueName: map['uniqueName'] as String,
    );
  }
}

