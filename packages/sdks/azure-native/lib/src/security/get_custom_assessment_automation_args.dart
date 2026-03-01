// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_custom_assessment_automation_args_doc}
/// Arguments for getCustomAssessmentAutomation.
/// {@endtemplate}
/// {@macro pulumi_security_get_custom_assessment_automation_args_doc}
class GetCustomAssessmentAutomationArgs {
  /// Name of the Custom Assessment Automation.
  final pulumi.Input<String> customAssessmentAutomationName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCustomAssessmentAutomationArgs].
  /// [customAssessmentAutomationName] Name of the Custom Assessment Automation.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetCustomAssessmentAutomationArgs({
    required pulumi.Output<String> customAssessmentAutomationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      customAssessmentAutomationName = pulumi.Input.asInput<String>(customAssessmentAutomationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAssessmentAutomationName': customAssessmentAutomationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomAssessmentAutomationArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomAssessmentAutomationArgs(
      customAssessmentAutomationName: pulumi.Output.create<String>(map['customAssessmentAutomationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

