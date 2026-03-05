// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type_field.dart';

/// Input properties used for looking up and filtering ConnectionType resources.
class ConnectionTypeState {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// One or more `field` blocks as defined below. Changing this forces a new Automation to be created.
  final pulumi.Input<List<ConnectionTypeField>>? fields;
  /// Whether the connection type is global. Changing this forces a new Automation to be created.
  final pulumi.Input<bool>? isGlobal;
  /// The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ConnectionTypeState].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [fields] One or more `field` blocks as defined below. Changing this forces a new Automation to be created.
  /// [isGlobal] Whether the connection type is global. Changing this forces a new Automation to be created.
  /// [name] The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  ConnectionTypeState({
    this.automationAccountName,
    this.fields,
    this.isGlobal,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<ConnectionTypeField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<ConnectionTypeField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isGlobal': ?isGlobal,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ConnectionTypeState.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionTypeField>(guardedValue, (value) => ConnectionTypeField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

