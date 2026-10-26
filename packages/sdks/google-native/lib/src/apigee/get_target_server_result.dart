// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_tls_info_response.dart';

/// Result data returned by getTargetServer.
class GetTargetServerResult {
  /// Optional. A human-readable description of this TargetServer.
  final String? description;
  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final String? host;
  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final bool? isEnabled;
  /// The resource id of this target server. Values must match the regular expression
  final String? name;
  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final int? port;
  /// Immutable. The protocol used by this TargetServer.
  final String? protocol;
  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  final GoogleCloudApigeeV1TlsInfoResponse? sSLInfo;

  /// Creates a new [GetTargetServerResult].
  /// [description] Optional. A human-readable description of this TargetServer.
  /// [host] The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  /// [isEnabled] Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  /// [name] The resource id of this target server. Values must match the regular expression
  /// [port] The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  /// [protocol] Immutable. The protocol used by this TargetServer.
  /// [sSLInfo] Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  const GetTargetServerResult({
    this.description,
    this.host,
    this.isEnabled,
    this.name,
    this.port,
    this.protocol,
    this.sSLInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'host': ?host,
      'isEnabled': ?isEnabled,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'sSLInfo': ?sSLInfo?.toMap(),
    };
  }

  factory GetTargetServerResult.fromMap(Map<String, dynamic> map) {
    return GetTargetServerResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sSLInfo: (() { final guardedValue = map['sSLInfo']; if (guardedValue == null) return null; return GoogleCloudApigeeV1TlsInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
