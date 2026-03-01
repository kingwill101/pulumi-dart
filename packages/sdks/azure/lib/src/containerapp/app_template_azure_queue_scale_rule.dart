// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_azure_queue_scale_rule_authentication.dart';

class AppTemplateAzureQueueScaleRule {
  /// One or more `authentication` blocks as defined below.
  final List<AppTemplateAzureQueueScaleRuleAuthentication> authentications;
  /// The name of the Scaling Rule
  final String name;
  /// The value of the length of the queue to trigger scaling actions.
  final int queueLength;
  /// The name of the Azure Queue
  final String queueName;

  /// Creates a new [AppTemplateAzureQueueScaleRule].
  /// [authentications] One or more `authentication` blocks as defined below.
  /// [name] The name of the Scaling Rule
  /// [queueLength] The value of the length of the queue to trigger scaling actions.
  /// [queueName] The name of the Azure Queue
  AppTemplateAzureQueueScaleRule({
    required this.authentications,
    required this.name,
    required this.queueLength,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.encodeList<AppTemplateAzureQueueScaleRuleAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'name': name,
      'queueLength': queueLength,
      'queueName': queueName,
    };
  }

  factory AppTemplateAzureQueueScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateAzureQueueScaleRule(
      authentications: pulumi.Input.decodeList<AppTemplateAzureQueueScaleRuleAuthentication>(map['authentications'], (value) => AppTemplateAzureQueueScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      queueLength: map['queueLength'] as int,
      queueName: map['queueName'] as String,
    );
  }
}

