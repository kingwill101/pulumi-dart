// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_server_ssl_info.dart';

/// Input properties used for looking up and filtering TargetServer resources.
class TargetServerState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of this TargetServer.
  final pulumi.Input<String?>? description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String?>? envId;
  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final pulumi.Input<String?>? host;
  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final pulumi.Input<bool?>? isEnabled;
  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final pulumi.Input<String?>? name;
  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final pulumi.Input<int?>? port;
  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  final pulumi.Input<String?>? protocol;
  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<TargetServerSSlInfo?>? sSlInfo;

  /// Creates a new [TargetServerState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of this TargetServer.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [host] The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  /// [isEnabled] Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  /// [name] The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  /// [port] The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  /// [protocol] Immutable. The protocol used by this TargetServer.
  /// [sSlInfo] Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  const TargetServerState({
    this.deletionPolicy,
    this.description,
    this.envId,
    this.host,
    this.isEnabled,
    this.name,
    this.port,
    this.protocol,
    this.sSlInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envId: (() { final guardedValue = map['envId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sSlInfo: (() { final guardedValue = map['sSlInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetServerSSlInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
