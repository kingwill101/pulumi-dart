// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_azure_queue_scale_rule_authentication.dart';

class AppTemplateAzureQueueScaleRule {
  /// One or more `authentication` blocks as defined below.
  final pulumi.Input<List<AppTemplateAzureQueueScaleRuleAuthentication>> authentications;
  /// The name of the Scaling Rule
  final pulumi.Input<String> name;
  /// The value of the length of the queue to trigger scaling actions.
  final pulumi.Input<int> queueLength;
  /// The name of the Azure Queue
  final pulumi.Input<String> queueName;

  /// Creates a new [AppTemplateAzureQueueScaleRule].
  /// [authentications] One or more `authentication` blocks as defined below.
  /// [name] The name of the Scaling Rule
  /// [queueLength] The value of the length of the queue to trigger scaling actions.
  /// [queueName] The name of the Azure Queue
  const AppTemplateAzureQueueScaleRule({
    required this.authentications,
    required this.name,
    required this.queueLength,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.mapInputValue<List<AppTemplateAzureQueueScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<AppTemplateAzureQueueScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'queueLength': queueLength,
      'queueName': queueName,
    };
  }

  factory AppTemplateAzureQueueScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateAzureQueueScaleRule(
      authentications: pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateAzureQueueScaleRuleAuthentication>(map['authentications']!, (value) => AppTemplateAzureQueueScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      queueLength: pulumi.Input.fromValue(map['queueLength'] as int),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
    );
  }
}
