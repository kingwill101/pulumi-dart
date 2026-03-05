// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageQueueMessageResponse {
  /// Gets or sets the message.
  final pulumi.Input<String>? message;
  /// Gets or sets the queue name.
  final pulumi.Input<String>? queueName;
  /// Gets or sets the SAS key.
  final pulumi.Input<String>? sasToken;
  /// Gets or sets the storage account name.
  final pulumi.Input<String>? storageAccount;

  /// Creates a new [StorageQueueMessageResponse].
  /// [message] Gets or sets the message.
  /// [queueName] Gets or sets the queue name.
  /// [sasToken] Gets or sets the SAS key.
  /// [storageAccount] Gets or sets the storage account name.
  StorageQueueMessageResponse({
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

  factory StorageQueueMessageResponse.fromMap(Map<String, dynamic> map) {
    return StorageQueueMessageResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

