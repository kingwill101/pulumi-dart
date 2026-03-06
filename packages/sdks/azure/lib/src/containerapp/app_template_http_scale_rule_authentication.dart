// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateHttpScaleRuleAuthentication {
  /// The name of the Container App Secret to use for this Scale Rule Authentication.
  final pulumi.Input<String> secretName;
  /// The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  final pulumi.Input<String>? triggerParameter;

  /// Creates a new [AppTemplateHttpScaleRuleAuthentication].
  /// [secretName] The name of the Container App Secret to use for this Scale Rule Authentication.
  /// [triggerParameter] The Trigger Parameter name to use the supply the value retrieved from the `secret_name`.
  const AppTemplateHttpScaleRuleAuthentication({
    required this.secretName,
    this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': ?triggerParameter,
    };
  }

  factory AppTemplateHttpScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return AppTemplateHttpScaleRuleAuthentication(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      triggerParameter: (() { final guardedValue = map['triggerParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

