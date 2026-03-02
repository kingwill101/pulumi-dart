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
  HybridConnectionState({
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
      appServiceName: map['appServiceName'] == null ? null : (map['appServiceName'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      relayId: map['relayId'] == null ? null : (map['relayId'] as String).input(),
      relayName: map['relayName'] == null ? null : (map['relayName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sendKeyName: map['sendKeyName'] == null ? null : (map['sendKeyName'] as String).input(),
      sendKeyValue: map['sendKeyValue'] == null ? null : (map['sendKeyValue'] as String).input(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : (map['serviceBusNamespace'] as String).input(),
      serviceBusSuffix: map['serviceBusSuffix'] == null ? null : (map['serviceBusSuffix'] as String).input(),
    );
  }
}

