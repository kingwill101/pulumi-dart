// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_storage_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// A mapping of MetaData for this Queue.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Queue.
  final pulumi.Input<String> name;
  /// The name of the Storage Account where the Queue exists. This property will become Required in version 5.0 of the Provider.
  ///
  /// &gt; **Note:** One of `storageAccountName` or `storageAccountId` must be specified. When specifying `storageAccountId` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Queue exists. This property is deprecated in favour of `storageAccountId`.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GetQueueArgs].
  /// [metadata] A mapping of MetaData for this Queue.
  /// [name] The name of the Queue.
  /// [storageAccountId] The name of the Storage Account where the Queue exists. This property will become Required in version 5.0 of the Provider.
  /// [storageAccountName] The name of the Storage Account where the Queue exists. This property is deprecated in favour of `storageAccountId`.
  const GetQueueArgs({
    this.metadata,
    required this.name,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
