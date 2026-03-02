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
  /// > **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Storage Queue should be created. This property is deprecated in favour of `storage_account_id`.
  ///
  /// > **Note:** Migrating from the deprecated `storage_account_name` to `storage_account_id` is supported without recreation. Any other change to either property will result in the resource being recreated.
  final pulumi.Input<String>? storageAccountName;
  /// The data plane URL of the Storage Queue in the format of `<storage queue endpoint>/<queue name>`. E.g. `https://example.queue.core.windows.net/queue1`.
  final pulumi.Input<String>? url;

  /// Creates a new [QueueState].
  /// [metadata] A mapping of MetaData which should be assigned to this Storage Queue.
  /// [name] The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  /// [resourceManagerId] The Resource Manager ID of this Storage Queue.
  /// [storageAccountId] The name of the Storage Account where the Storage Queue should be created.
  /// [storageAccountName] The name of the Storage Account where the Storage Queue should be created. This property is deprecated in favour of `storage_account_id`.
  /// [url] The data plane URL of the Storage Queue in the format of `<storage queue endpoint>/<queue name>`. E.g. `https://example.queue.core.windows.net/queue1`.
  QueueState({
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
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceManagerId: map['resourceManagerId'] == null ? null : (map['resourceManagerId']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

