// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_bool_variable_get_bool_variable_args_doc}
/// Arguments for getBoolVariable.
/// {@endtemplate}
/// {@macro pulumi_automation_get_bool_variable_get_bool_variable_args_doc}
class GetBoolVariableArgs {
  /// The name of the automation account in which the Automation Variable exists.
  final pulumi.Input<String> automationAccountName;
  /// The name of the Automation Variable.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the automation account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBoolVariableArgs].
  /// [automationAccountName] The name of the automation account in which the Automation Variable exists.
  /// [name] The name of the Automation Variable.
  /// [resourceGroupName] The Name of the Resource Group where the automation account exists.
  GetBoolVariableArgs({
    required this.automationAccountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBoolVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetBoolVariableArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

