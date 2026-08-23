// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// A mapping of MetaData which should be assigned to this Storage Queue.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Resource Manager ID of this Storage Queue.
  final pulumi.Input<String>? resourceManagerId;
  /// The name of the Storage Account where the Storage Queue should be created.
  ///
  /// &gt; **Note:** One of `storageAccountName` or `storageAccountId` must be specified. When specifying `storageAccountId` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Storage Queue should be created. This property is deprecated in favour of `storageAccountId`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storageAccountName` to `storageAccountId` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String>? storageAccountName;
  /// The data plane URL of the Storage Queue in the format of `&lt;storage queue endpoint&gt;/&lt;queue name&gt;`. E.g. `https://example.queue.core.windows.net/queue1`.
  final pulumi.Input<String>? url;

  /// Creates a new [QueueState].
  /// [metadata] A mapping of MetaData which should be assigned to this Storage Queue.
  /// [name] The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  /// [resourceManagerId] The Resource Manager ID of this Storage Queue.
  /// [storageAccountId] The name of the Storage Account where the Storage Queue should be created.
  /// [storageAccountName] The name of the Storage Account where the Storage Queue should be created. This property is deprecated in favour of `storageAccountId`.
  /// [url] The data plane URL of the Storage Queue in the format of `&lt;storage queue endpoint&gt;/&lt;queue name&gt;`. E.g. `https://example.queue.core.windows.net/queue1`.
  const QueueState({
    this.metadata,
    this.name,
    this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': ?name,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
      'url': ?url,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
