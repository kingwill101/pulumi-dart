// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationStorageBlob {
  /// The Storage Container name.
  final String containerName;
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// The resource ID of the Storage Account.
  final String storageAccountId;

  /// Creates a new [GetDataCollectionRuleDestinationStorageBlob].
  /// [containerName] The Storage Container name.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  GetDataCollectionRuleDestinationStorageBlob({
    required this.containerName,
    required this.name,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'name': name,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetDataCollectionRuleDestinationStorageBlob.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationStorageBlob(
      containerName: map['containerName'] as String,
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

