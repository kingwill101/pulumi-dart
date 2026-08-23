// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_custom_scale_rule_authentication.dart';

class AppTemplateCustomScaleRule {
  /// Zero or more `authentication` blocks as defined below.
  ///
  /// * `ìdentity_id`- (Optional) Resource ID for the System or User Assigned Managed identity to use when executing the scale rule.
  final pulumi.Input<List<AppTemplateCustomScaleRuleAuthentication>>? authentications;
  /// The Custom rule type. Possible values include: `activemq`, `artemis-queue`, `kafka`, `pulsar`, `aws-cloudwatch`, `aws-dynamodb`, `aws-dynamodb-streams`, `aws-kinesis-stream`, `aws-sqs-queue`, `azure-app-insights`, `azure-blob`, `azure-data-explorer`, `azure-eventhub`, `azure-log-analytics`, `azure-monitor`, `azure-pipelines`, `azure-servicebus`, `azure-queue`, `cassandra`, `cpu`, `cron`, `datadog`, `elasticsearch`, `external`, `external-push`, `gcp-stackdriver`, `gcp-storage`, `gcp-pubsub`, `graphite`, `http`, `huawei-cloudeye`, `ibmmq`, `influxdb`, `kubernetes-workload`, `liiklus`, `memory`, `metrics-api`, `mongodb`, `mssql`, `mysql`, `nats-jetstream`, `stan`, `tcp`, `new-relic`, `openstack-metric`, `openstack-swift`, `postgresql`, `predictkube`, `prometheus`, `rabbitmq`, `redis`, `redis-cluster`, `redis-sentinel`, `redis-streams`, `redis-cluster-streams`, `redis-sentinel-streams`, `selenium-grid`,`solace-event-queue`, and `github-runner`.
  final pulumi.Input<String> customRuleType;
  /// ID of the System or User Managed Identity used to execute scale rule.
  final pulumi.Input<String>? identityId;
  /// A map of string key-value pairs to configure the Custom Scale Rule.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the Scaling Rule
  final pulumi.Input<String> name;

  /// Creates a new [AppTemplateCustomScaleRule].
  /// [authentications] Zero or more `authentication` blocks as defined below.
  /// [customRuleType] The Custom rule type. Possible values include: `activemq`, `artemis-queue`, `kafka`, `pulsar`, `aws-cloudwatch`, `aws-dynamodb`, `aws-dynamodb-streams`, `aws-kinesis-stream`, `aws-sqs-queue`, `azure-app-insights`, `azure-blob`, `azure-data-explorer`, `azure-eventhub`, `azure-log-analytics`, `azure-monitor`, `azure-pipelines`, `azure-servicebus`, `azure-queue`, `cassandra`, `cpu`, `cron`, `datadog`, `elasticsearch`, `external`, `external-push`, `gcp-stackdriver`, `gcp-storage`, `gcp-pubsub`, `graphite`, `http`, `huawei-cloudeye`, `ibmmq`, `influxdb`, `kubernetes-workload`, `liiklus`, `memory`, `metrics-api`, `mongodb`, `mssql`, `mysql`, `nats-jetstream`, `stan`, `tcp`, `new-relic`, `openstack-metric`, `openstack-swift`, `postgresql`, `predictkube`, `prometheus`, `rabbitmq`, `redis`, `redis-cluster`, `redis-sentinel`, `redis-streams`, `redis-cluster-streams`, `redis-sentinel-streams`, `selenium-grid`,`solace-event-queue`, and `github-runner`.
  /// [identityId] ID of the System or User Managed Identity used to execute scale rule.
  /// [metadata] A map of string key-value pairs to configure the Custom Scale Rule.
  /// [name] The name of the Scaling Rule
  const AppTemplateCustomScaleRule({
    this.authentications,
    required this.customRuleType,
    this.identityId,
    required this.metadata,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateCustomScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<AppTemplateCustomScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRuleType': customRuleType,
      'identityId': ?identityId,
      'metadata': metadata,
      'name': name,
    };
  }

  factory AppTemplateCustomScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateCustomScaleRule(
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateCustomScaleRuleAuthentication>(guardedValue, (value) => AppTemplateCustomScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customRuleType: pulumi.Input.fromValue(map['customRuleType'] as String),
      identityId: (() { final guardedValue = map['identityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
