// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGceServiceDiscovery.
class GetGceServiceDiscoveryResult {
  final String? addressRealm;
  final bool? credentialUpdate;
  final String? encodedCredentials;
  /// The JSON for GCE service discovery block.
  final String gceSdJson;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? minimumMonitors;
  final int? port;
  final String? projectId;
  final String region;
  final String tagKey;
  final String tagValue;
  final String? type;
  final String? undetectableAction;
  final String? updateInterval;

  /// Creates a new [GetGceServiceDiscoveryResult].
  /// [addressRealm] Optional.
  /// [credentialUpdate] Optional.
  /// [encodedCredentials] Optional.
  /// [gceSdJson] The JSON for GCE service discovery block.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumMonitors] Optional.
  /// [port] Optional.
  /// [projectId] Optional.
  /// [region] Required.
  /// [tagKey] Required.
  /// [tagValue] Required.
  /// [type] Optional.
  /// [undetectableAction] Optional.
  /// [updateInterval] Optional.
  GetGceServiceDiscoveryResult({
    this.addressRealm,
    this.credentialUpdate,
    this.encodedCredentials,
    required this.gceSdJson,
    required this.id,
    this.minimumMonitors,
    this.port,
    this.projectId,
    required this.region,
    required this.tagKey,
    required this.tagValue,
    this.type,
    this.undetectableAction,
    this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'credentialUpdate': ?credentialUpdate,
      'encodedCredentials': ?encodedCredentials,
      'gceSdJson': gceSdJson,
      'id': id,
      'minimumMonitors': ?minimumMonitors,
      'port': ?port,
      'projectId': ?projectId,
      'region': region,
      'tagKey': tagKey,
      'tagValue': tagValue,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
    };
  }

  factory GetGceServiceDiscoveryResult.fromMap(Map<String, dynamic> map) {
    return GetGceServiceDiscoveryResult(
      addressRealm: (() { final guardedValue = map['addressRealm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialUpdate: (() { final guardedValue = map['credentialUpdate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encodedCredentials: (() { final guardedValue = map['encodedCredentials']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gceSdJson: map['gceSdJson'] as String,
      id: map['id'] as String,
      minimumMonitors: (() { final guardedValue = map['minimumMonitors']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      tagKey: map['tagKey'] as String,
      tagValue: map['tagValue'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      undetectableAction: (() { final guardedValue = map['undetectableAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateInterval: (() { final guardedValue = map['updateInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

