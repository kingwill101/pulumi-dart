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
    pulumi.Output<String>? addressRealm,
    pulumi.Output<bool>? credentialUpdate,
    pulumi.Output<String>? encodedToken,
    pulumi.Output<String>? jmesPathQuery,
    pulumi.Output<String>? minimumMonitors,
    required pulumi.Output<int> port,
    pulumi.Output<bool>? rejectUnauthorized,
    pulumi.Output<String>? trustCa,
    pulumi.Output<String>? type,
    pulumi.Output<String>? undetectableAction,
    pulumi.Output<String>? updateInterval,
    required pulumi.Output<String> uri,
  }) :
      addressRealm = pulumi.Input.asOptionalInput<String>(addressRealm),
      credentialUpdate = pulumi.Input.asOptionalInput<bool>(credentialUpdate),
      encodedToken = pulumi.Input.asOptionalInput<String>(encodedToken),
      jmesPathQuery = pulumi.Input.asOptionalInput<String>(jmesPathQuery),
      minimumMonitors = pulumi.Input.asOptionalInput<String>(minimumMonitors),
      port = pulumi.Input.asInput<int>(port),
      rejectUnauthorized = pulumi.Input.asOptionalInput<bool>(rejectUnauthorized),
      trustCa = pulumi.Input.asOptionalInput<String>(trustCa),
      type = pulumi.Input.asOptionalInput<String>(type),
      undetectableAction = pulumi.Input.asOptionalInput<String>(undetectableAction),
      updateInterval = pulumi.Input.asOptionalInput<String>(updateInterval),
      uri = pulumi.Input.asInput<String>(uri);

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
      addressRealm: map['addressRealm'] == null ? null : pulumi.Output.create<String>(map['addressRealm'] as String),
      credentialUpdate: map['credentialUpdate'] == null ? null : pulumi.Output.create<bool>(map['credentialUpdate'] as bool),
      encodedToken: map['encodedToken'] == null ? null : pulumi.Output.create<String>(map['encodedToken'] as String),
      jmesPathQuery: map['jmesPathQuery'] == null ? null : pulumi.Output.create<String>(map['jmesPathQuery'] as String),
      minimumMonitors: map['minimumMonitors'] == null ? null : pulumi.Output.create<String>(map['minimumMonitors'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      rejectUnauthorized: map['rejectUnauthorized'] == null ? null : pulumi.Output.create<bool>(map['rejectUnauthorized'] as bool),
      trustCa: map['trustCa'] == null ? null : pulumi.Output.create<String>(map['trustCa'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      undetectableAction: map['undetectableAction'] == null ? null : pulumi.Output.create<String>(map['undetectableAction'] as String),
      updateInterval: map['updateInterval'] == null ? null : pulumi.Output.create<String>(map['updateInterval'] as String),
      uri: pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

