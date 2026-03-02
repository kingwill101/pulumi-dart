// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAzureServiceDiscovery.
class GetAzureServiceDiscoveryResult {
  final String? addressRealm;
  /// The JSON for Azure service discovery block.
  final String azureSdJson;
  final bool? credentialUpdate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? minimumMonitors;
  final int? port;
  final String resourceGroup;
  final String subscriptionId;
  final String? tagKey;
  final String? tagValue;
  final String? type;
  final String? undetectableAction;
  final String? updateInterval;

  /// Creates a new [GetAzureServiceDiscoveryResult].
  /// [addressRealm] Optional.
  /// [azureSdJson] The JSON for Azure service discovery block.
  /// [credentialUpdate] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumMonitors] Optional.
  /// [port] Optional.
  /// [resourceGroup] Required.
  /// [subscriptionId] Required.
  /// [tagKey] Optional.
  /// [tagValue] Optional.
  /// [type] Optional.
  /// [undetectableAction] Optional.
  /// [updateInterval] Optional.
  GetAzureServiceDiscoveryResult({
    this.addressRealm,
    required this.azureSdJson,
    this.credentialUpdate,
    required this.id,
    this.minimumMonitors,
    this.port,
    required this.resourceGroup,
    required this.subscriptionId,
    this.tagKey,
    this.tagValue,
    this.type,
    this.undetectableAction,
    this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'azureSdJson': azureSdJson,
      'credentialUpdate': ?credentialUpdate,
      'id': id,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'resourceGroup': resourceGroup,
      'subscriptionId': subscriptionId,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetAzureServiceDiscoveryResult.fromMap(Map<String, dynamic> map) {
    return GetAzureServiceDiscoveryResult(
      addressRealm: map['addressRealm'] == null ? null : map['addressRealm']! as String,
      azureSdJson: map['azureSdJson'] as String,
      credentialUpdate: map['credentialUpdate'] == null ? null : map['credentialUpdate']! as bool,
      id: map['id'] as String,
      minimumMonitors: map['minimumMonitors'] == null ? null : map['minimumMonitors']! as String,
      port: map['port'] == null ? null : map['port']! as int,
      resourceGroup: map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tagKey: map['tagKey'] == null ? null : map['tagKey']! as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue']! as String,
      type: map['type'] == null ? null : map['type']! as String,
      undetectableAction: map['undetectableAction'] == null ? null : map['undetectableAction']! as String,
      updateInterval: map['updateInterval'] == null ? null : map['updateInterval']! as String,
    );
  }
}

