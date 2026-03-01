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
    pulumi.Output<String>? appServiceName,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? relayId,
    pulumi.Output<String>? relayName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sendKeyName,
    pulumi.Output<String>? sendKeyValue,
    pulumi.Output<String>? serviceBusNamespace,
    pulumi.Output<String>? serviceBusSuffix,
  }) :
      appServiceName = pulumi.Input.asOptionalInput<String>(appServiceName),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      port = pulumi.Input.asOptionalInput<int>(port),
      relayId = pulumi.Input.asOptionalInput<String>(relayId),
      relayName = pulumi.Input.asOptionalInput<String>(relayName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sendKeyName = pulumi.Input.asOptionalInput<String>(sendKeyName),
      sendKeyValue = pulumi.Input.asOptionalInput<String>(sendKeyValue),
      serviceBusNamespace = pulumi.Input.asOptionalInput<String>(serviceBusNamespace),
      serviceBusSuffix = pulumi.Input.asOptionalInput<String>(serviceBusSuffix);

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
      appServiceName: map['appServiceName'] == null ? null : pulumi.Output.create<String>(map['appServiceName'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      relayId: map['relayId'] == null ? null : pulumi.Output.create<String>(map['relayId'] as String),
      relayName: map['relayName'] == null ? null : pulumi.Output.create<String>(map['relayName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sendKeyName: map['sendKeyName'] == null ? null : pulumi.Output.create<String>(map['sendKeyName'] as String),
      sendKeyValue: map['sendKeyValue'] == null ? null : pulumi.Output.create<String>(map['sendKeyValue'] as String),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : pulumi.Output.create<String>(map['serviceBusNamespace'] as String),
      serviceBusSuffix: map['serviceBusSuffix'] == null ? null : pulumi.Output.create<String>(map['serviceBusSuffix'] as String),
    );
  }
}

