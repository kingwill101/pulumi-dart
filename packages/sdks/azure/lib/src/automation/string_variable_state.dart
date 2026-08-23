// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StringVariable resources.
class StringVariableState {
  /// The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The description of the Automation Variable.
  final pulumi.Input<String>? description;
  /// Specifies if the Automation Variable is encrypted. Defaults to `false`.
  final pulumi.Input<bool>? encrypted;
  /// The name of the Automation Variable. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The value of the Automation Variable as a `string`.
  final pulumi.Input<String>? value;

  /// Creates a new [StringVariableState].
  /// [automationAccountName] The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [name] The name of the Automation Variable. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  /// [value] The value of the Automation Variable as a `string`.
  const StringVariableState({
    this.automationAccountName,
    this.description,
    this.encrypted,
    this.name,
    this.resourceGroupName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'description': ?description,
      'encrypted': ?encrypted,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'value': ?value,
    };
  }

  factory StringVariableState.fromMap(Map<String, dynamic> map) {
    return StringVariableState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
