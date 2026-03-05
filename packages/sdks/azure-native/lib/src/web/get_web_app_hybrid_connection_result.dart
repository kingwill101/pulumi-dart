// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppHybridConnection.
class GetWebAppHybridConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The hostname of the endpoint.
  final String? hostname;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The port of the endpoint.
  final int? port;
  /// The ARM URI to the Service Bus relay.
  final String? relayArmUri;
  /// The name of the Service Bus relay.
  final String? relayName;
  /// The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  final String? sendKeyName;
  /// The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// normally, use the POST /listKeys API instead.
  final String? sendKeyValue;
  /// The name of the Service Bus namespace.
  final String? serviceBusNamespace;
  /// The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  final String? serviceBusSuffix;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppHybridConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostname] The hostname of the endpoint.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [port] The port of the endpoint.
  /// [relayArmUri] The ARM URI to the Service Bus relay.
  /// [relayName] The name of the Service Bus relay.
  /// [sendKeyName] The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  /// [sendKeyValue] The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// [serviceBusNamespace] The name of the Service Bus namespace.
  /// [serviceBusSuffix] The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  /// [type] Resource type.
  GetWebAppHybridConnectionResult({
    required this.azureApiVersion,
    this.hostname,
    required this.id,
    this.kind,
    required this.name,
    this.port,
    this.relayArmUri,
    this.relayName,
    this.sendKeyName,
    this.sendKeyValue,
    this.serviceBusNamespace,
    this.serviceBusSuffix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'hostname': ?hostname,
      'id': id,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'relayArmUri': ?relayArmUri,
      'relayName': ?relayName,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'serviceBusNamespace': ?serviceBusNamespace,
      'serviceBusSuffix': ?serviceBusSuffix,
      'type': type,
    };
  }

  factory GetWebAppHybridConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppHybridConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      relayArmUri: (() { final guardedValue = map['relayArmUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relayName: (() { final guardedValue = map['relayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendKeyName: (() { final guardedValue = map['sendKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendKeyValue: (() { final guardedValue = map['sendKeyValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusNamespace: (() { final guardedValue = map['serviceBusNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusSuffix: (() { final guardedValue = map['serviceBusSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

