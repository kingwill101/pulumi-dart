// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateHttpScaleRuleAuthentication {
  /// The name of the secret that contains the value for this environment variable.
  final pulumi.Input<String> secretName;
  final pulumi.Input<String> triggerParameter;

  /// Creates a new [GetAppTemplateHttpScaleRuleAuthentication].
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [triggerParameter] Required.
  GetAppTemplateHttpScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory GetAppTemplateHttpScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateHttpScaleRuleAuthentication(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      triggerParameter: pulumi.Input.fromValue(map['triggerParameter'] as String),
    );
  }
}

