// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunctionAppHostKeys.
class GetFunctionAppHostKeysResult {
  /// Function App resource's Blobs Extension system key.
  final String? blobsExtensionKey;
  /// Function App resource's default function key.
  final String? defaultFunctionKey;
  /// Function App resource's Durable Task Extension system key.
  final String? durabletaskExtensionKey;
  /// Function App resource's Event Grid Extension Config system key.
  final String? eventGridExtensionConfigKey;
  final String? eventGridExtensionKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Function App resource's secret key
  final String? primaryKey;
  final String? resourceGroupName;
  /// Function App resource's SignalR Extension system key.
  final String? signalrExtensionKey;
  /// Function App resource's Web PubSub Extension system key.
  final String? webpubsubExtensionKey;

  /// Creates a new [GetFunctionAppHostKeysResult].
  /// [blobsExtensionKey] Function App resource's Blobs Extension system key.
  /// [defaultFunctionKey] Function App resource's default function key.
  /// [durabletaskExtensionKey] Function App resource's Durable Task Extension system key.
  /// [eventGridExtensionConfigKey] Function App resource's Event Grid Extension Config system key.
  /// [eventGridExtensionKey] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [primaryKey] Function App resource's secret key
  /// [resourceGroupName] Optional.
  /// [signalrExtensionKey] Function App resource's SignalR Extension system key.
  /// [webpubsubExtensionKey] Function App resource's Web PubSub Extension system key.
  const GetFunctionAppHostKeysResult({
    this.blobsExtensionKey,
    this.defaultFunctionKey,
    this.durabletaskExtensionKey,
    this.eventGridExtensionConfigKey,
    this.eventGridExtensionKey,
    this.id,
    this.name,
    this.primaryKey,
    this.resourceGroupName,
    this.signalrExtensionKey,
    this.webpubsubExtensionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobsExtensionKey': ?blobsExtensionKey,
      'defaultFunctionKey': ?defaultFunctionKey,
      'durabletaskExtensionKey': ?durabletaskExtensionKey,
      'eventGridExtensionConfigKey': ?eventGridExtensionConfigKey,
      'eventGridExtensionKey': ?eventGridExtensionKey,
      'id': ?id,
      'name': ?name,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'signalrExtensionKey': ?signalrExtensionKey,
      'webpubsubExtensionKey': ?webpubsubExtensionKey,
    };
  }

  factory GetFunctionAppHostKeysResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppHostKeysResult(
      blobsExtensionKey: (() { final guardedValue = map['blobsExtensionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultFunctionKey: (() { final guardedValue = map['defaultFunctionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      durabletaskExtensionKey: (() { final guardedValue = map['durabletaskExtensionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventGridExtensionConfigKey: (() { final guardedValue = map['eventGridExtensionConfigKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventGridExtensionKey: (() { final guardedValue = map['eventGridExtensionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signalrExtensionKey: (() { final guardedValue = map['signalrExtensionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webpubsubExtensionKey: (() { final guardedValue = map['webpubsubExtensionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
