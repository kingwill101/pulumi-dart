// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_custom_scale_rule_authentication.dart';

class GetAppTemplateCustomScaleRule {
  final pulumi.Input<List<GetAppTemplateCustomScaleRuleAuthentication>> authentications;
  final pulumi.Input<String> customRuleType;
  /// ID of the System or User Managed Identity used to execute scale rule.
  final pulumi.Input<String> identityId;
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// Creates a new [GetAppTemplateCustomScaleRule].
  /// [authentications] Required.
  /// [customRuleType] Required.
  /// [identityId] ID of the System or User Managed Identity used to execute scale rule.
  /// [metadata] Required.
  /// [name] The name of the Container App.
  const GetAppTemplateCustomScaleRule({
    required this.authentications,
    required this.customRuleType,
    required this.identityId,
    required this.metadata,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.mapInputValue<List<GetAppTemplateCustomScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<GetAppTemplateCustomScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRuleType': customRuleType,
      'identityId': identityId,
      'metadata': metadata,
      'name': name,
    };
  }

  factory GetAppTemplateCustomScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateCustomScaleRule(
      authentications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateCustomScaleRuleAuthentication>(map['authentications']!, (value) => GetAppTemplateCustomScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))),
      customRuleType: pulumi.Input.fromValue(map['customRuleType'] as String),
      identityId: pulumi.Input.fromValue(map['identityId'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
