// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_action_gateway_endpoint_get_action_gateway_endpoint_args_doc}
/// Arguments for getActionGatewayEndpoint.
/// {@endtemplate}
/// {@macro pulumi_index_get_action_gateway_endpoint_get_action_gateway_endpoint_args_doc}
class GetActionGatewayEndpointArgs {
  /// An actor ID to filter a `name` lookup by. Endpoints bound to a different actor are ignored.
  final pulumi.Input<String?>? actorId;
  /// The ID of the endpoint. Conflicts with `name`.
  final pulumi.Input<String?>? id;
  /// The name of the endpoint. Conflicts with `id`. Exactly one endpoint must carry the name; when several do, the lookup lists their IDs instead of picking one.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetActionGatewayEndpointArgs].
  /// [actorId] An actor ID to filter a `name` lookup by. Endpoints bound to a different actor are ignored.
  /// [id] The ID of the endpoint. Conflicts with `name`.
  /// [name] The name of the endpoint. Conflicts with `id`. Exactly one endpoint must carry the name; when several do, the lookup lists their IDs instead of picking one.
  const GetActionGatewayEndpointArgs({
    this.actorId,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': ?actorId,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetActionGatewayEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointArgs(
      actorId: (() { final guardedValue = map['actorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
