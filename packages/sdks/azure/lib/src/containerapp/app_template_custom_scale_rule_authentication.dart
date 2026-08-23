// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateCustomScaleRuleAuthentication {
  /// The name of the Container App Secret to use for this Scale Rule Authentication.
  final pulumi.Input<String> secretName;
  /// The Trigger Parameter name to use the supply the value retrieved from the `secretName`.
  final pulumi.Input<String> triggerParameter;

  /// Creates a new [AppTemplateCustomScaleRuleAuthentication].
  /// [secretName] The name of the Container App Secret to use for this Scale Rule Authentication.
  /// [triggerParameter] The Trigger Parameter name to use the supply the value retrieved from the `secretName`.
  const AppTemplateCustomScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory AppTemplateCustomScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return AppTemplateCustomScaleRuleAuthentication(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      triggerParameter: pulumi.Input.fromValue(map['triggerParameter'] as String),
    );
  }
}
