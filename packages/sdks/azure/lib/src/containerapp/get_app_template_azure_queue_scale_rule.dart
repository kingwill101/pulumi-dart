// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_azure_queue_scale_rule_authentication.dart';

class GetAppTemplateAzureQueueScaleRule {
  final pulumi.Input<List<GetAppTemplateAzureQueueScaleRuleAuthentication>> authentications;
  /// The name of the Container App.
  final pulumi.Input<String> name;
  final pulumi.Input<int> queueLength;
  final pulumi.Input<String> queueName;

  /// Creates a new [GetAppTemplateAzureQueueScaleRule].
  /// [authentications] Required.
  /// [name] The name of the Container App.
  /// [queueLength] Required.
  /// [queueName] Required.
  const GetAppTemplateAzureQueueScaleRule({
    required this.authentications,
    required this.name,
    required this.queueLength,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.mapInputValue<List<GetAppTemplateAzureQueueScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<GetAppTemplateAzureQueueScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'queueLength': queueLength,
      'queueName': queueName,
    };
  }

  factory GetAppTemplateAzureQueueScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateAzureQueueScaleRule(
      authentications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateAzureQueueScaleRuleAuthentication>(map['authentications']!, (value) => GetAppTemplateAzureQueueScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      queueLength: pulumi.Input.fromValue((map['queueLength'] as num).toInt()),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
    );
  }
}
