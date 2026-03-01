// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_variables_get_variables_args_doc}
/// Arguments for getVariables.
/// {@endtemplate}
/// {@macro pulumi_automation_get_variables_get_variables_args_doc}
class GetVariablesArgs {
  /// The resource ID of the automation account.
  final pulumi.Input<String> automationAccountId;

  /// Creates a new [GetVariablesArgs].
  /// [automationAccountId] The resource ID of the automation account.
  GetVariablesArgs({
    required pulumi.Output<String> automationAccountId,
  }) :
      automationAccountId = pulumi.Input.asInput<String>(automationAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
    };
  }

  factory GetVariablesArgs.fromMap(Map<String, dynamic> map) {
    return GetVariablesArgs(
      automationAccountId: pulumi.Output.create<String>(map['automationAccountId'] as String),
    );
  }
}

