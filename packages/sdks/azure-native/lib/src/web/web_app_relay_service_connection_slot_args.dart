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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceType;
  /// Name of the deployment slot. If a slot is not specified, the API will create or update a hybrid connection for the production slot.
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
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [resourceType] Optional.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will create or update a hybrid connection for the production slot.
  WebAppRelayServiceConnectionSlotArgs({
    pulumi.Output<String>? biztalkUri,
    pulumi.Output<String>? entityConnectionString,
    pulumi.Output<String>? entityName,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? resourceConnectionString,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceType,
    required pulumi.Output<String> slot,
  }) :
      biztalkUri = pulumi.Input.asOptionalInput<String>(biztalkUri),
      entityConnectionString = pulumi.Input.asOptionalInput<String>(entityConnectionString),
      entityName = pulumi.Input.asOptionalInput<String>(entityName),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceConnectionString = pulumi.Input.asOptionalInput<String>(resourceConnectionString),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      slot = pulumi.Input.asInput<String>(slot);

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
      biztalkUri: map['biztalkUri'] == null ? null : pulumi.Output.create<String>(map['biztalkUri'] as String),
      entityConnectionString: map['entityConnectionString'] == null ? null : pulumi.Output.create<String>(map['entityConnectionString'] as String),
      entityName: map['entityName'] == null ? null : pulumi.Output.create<String>(map['entityName'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      resourceConnectionString: map['resourceConnectionString'] == null ? null : pulumi.Output.create<String>(map['resourceConnectionString'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

