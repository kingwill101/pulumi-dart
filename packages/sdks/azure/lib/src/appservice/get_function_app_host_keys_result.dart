// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFunctionAppHostKeys.
class GetFunctionAppHostKeysResult {
  /// Function App resource's Blobs Extension system key.
  final String blobsExtensionKey;

  /// Function App resource's default function key.
  final String defaultFunctionKey;

  /// Function App resource's Durable Task Extension system key.
  final String durabletaskExtensionKey;

  /// Function App resource's Event Grid Extension Config system key.
  final String eventGridExtensionConfigKey;
  final String eventGridExtensionKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Function App resource's secret key
  final String primaryKey;
  final String resourceGroupName;

  /// Function App resource's SignalR Extension system key.
  final String signalrExtensionKey;

  /// Function App resource's Web PubSub Extension system key.
  final String webpubsubExtensionKey;

  /// Creates a new [GetFunctionAppHostKeysResult].
  /// [blobsExtensionKey] Function App resource's Blobs Extension system key.
  /// [defaultFunctionKey] Function App resource's default function key.
  /// [durabletaskExtensionKey] Function App resource's Durable Task Extension system key.
  /// [eventGridExtensionConfigKey] Function App resource's Event Grid Extension Config system key.
  /// [eventGridExtensionKey] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [primaryKey] Function App resource's secret key
  /// [resourceGroupName] Required.
  /// [signalrExtensionKey] Function App resource's SignalR Extension system key.
  /// [webpubsubExtensionKey] Function App resource's Web PubSub Extension system key.
  GetFunctionAppHostKeysResult({
    required this.blobsExtensionKey,
    required this.defaultFunctionKey,
    required this.durabletaskExtensionKey,
    required this.eventGridExtensionConfigKey,
    required this.eventGridExtensionKey,
    required this.id,
    required this.name,
    required this.primaryKey,
    required this.resourceGroupName,
    required this.signalrExtensionKey,
    required this.webpubsubExtensionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobsExtensionKey': blobsExtensionKey,
      'defaultFunctionKey': defaultFunctionKey,
      'durabletaskExtensionKey': durabletaskExtensionKey,
      'eventGridExtensionConfigKey': eventGridExtensionConfigKey,
      'eventGridExtensionKey': eventGridExtensionKey,
      'id': id,
      'name': name,
      'primaryKey': primaryKey,
      'resourceGroupName': resourceGroupName,
      'signalrExtensionKey': signalrExtensionKey,
      'webpubsubExtensionKey': webpubsubExtensionKey,
    };
  }

  factory GetFunctionAppHostKeysResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppHostKeysResult(
      blobsExtensionKey: map['blobsExtensionKey'] as String,
      defaultFunctionKey: map['defaultFunctionKey'] as String,
      durabletaskExtensionKey: map['durabletaskExtensionKey'] as String,
      eventGridExtensionConfigKey: map['eventGridExtensionConfigKey'] as String,
      eventGridExtensionKey: map['eventGridExtensionKey'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      signalrExtensionKey: map['signalrExtensionKey'] as String,
      webpubsubExtensionKey: map['webpubsubExtensionKey'] as String,
    );
  }
}
