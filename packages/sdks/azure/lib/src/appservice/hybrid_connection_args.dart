// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_hybrid_connection_hybrid_connection_args_doc}
/// The set of arguments for HybridConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_hybrid_connection_hybrid_connection_args_doc}
class HybridConnectionArgs {
  /// Specifies the name of the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// The hostname of the endpoint.
  final pulumi.Input<String> hostname;
  /// The port of the endpoint.
  final pulumi.Input<int> port;
  /// The ID of the Service Bus Relay. Changing this forces a new resource to be created.
  final pulumi.Input<String> relayId;
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`.
  final pulumi.Input<String>? sendKeyName;

  /// Creates a new [HybridConnectionArgs].
  /// [appServiceName] Specifies the name of the App Service. Changing this forces a new resource to be created.
  /// [hostname] The hostname of the endpoint.
  /// [port] The port of the endpoint.
  /// [relayId] The ID of the Service Bus Relay. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  /// [sendKeyName] The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`.
  HybridConnectionArgs({
    required pulumi.Output<String> appServiceName,
    required pulumi.Output<String> hostname,
    required pulumi.Output<int> port,
    required pulumi.Output<String> relayId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sendKeyName,
  }) :
      appServiceName = pulumi.Input.asInput<String>(appServiceName),
      hostname = pulumi.Input.asInput<String>(hostname),
      port = pulumi.Input.asInput<int>(port),
      relayId = pulumi.Input.asInput<String>(relayId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sendKeyName = pulumi.Input.asOptionalInput<String>(sendKeyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'hostname': hostname,
      'port': port,
      'relayId': relayId,
      'resourceGroupName': resourceGroupName,
      'sendKeyName': ?sendKeyName,
    };
  }

  factory HybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HybridConnectionArgs(
      appServiceName: pulumi.Output.create<String>(map['appServiceName'] as String),
      hostname: pulumi.Output.create<String>(map['hostname'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      relayId: pulumi.Output.create<String>(map['relayId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sendKeyName: map['sendKeyName'] == null ? null : pulumi.Output.create<String>(map['sendKeyName'] as String),
    );
  }
}

