// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_event_trigger_config_scale_rule_authentication.dart';

class JobEventTriggerConfigScaleRule {
  /// A `authentication` block as defined below.
  final pulumi.Input<List<JobEventTriggerConfigScaleRuleAuthentication>>? authentications;
  /// Type of the scale rule. Possible values are `activemq`, `artemis-queue`, `kafka`, `pulsar`, `aws-cloudwatch`, `aws-dynamodb`, `aws-dynamodb-streams`, `aws-kinesis-stream`, `aws-sqs-queue`, `azure-app-insights`, `azure-blob`, `azure-data-explorer`, `azure-eventhub`, `azure-log-analytics`, `azure-monitor`, `azure-pipelines`, `azure-servicebus`, `azure-queue`, `cassandra`, `cpu`, `cron`, `datadog`, `elasticsearch`, `external`, `external-push`, `gcp-stackdriver`, `gcp-storage`, `gcp-pubsub`, `graphite`, `http`, `huawei-cloudeye`, `ibmmq`, `influxdb`, `kubernetes-workload`, `liiklus`, `memory`, `metrics-api`, `mongodb`, `mssql`, `mysql`, `nats-jetstream`, `stan`, `tcp`, `new-relic`, `openstack-metric`, `openstack-swift`, `postgresql`, `predictkube`, `prometheus`, `rabbitmq`, `redis`, `redis-cluster`, `redis-sentinel`, `redis-streams`, `redis-cluster-streams`, `redis-sentinel-streams`, `selenium-grid`, `solace-event-queue` and `github-runner`.
  final pulumi.Input<String> customRuleType;
  /// Metadata properties to describe the scale rule.
  final pulumi.Input<Map<String, String>> metadata;
  /// Name of the scale rule.
  final pulumi.Input<String> name;

  /// Creates a new [JobEventTriggerConfigScaleRule].
  /// [authentications] A `authentication` block as defined below.
  /// [customRuleType] Type of the scale rule. Possible values are `activemq`, `artemis-queue`, `kafka`, `pulsar`, `aws-cloudwatch`, `aws-dynamodb`, `aws-dynamodb-streams`, `aws-kinesis-stream`, `aws-sqs-queue`, `azure-app-insights`, `azure-blob`, `azure-data-explorer`, `azure-eventhub`, `azure-log-analytics`, `azure-monitor`, `azure-pipelines`, `azure-servicebus`, `azure-queue`, `cassandra`, `cpu`, `cron`, `datadog`, `elasticsearch`, `external`, `external-push`, `gcp-stackdriver`, `gcp-storage`, `gcp-pubsub`, `graphite`, `http`, `huawei-cloudeye`, `ibmmq`, `influxdb`, `kubernetes-workload`, `liiklus`, `memory`, `metrics-api`, `mongodb`, `mssql`, `mysql`, `nats-jetstream`, `stan`, `tcp`, `new-relic`, `openstack-metric`, `openstack-swift`, `postgresql`, `predictkube`, `prometheus`, `rabbitmq`, `redis`, `redis-cluster`, `redis-sentinel`, `redis-streams`, `redis-cluster-streams`, `redis-sentinel-streams`, `selenium-grid`, `solace-event-queue` and `github-runner`.
  /// [metadata] Metadata properties to describe the scale rule.
  /// [name] Name of the scale rule.
  JobEventTriggerConfigScaleRule({
    this.authentications,
    required this.customRuleType,
    required this.metadata,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?pulumi.Input.mapOptionalInputValue<List<JobEventTriggerConfigScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<JobEventTriggerConfigScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customRuleType': customRuleType,
      'metadata': metadata,
      'name': name,
    };
  }

  factory JobEventTriggerConfigScaleRule.fromMap(Map<String, dynamic> map) {
    return JobEventTriggerConfigScaleRule(
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobEventTriggerConfigScaleRuleAuthentication>(guardedValue, (value) => JobEventTriggerConfigScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customRuleType: pulumi.Input.fromValue(map['customRuleType'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

