// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLoggingServer.
class GetLoggingServerResult {
  /// Creation time of this resource.
  final String createTime;
  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  final String hostname;
  /// The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  final String name;
  /// Port number at which the logging server receives logs.
  final int port;
  /// Protocol used by vCenter to send logs to a logging server.
  final String protocol;
  /// The type of component that produces logs that will be forwarded to this logging server.
  final String sourceType;
  /// System-generated unique identifier for the resource.
  final String uid;
  /// Last update time of this resource.
  final String updateTime;

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
    required this.createTime,
    required this.hostname,
    required this.name,
    required this.port,
    required this.protocol,
    required this.sourceType,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'hostname': hostname,
      'name': name,
      'port': port,
      'protocol': protocol,
      'sourceType': sourceType,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetLoggingServerResult.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerResult(
      createTime: map['createTime'] as String,
      hostname: map['hostname'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      sourceType: map['sourceType'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

