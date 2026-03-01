// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_server_ssl_info.dart';

/// Input properties used for looking up and filtering TargetServer resources.
class TargetServerState {
  /// A human-readable description of this TargetServer.
  final pulumi.Input<String>? description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;
  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final pulumi.Input<String>? host;
  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final pulumi.Input<bool>? isEnabled;
  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final pulumi.Input<String>? name;
  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final pulumi.Input<int>? port;
  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  final pulumi.Input<String>? protocol;
  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<TargetServerSSlInfo>? sSlInfo;

  /// Creates a new [TargetServerState].
  /// [description] A human-readable description of this TargetServer.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [host] The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  /// [isEnabled] Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  /// [name] The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  /// [port] The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  /// [protocol] Immutable. The protocol used by this TargetServer.
  /// [sSlInfo] Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  TargetServerState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? envId,
    pulumi.Output<String>? host,
    pulumi.Output<bool>? isEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? protocol,
    pulumi.Output<TargetServerSSlInfo>? sSlInfo,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      envId = pulumi.Input.asOptionalInput<String>(envId),
      host = pulumi.Input.asOptionalInput<String>(host),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      sSlInfo = pulumi.Input.asOptionalInput<TargetServerSSlInfo>(sSlInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envId': ?envId,
      'host': ?host,
      'isEnabled': ?isEnabled,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'sSlInfo': ?pulumi.Input.mapOptionalInputValue<TargetServerSSlInfo, Map<String, dynamic>>(sSlInfo, (value) => value.toMap()),
    };
  }

  factory TargetServerState.fromMap(Map<String, dynamic> map) {
    return TargetServerState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      envId: map['envId'] == null ? null : pulumi.Output.create<String>(map['envId'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      sSlInfo: map['sSlInfo'] == null ? null : pulumi.Output.create<TargetServerSSlInfo>(TargetServerSSlInfo.fromMap((map['sSlInfo'] as Map).cast<String, dynamic>())),
    );
  }
}

