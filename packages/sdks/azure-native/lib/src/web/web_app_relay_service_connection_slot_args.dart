// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_relay_service_connection_slot_args_doc}
/// The set of arguments for WebAppRelayServiceConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_relay_service_connection_slot_args_doc}
class WebAppRelayServiceConnectionSlotArgs {
  final pulumi.Input<String>? biztalkUri;
  final pulumi.Input<String>? entityConnectionString;
  final pulumi.Input<String>? entityName;
  final pulumi.Input<String>? hostname;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? resourceConnectionString;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceType;
  /// Name of the deployment slot. If a slot is not specified, the API will get a hybrid connection for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppRelayServiceConnectionSlotArgs].
  /// [biztalkUri] Optional.
  /// [entityConnectionString] Optional.
  /// [entityName] Optional.
  /// [hostname] Optional.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [port] Optional.
  /// [resourceConnectionString] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceType] Optional.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get a hybrid connection for the production slot.
  const WebAppRelayServiceConnectionSlotArgs({
    this.biztalkUri,
    this.entityConnectionString,
    this.entityName,
    this.hostname,
    this.kind,
    required this.name,
    this.port,
    this.resourceConnectionString,
    required this.resourceGroupName,
    this.resourceType,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biztalkUri': ?biztalkUri,
      'entityConnectionString': ?entityConnectionString,
      'entityName': ?entityName,
      'hostname': ?hostname,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'resourceConnectionString': ?resourceConnectionString,
      'resourceGroupName': resourceGroupName,
      'resourceType': ?resourceType,
      'slot': slot,
    };
  }

  factory WebAppRelayServiceConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppRelayServiceConnectionSlotArgs(
      biztalkUri: (() { final guardedValue = map['biztalkUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityConnectionString: (() { final guardedValue = map['entityConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityName: (() { final guardedValue = map['entityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceConnectionString: (() { final guardedValue = map['resourceConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
