// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageQueueMessage {
  /// Gets or sets the message.
  final pulumi.Input<String>? message;
  /// Gets or sets the queue name.
  final pulumi.Input<String>? queueName;
  /// Gets or sets the SAS key.
  final pulumi.Input<String>? sasToken;
  /// Gets or sets the storage account name.
  final pulumi.Input<String>? storageAccount;

  /// Creates a new [StorageQueueMessage].
  /// [message] Gets or sets the message.
  /// [queueName] Gets or sets the queue name.
  /// [sasToken] Gets or sets the SAS key.
  /// [storageAccount] Gets or sets the storage account name.
  StorageQueueMessage({
    this.message,
    this.queueName,
    this.sasToken,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'queueName': ?queueName,
      'sasToken': ?sasToken,
      'storageAccount': ?storageAccount,
    };
  }

  factory StorageQueueMessage.fromMap(Map<String, dynamic> map) {
    return StorageQueueMessage(
      message: map['message'] == null ? null : (map['message'] as String).input(),
      queueName: map['queueName'] == null ? null : (map['queueName'] as String).input(),
      sasToken: map['sasToken'] == null ? null : (map['sasToken'] as String).input(),
      storageAccount: map['storageAccount'] == null ? null : (map['storageAccount'] as String).input(),
    );
  }
}

