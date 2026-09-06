// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// Integer indicating an approximate number of messages in the queue. This number is not lower than the actual number of messages in the queue, but could be higher.
  final int? approximateMessageCount;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// A name-value pair that represents queue metadata.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetQueueResult].
  /// [approximateMessageCount] Integer indicating an approximate number of messages in the queue. This number is not lower than the actual number of messages in the queue, but could be higher.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [metadata] A name-value pair that represents queue metadata.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetQueueResult({
    this.approximateMessageCount,
    this.azureApiVersion,
    this.id,
    this.metadata,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateMessageCount': ?approximateMessageCount,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      approximateMessageCount: (() { final guardedValue = map['approximateMessageCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
