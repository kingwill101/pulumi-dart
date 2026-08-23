// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridConnection resources.
class HybridConnectionState {
  /// Specifies the name of the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceName;
  /// The hostname of the endpoint.
  final pulumi.Input<String>? hostname;
  /// The name of the Relay Namespace.
  final pulumi.Input<String>? namespaceName;
  /// The port of the endpoint.
  final pulumi.Input<int>? port;
  /// The ID of the Service Bus Relay. Changing this forces a new resource to be created.
  final pulumi.Input<String>? relayId;
  final pulumi.Input<String>? relayName;
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`.
  final pulumi.Input<String>? sendKeyName;
  /// The value of the Service Bus Primary Access key.
  final pulumi.Input<String>? sendKeyValue;
  /// The name of the Service Bus namespace.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The suffix for the service bus endpoint.
  final pulumi.Input<String>? serviceBusSuffix;

  /// Creates a new [HybridConnectionState].
  /// [appServiceName] Specifies the name of the App Service. Changing this forces a new resource to be created.
  /// [hostname] The hostname of the endpoint.
  /// [namespaceName] The name of the Relay Namespace.
  /// [port] The port of the endpoint.
  /// [relayId] The ID of the Service Bus Relay. Changing this forces a new resource to be created.
  /// [relayName] Optional.
  /// [resourceGroupName] The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  /// [sendKeyName] The name of the Service Bus key which has Send permissions. Defaults to `RootManageSharedAccessKey`.
  /// [sendKeyValue] The value of the Service Bus Primary Access key.
  /// [serviceBusNamespace] The name of the Service Bus namespace.
  /// [serviceBusSuffix] The suffix for the service bus endpoint.
  const HybridConnectionState({
    this.appServiceName,
    this.hostname,
    this.namespaceName,
    this.port,
    this.relayId,
    this.relayName,
    this.resourceGroupName,
    this.sendKeyName,
    this.sendKeyValue,
    this.serviceBusNamespace,
    this.serviceBusSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': ?appServiceName,
      'hostname': ?hostname,
      'namespaceName': ?namespaceName,
      'port': ?port,
      'relayId': ?relayId,
      'relayName': ?relayName,
      'resourceGroupName': ?resourceGroupName,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'serviceBusNamespace': ?serviceBusNamespace,
      'serviceBusSuffix': ?serviceBusSuffix,
    };
  }

  factory HybridConnectionState.fromMap(Map<String, dynamic> map) {
    return HybridConnectionState(
      appServiceName: (() { final guardedValue = map['appServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      relayId: (() { final guardedValue = map['relayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relayName: (() { final guardedValue = map['relayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendKeyName: (() { final guardedValue = map['sendKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendKeyValue: (() { final guardedValue = map['sendKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusNamespace: (() { final guardedValue = map['serviceBusNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusSuffix: (() { final guardedValue = map['serviceBusSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
