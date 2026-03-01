// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FunctionAppHybridConnection resources.
class FunctionAppHybridConnectionState {
  /// The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppId;
  /// The hostname of the endpoint.
  final pulumi.Input<String>? hostname;
  /// The name of the Relay Namespace.
  final pulumi.Input<String>? namespaceName;
  /// The port to use for the endpoint
  final pulumi.Input<int>? port;
  /// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? relayId;
  /// The name of the Relay in use.
  final pulumi.Input<String>? relayName;
  /// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  final pulumi.Input<String>? sendKeyName;
  /// The Primary Access Key for the `send_key_name`
  final pulumi.Input<String>? sendKeyValue;
  /// The Service Bus Namespace.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The suffix for the endpoint.
  final pulumi.Input<String>? serviceBusSuffix;

  /// Creates a new [FunctionAppHybridConnectionState].
  /// [functionAppId] The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created.
  /// [hostname] The hostname of the endpoint.
  /// [namespaceName] The name of the Relay Namespace.
  /// [port] The port to use for the endpoint
  /// [relayId] The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  /// [relayName] The name of the Relay in use.
  /// [sendKeyName] The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  /// [sendKeyValue] The Primary Access Key for the `send_key_name`
  /// [serviceBusNamespace] The Service Bus Namespace.
  /// [serviceBusSuffix] The suffix for the endpoint.
  FunctionAppHybridConnectionState({
    pulumi.Output<String>? functionAppId,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? relayId,
    pulumi.Output<String>? relayName,
    pulumi.Output<String>? sendKeyName,
    pulumi.Output<String>? sendKeyValue,
    pulumi.Output<String>? serviceBusNamespace,
    pulumi.Output<String>? serviceBusSuffix,
  }) :
      functionAppId = pulumi.Input.asOptionalInput<String>(functionAppId),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      port = pulumi.Input.asOptionalInput<int>(port),
      relayId = pulumi.Input.asOptionalInput<String>(relayId),
      relayName = pulumi.Input.asOptionalInput<String>(relayName),
      sendKeyName = pulumi.Input.asOptionalInput<String>(sendKeyName),
      sendKeyValue = pulumi.Input.asOptionalInput<String>(sendKeyValue),
      serviceBusNamespace = pulumi.Input.asOptionalInput<String>(serviceBusNamespace),
      serviceBusSuffix = pulumi.Input.asOptionalInput<String>(serviceBusSuffix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppId': ?functionAppId,
      'hostname': ?hostname,
      'namespaceName': ?namespaceName,
      'port': ?port,
      'relayId': ?relayId,
      'relayName': ?relayName,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'serviceBusNamespace': ?serviceBusNamespace,
      'serviceBusSuffix': ?serviceBusSuffix,
    };
  }

  factory FunctionAppHybridConnectionState.fromMap(Map<String, dynamic> map) {
    return FunctionAppHybridConnectionState(
      functionAppId: map['functionAppId'] == null ? null : pulumi.Output.create<String>(map['functionAppId'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      relayId: map['relayId'] == null ? null : pulumi.Output.create<String>(map['relayId'] as String),
      relayName: map['relayName'] == null ? null : pulumi.Output.create<String>(map['relayName'] as String),
      sendKeyName: map['sendKeyName'] == null ? null : pulumi.Output.create<String>(map['sendKeyName'] as String),
      sendKeyValue: map['sendKeyValue'] == null ? null : pulumi.Output.create<String>(map['sendKeyValue'] as String),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : pulumi.Output.create<String>(map['serviceBusNamespace'] as String),
      serviceBusSuffix: map['serviceBusSuffix'] == null ? null : pulumi.Output.create<String>(map['serviceBusSuffix'] as String),
    );
  }
}

