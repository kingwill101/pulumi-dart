// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type_field.dart';

/// {@template pulumi_automation_connection_type_connection_type_args_doc}
/// The set of arguments for ConnectionType.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_type_connection_type_args_doc}
class ConnectionTypeArgs {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// One or more `field` blocks as defined below. Changing this forces a new Automation to be created.
  final pulumi.Input<List<ConnectionTypeField>> fields;
  /// Whether the connection type is global. Changing this forces a new Automation to be created.
  final pulumi.Input<bool>? isGlobal;
  /// The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectionTypeArgs].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [fields] One or more `field` blocks as defined below. Changing this forces a new Automation to be created.
  /// [isGlobal] Whether the connection type is global. Changing this forces a new Automation to be created.
  /// [name] The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  ConnectionTypeArgs({
    required this.automationAccountName,
    required this.fields,
    this.isGlobal,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'fields': pulumi.Input.mapInputValue<List<ConnectionTypeField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<ConnectionTypeField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isGlobal': ?isGlobal,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectionTypeArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionTypeField>(map['fields']!, (value) => ConnectionTypeField.fromMap((value as Map).cast<String, dynamic>()))),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

