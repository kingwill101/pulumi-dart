// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fast_get_consul_service_discovery_get_consul_service_discovery_args_doc}
/// Arguments for getConsulServiceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_fast_get_consul_service_discovery_get_consul_service_discovery_args_doc}
class GetConsulServiceDiscoveryArgs {
  /// Specifies whether to look for public or private IP addresses,default `private`.
  final pulumi.Input<String>? addressRealm;

  /// Specifies whether you are updating your credentials,default `false`.
  final pulumi.Input<bool>? credentialUpdate;

  /// Base 64 encoded bearer token to make requests to the Consul API. Will be stored in the declaration in an encrypted format.
  final pulumi.Input<String>? encodedToken;

  /// Custom JMESPath Query.
  final pulumi.Input<String>? jmesPathQuery;

  /// Member is down when fewer than minimum monitors report it healthy.
  final pulumi.Input<String>? minimumMonitors;

  /// Port to be used for AWS service discovery,default `80`.
  final pulumi.Input<int> port;

  /// If true, the server certificate is verified against the list of supplied/default CAs when making requests to the Consul API.
  final pulumi.Input<bool>? rejectUnauthorized;

  /// CA Bundle to validate server certificates.
  final pulumi.Input<String>? trustCa;
  final pulumi.Input<String>? type;

  /// Action to take when node cannot be detected,default `remove`.
  final pulumi.Input<String>? undetectableAction;

  /// Update interval for service discovery.
  final pulumi.Input<String>? updateInterval;

  /// The location of the node data.
  final pulumi.Input<String> uri;

  /// Creates a new [GetConsulServiceDiscoveryArgs].
  /// [addressRealm] Specifies whether to look for public or private IP addresses,default `private`.
  /// [credentialUpdate] Specifies whether you are updating your credentials,default `false`.
  /// [encodedToken] Base 64 encoded bearer token to make requests to the Consul API. Will be stored in the declaration in an encrypted format.
  /// [jmesPathQuery] Custom JMESPath Query.
  /// [minimumMonitors] Member is down when fewer than minimum monitors report it healthy.
  /// [port] Port to be used for AWS service discovery,default `80`.
  /// [rejectUnauthorized] If true, the server certificate is verified against the list of supplied/default CAs when making requests to the Consul API.
  /// [trustCa] CA Bundle to validate server certificates.
  /// [type] Optional.
  /// [undetectableAction] Action to take when node cannot be detected,default `remove`.
  /// [updateInterval] Update interval for service discovery.
  /// [uri] The location of the node data.
  GetConsulServiceDiscoveryArgs({
    this.addressRealm,
    this.credentialUpdate,
    this.encodedToken,
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
      'credentialUpdate': ?credentialUpdate,
      'encodedToken': ?encodedToken,
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

  factory GetConsulServiceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetConsulServiceDiscoveryArgs(
      addressRealm: (() {
        final guardedValue = map['addressRealm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialUpdate: (() {
        final guardedValue = map['credentialUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encodedToken: (() {
        final guardedValue = map['encodedToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jmesPathQuery: (() {
        final guardedValue = map['jmesPathQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minimumMonitors: (() {
        final guardedValue = map['minimumMonitors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      rejectUnauthorized: (() {
        final guardedValue = map['rejectUnauthorized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      trustCa: (() {
        final guardedValue = map['trustCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      undetectableAction: (() {
        final guardedValue = map['undetectableAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateInterval: (() {
        final guardedValue = map['updateInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
