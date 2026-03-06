// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateAzureQueueScaleRuleAuthentication {
  /// The name of the Container App Secret to use for this Scale Rule Authentication.
  final pulumi.Input<String> secretName;
  /// The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  final pulumi.Input<String> triggerParameter;

  /// Creates a new [AppTemplateAzureQueueScaleRuleAuthentication].
  /// [secretName] The name of the Container App Secret to use for this Scale Rule Authentication.
  /// [triggerParameter] The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  const AppTemplateAzureQueueScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory AppTemplateAzureQueueScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return AppTemplateAzureQueueScaleRuleAuthentication(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      triggerParameter: pulumi.Input.fromValue(map['triggerParameter'] as String),
    );
  }
}

