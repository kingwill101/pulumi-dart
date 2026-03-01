// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDestinationsStorageTableDirect {
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final String name;
  /// The resource ID of the Storage Account.
  final String storageAccountId;
  /// The Storage Table name.
  final String tableName;

  /// Creates a new [DataCollectionRuleDestinationsStorageTableDirect].
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  /// [tableName] The Storage Table name.
  DataCollectionRuleDestinationsStorageTableDirect({
    required this.name,
    required this.storageAccountId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountId': storageAccountId,
      'tableName': tableName,
    };
  }

  factory DataCollectionRuleDestinationsStorageTableDirect.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsStorageTableDirect(
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

