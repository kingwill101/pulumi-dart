// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssistantCustomerPolicyModelArmorConfig {
  /// Defines the failure mode for Model Armor sanitization.
  /// The supported values: 'FAIL_OPEN', 'FAIL_CLOSED'.
  final pulumi.Input<String>? failureMode;
  /// The resource name of the Model Armor template for sanitizing assistant
  /// responses. Format:
  /// `projects/{project}/locations/{location}/templates/{template_id}`
  /// If not specified, no sanitization will be applied to the assistant
  /// response.
  final pulumi.Input<String> responseTemplate;
  /// The resource name of the Model Armor template for sanitizing user
  /// prompts. Format:
  /// `projects/{project}/locations/{location}/templates/{template_id}`
  /// If not specified, no sanitization will be applied to the user prompt.
  final pulumi.Input<String> userPromptTemplate;

  /// Creates a new [AssistantCustomerPolicyModelArmorConfig].
  /// [failureMode] Defines the failure mode for Model Armor sanitization.
  /// [responseTemplate] The resource name of the Model Armor template for sanitizing assistant
  /// [userPromptTemplate] The resource name of the Model Armor template for sanitizing user
  AssistantCustomerPolicyModelArmorConfig({
    this.failureMode,
    required this.responseTemplate,
    required this.userPromptTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureMode': ?failureMode,
      'responseTemplate': responseTemplate,
      'userPromptTemplate': userPromptTemplate,
    };
  }

  factory AssistantCustomerPolicyModelArmorConfig.fromMap(Map<String, dynamic> map) {
    return AssistantCustomerPolicyModelArmorConfig(
      failureMode: map['failureMode'] == null ? null : (map['failureMode']! as String).input(),
      responseTemplate: (map['responseTemplate'] as String).input(),
      userPromptTemplate: (map['userPromptTemplate'] as String).input(),
    );
  }
}

