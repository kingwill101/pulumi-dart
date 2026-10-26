// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLoggingServer.
class GetLoggingServerResult {
  /// Creation time of this resource.
  final String? createTime;
  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  final String? hostname;
  /// The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  final String? name;
  /// Port number at which the logging server receives logs.
  final int? port;
  /// Protocol used by vCenter to send logs to a logging server.
  final String? protocol;
  /// The type of component that produces logs that will be forwarded to this logging server.
  final String? sourceType;
  /// System-generated unique identifier for the resource.
  final String? uid;
  /// Last update time of this resource.
  final String? updateTime;

  /// Creates a new [GetLoggingServerResult].
  /// [createTime] Creation time of this resource.
  /// [hostname] Fully-qualified domain name (FQDN) or IP Address of the logging server.
  /// [name] The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  /// [port] Port number at which the logging server receives logs.
  /// [protocol] Protocol used by vCenter to send logs to a logging server.
  /// [sourceType] The type of component that produces logs that will be forwarded to this logging server.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  const GetLoggingServerResult({
    this.createTime,
    this.hostname,
    this.name,
    this.port,
    this.protocol,
    this.sourceType,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'hostname': ?hostname,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'sourceType': ?sourceType,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetLoggingServerResult.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
