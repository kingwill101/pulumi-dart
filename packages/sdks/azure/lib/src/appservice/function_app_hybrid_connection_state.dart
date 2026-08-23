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
  /// The Primary Access Key for the `sendKeyName`
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
  /// [sendKeyValue] The Primary Access Key for the `sendKeyName`
  /// [serviceBusNamespace] The Service Bus Namespace.
  /// [serviceBusSuffix] The suffix for the endpoint.
  const FunctionAppHybridConnectionState({
    this.functionAppId,
    this.hostname,
    this.namespaceName,
    this.port,
    this.relayId,
    this.relayName,
    this.sendKeyName,
    this.sendKeyValue,
    this.serviceBusNamespace,
    this.serviceBusSuffix,
  });

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
      functionAppId: (() { final guardedValue = map['functionAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      relayId: (() { final guardedValue = map['relayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayName: (() { final guardedValue = map['relayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendKeyName: (() { final guardedValue = map['sendKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendKeyValue: (() { final guardedValue = map['sendKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusNamespace: (() { final guardedValue = map['serviceBusNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusSuffix: (() { final guardedValue = map['serviceBusSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
