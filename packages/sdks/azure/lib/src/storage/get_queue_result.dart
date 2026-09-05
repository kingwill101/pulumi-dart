// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A mapping of MetaData for this Queue.
  final Map<String, String>? metadata;
  final String? name;
  /// The Resource Manager ID of this Storage Queue.
  final String? resourceManagerId;
  final String? storageAccountId;
  final String? storageAccountName;
  /// The data plane URL of the Storage Queue in the format of `&lt;storage queue endpoint&gt;/&lt;queue name&gt;`. E.g. `https://example.queue.core.windows.net/queue1`.
  final String? url;

  /// Creates a new [GetQueueResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] A mapping of MetaData for this Queue.
  /// [name] Optional.
  /// [resourceManagerId] The Resource Manager ID of this Storage Queue.
  /// [storageAccountId] Optional.
  /// [storageAccountName] Optional.
  /// [url] The data plane URL of the Storage Queue in the format of `&lt;storage queue endpoint&gt;/&lt;queue name&gt;`. E.g. `https://example.queue.core.windows.net/queue1`.
  const GetQueueResult({
    this.id,
    this.metadata,
    this.name,
    this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
      'url': ?url,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
