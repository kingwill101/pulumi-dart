// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDestinationsStorageTableDirect {
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// The resource ID of the Storage Account.
  final pulumi.Input<String> storageAccountId;
  /// The Storage Table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [DataCollectionRuleDestinationsStorageTableDirect].
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  /// [tableName] The Storage Table name.
  const DataCollectionRuleDestinationsStorageTableDirect({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
