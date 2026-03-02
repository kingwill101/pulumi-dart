// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_function_app_hybrid_connection_function_app_hybrid_connection_args_doc}
/// The set of arguments for FunctionAppHybridConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_function_app_hybrid_connection_function_app_hybrid_connection_args_doc}
class FunctionAppHybridConnectionArgs {
  /// The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppId;
  /// The hostname of the endpoint.
  final pulumi.Input<String> hostname;
  /// The port to use for the endpoint
  final pulumi.Input<int> port;
  /// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> relayId;
  /// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  final pulumi.Input<String>? sendKeyName;

  /// Creates a new [FunctionAppHybridConnectionArgs].
  /// [functionAppId] The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
  /// [hostname] The hostname of the endpoint.
  /// [port] The port to use for the endpoint
  /// [relayId] The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  /// [sendKeyName] The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  FunctionAppHybridConnectionArgs({
    required this.functionAppId,
    required this.hostname,
    required this.port,
    required this.relayId,
    this.sendKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppId': functionAppId,
      'hostname': hostname,
      'port': port,
      'relayId': relayId,
      'sendKeyName': ?sendKeyName,
    };
  }

  factory FunctionAppHybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionAppHybridConnectionArgs(
      functionAppId: (map['functionAppId'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      port: (map['port'] as int).input(),
      relayId: (map['relayId'] as String).input(),
      sendKeyName: map['sendKeyName'] == null ? null : (map['sendKeyName'] as String).input(),
    );
  }
}

