// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_hybrid_connection_slot_args_doc}
/// The set of arguments for WebAppHybridConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_hybrid_connection_slot_args_doc}
class WebAppHybridConnectionSlotArgs {
  /// The hostname of the endpoint.
  final pulumi.Input<String>? hostname;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The port of the endpoint.
  final pulumi.Input<int>? port;
  /// The ARM URI to the Service Bus relay.
  final pulumi.Input<String>? relayArmUri;
  /// The name of the Service Bus relay.
  final pulumi.Input<String>? relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  final pulumi.Input<String>? sendKeyName;
  /// The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// normally, use the POST /listKeys API instead.
  final pulumi.Input<String>? sendKeyValue;
  /// The name of the Service Bus namespace.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  final pulumi.Input<String>? serviceBusSuffix;
  /// The name of the slot for the web app.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppHybridConnectionSlotArgs].
  /// [hostname] The hostname of the endpoint.
  /// [kind] Kind of resource.
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [port] The port of the endpoint.
  /// [relayArmUri] The ARM URI to the Service Bus relay.
  /// [relayName] The name of the Service Bus relay.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sendKeyName] The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  /// [sendKeyValue] The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// [serviceBusNamespace] The name of the Service Bus namespace.
  /// [serviceBusSuffix] The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  /// [slot] The name of the slot for the web app.
  WebAppHybridConnectionSlotArgs({
    this.hostname,
    this.kind,
    required this.name,
    required this.namespaceName,
    this.port,
    this.relayArmUri,
    this.relayName,
    required this.resourceGroupName,
    this.sendKeyName,
    this.sendKeyValue,
    this.serviceBusNamespace,
    this.serviceBusSuffix,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'kind': ?kind,
      'name': name,
      'namespaceName': namespaceName,
      'port': ?port,
      'relayArmUri': ?relayArmUri,
      'relayName': ?relayName,
      'resourceGroupName': resourceGroupName,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'serviceBusNamespace': ?serviceBusNamespace,
      'serviceBusSuffix': ?serviceBusSuffix,
      'slot': slot,
    };
  }

  factory WebAppHybridConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHybridConnectionSlotArgs(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      relayArmUri: (() { final guardedValue = map['relayArmUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayName: (() { final guardedValue = map['relayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sendKeyName: (() { final guardedValue = map['sendKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendKeyValue: (() { final guardedValue = map['sendKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusNamespace: (() { final guardedValue = map['serviceBusNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusSuffix: (() { final guardedValue = map['serviceBusSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

