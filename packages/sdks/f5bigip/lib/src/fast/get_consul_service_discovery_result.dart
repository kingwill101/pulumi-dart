// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConsulServiceDiscovery.
class GetConsulServiceDiscoveryResult {
  final String? addressRealm;
  final String consulSdJson;
  final bool? credentialUpdate;
  final String? encodedToken;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? jmesPathQuery;
  final String? minimumMonitors;
  final int port;
  final bool? rejectUnauthorized;
  final String? trustCa;
  final String? type;
  final String? undetectableAction;
  final String? updateInterval;
  final String uri;

  /// Creates a new [GetConsulServiceDiscoveryResult].
  /// [addressRealm] Optional.
  /// [consulSdJson] Required.
  /// [credentialUpdate] Optional.
  /// [encodedToken] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jmesPathQuery] Optional.
  /// [minimumMonitors] Optional.
  /// [port] Required.
  /// [rejectUnauthorized] Optional.
  /// [trustCa] Optional.
  /// [type] Optional.
  /// [undetectableAction] Optional.
  /// [updateInterval] Optional.
  /// [uri] Required.
  const GetConsulServiceDiscoveryResult({
    this.addressRealm,
    required this.consulSdJson,
    this.credentialUpdate,
    this.encodedToken,
    required this.id,
    this.jmesPathQuery,
    this.minimumMonitors,
    required this.port,
    this.rejectUnauthorized,
    this.trustCa,
    this.type,
    this.undetectableAction,
    this.updateInterval,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'consulSdJson': consulSdJson,
      'credentialUpdate': ?credentialUpdate,
      'encodedToken': ?encodedToken,
      'id': id,
      'jmesPathQuery': ?jmesPathQuery,
      'minimumMonitors': ?minimumMonitors,
      'port': port,
      'rejectUnauthorized': ?rejectUnauthorized,
      'trustCa': ?trustCa,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
      'uri': uri,
    };
  }

  factory GetConsulServiceDiscoveryResult.fromMap(Map<String, dynamic> map) {
    return GetConsulServiceDiscoveryResult(
      addressRealm: (() { final guardedValue = map['addressRealm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consulSdJson: map['consulSdJson'] as String,
      credentialUpdate: (() { final guardedValue = map['credentialUpdate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encodedToken: (() { final guardedValue = map['encodedToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      jmesPathQuery: (() { final guardedValue = map['jmesPathQuery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumMonitors: (() { final guardedValue = map['minimumMonitors']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: map['port'] as int,
      rejectUnauthorized: (() { final guardedValue = map['rejectUnauthorized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      trustCa: (() { final guardedValue = map['trustCa']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      undetectableAction: (() { final guardedValue = map['undetectableAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateInterval: (() { final guardedValue = map['updateInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: map['uri'] as String,
    );
  }
}

