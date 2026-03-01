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
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<List<ConnectionTypeField>>? fields,
    pulumi.Output<bool>? isGlobal,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      fields = pulumi.Input.asOptionalInput<List<ConnectionTypeField>>(fields),
      isGlobal = pulumi.Input.asOptionalInput<bool>(isGlobal),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      fields: map['fields'] == null ? null : pulumi.Output.create<List<ConnectionTypeField>>(pulumi.Input.decodeList<ConnectionTypeField>(map['fields'], (value) => ConnectionTypeField.fromMap((value as Map).cast<String, dynamic>()))),
      isGlobal: map['isGlobal'] == null ? null : pulumi.Output.create<bool>(map['isGlobal'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

