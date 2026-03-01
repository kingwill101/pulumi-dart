// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDestinationsStorageBlobDirect {
  /// The Storage Container name.
  final String containerName;
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final String name;
  /// The resource ID of the Storage Account.
  final String storageAccountId;

  /// Creates a new [DataCollectionRuleDestinationsStorageBlobDirect].
  /// [containerName] The Storage Container name.
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  DataCollectionRuleDestinationsStorageBlobDirect({
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

  factory DataCollectionRuleDestinationsStorageBlobDirect.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsStorageBlobDirect(
      containerName: map['containerName'] as String,
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

