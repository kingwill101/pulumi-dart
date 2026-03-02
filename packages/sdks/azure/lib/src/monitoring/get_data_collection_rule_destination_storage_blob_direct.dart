// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDestinationStorageBlobDirect {
  /// The Storage Container name.
  final pulumi.Input<String> containerName;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// The resource ID of the Storage Account.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetDataCollectionRuleDestinationStorageBlobDirect].
  /// [containerName] The Storage Container name.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  GetDataCollectionRuleDestinationStorageBlobDirect({
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

  factory GetDataCollectionRuleDestinationStorageBlobDirect.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationStorageBlobDirect(
      containerName: (map['containerName'] as String).input(),
      name: (map['name'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

