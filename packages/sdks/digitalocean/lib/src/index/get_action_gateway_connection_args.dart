// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_action_gateway_connection_get_action_gateway_connection_args_doc}
/// Arguments for getActionGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_index_get_action_gateway_connection_get_action_gateway_connection_args_doc}
class GetActionGatewayConnectionArgs {
  /// The ID of the connection.
  final pulumi.Input<String?>? id;
  /// and `userId` - (Optional) The slug of the connection's tool provider and the actor ID it acts for. Both must be set, and `userId` must match exactly.
  final pulumi.Input<String?>? toolProvider;
  /// The actor ID the connection acts for.
  final pulumi.Input<String?>? userId;

  /// Creates a new [GetActionGatewayConnectionArgs].
  /// [id] The ID of the connection.
  /// [toolProvider] and `userId` - (Optional) The slug of the connection's tool provider and the actor ID it acts for. Both must be set, and `userId` must match exactly.
  /// [userId] The actor ID the connection acts for.
  const GetActionGatewayConnectionArgs({
    this.id,
    this.toolProvider,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'toolProvider': ?toolProvider,
      'userId': ?userId,
    };
  }

  factory GetActionGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayConnectionArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
