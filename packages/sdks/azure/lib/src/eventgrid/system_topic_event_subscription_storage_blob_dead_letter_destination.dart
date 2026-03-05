// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionStorageBlobDeadLetterDestination {
  /// Specifies the id of the storage account id where the storage blob is located.
  final pulumi.Input<String> storageAccountId;
  /// Specifies the name of the Storage blob container that is the destination of the deadletter events.
  final pulumi.Input<String> storageBlobContainerName;

  /// Creates a new [SystemTopicEventSubscriptionStorageBlobDeadLetterDestination].
  /// [storageAccountId] Specifies the id of the storage account id where the storage blob is located.
  /// [storageBlobContainerName] Specifies the name of the Storage blob container that is the destination of the deadletter events.
  SystemTopicEventSubscriptionStorageBlobDeadLetterDestination({
    required this.storageAccountId,
    required this.storageBlobContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': storageAccountId,
      'storageBlobContainerName': storageBlobContainerName,
    };
  }

  factory SystemTopicEventSubscriptionStorageBlobDeadLetterDestination.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionStorageBlobDeadLetterDestination(
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageBlobContainerName: pulumi.Input.fromValue(map['storageBlobContainerName'] as String),
    );
  }
}

