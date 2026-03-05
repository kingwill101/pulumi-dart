// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list.dart';
import 'enterprise_crm_eventbus_proto_base_alert_config_threshold_value.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_metric_type.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_threshold_type.dart';

/// Message to be used to configure alerting in the {@code TaskConfig} protos for tasks in an event.
class EnterpriseCrmEventbusProtoTaskAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  final pulumi.Input<String>? aggregationPeriod;
  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  final pulumi.Input<bool>? alertDisabled;
  /// A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  final pulumi.Input<String>? alertName;
  /// Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  final pulumi.Input<String>? clientId;
  /// Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final pulumi.Input<String>? durationThresholdMs;
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList>? errorEnumList;
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskAlertConfigMetricType>? metricType;
  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final pulumi.Input<int>? numAggregationPeriods;
  /// Only count final task attempts, not retries.
  final pulumi.Input<bool>? onlyFinalAttempt;
  /// Link to a playbook for resolving the issue that triggered this alert.
  final pulumi.Input<String>? playbookUrl;
  /// The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType>? thresholdType;
  /// The metric value, above or below which the alert should be triggered.
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue>? thresholdValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList>? warningEnumList;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskAlertConfig].
  /// [aggregationPeriod] The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  /// [alertDisabled] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  /// [alertName] A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  /// [clientId] Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  /// [durationThresholdMs] Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [errorEnumList] Optional.
  /// [metricType] Optional.
  /// [numAggregationPeriods] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [onlyFinalAttempt] Only count final task attempts, not retries.
  /// [playbookUrl] Link to a playbook for resolving the issue that triggered this alert.
  /// [thresholdType] The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  /// [warningEnumList] Optional.
  EnterpriseCrmEventbusProtoTaskAlertConfig({
    this.aggregationPeriod,
    this.alertDisabled,
    this.alertName,
    this.clientId,
    this.durationThresholdMs,
    this.errorEnumList,
    this.metricType,
    this.numAggregationPeriods,
    this.onlyFinalAttempt,
    this.playbookUrl,
    this.thresholdType,
    this.thresholdValue,
    this.warningEnumList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': ?aggregationPeriod,
      'alertDisabled': ?alertDisabled,
      'alertName': ?alertName,
      'clientId': ?clientId,
      'durationThresholdMs': ?durationThresholdMs,
      'errorEnumList': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList, Map<String, dynamic>>(errorEnumList, (value) => value.toMap()),
      'metricType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoTaskAlertConfigMetricType, String>(metricType, (value) => value.wireValue),
      'numAggregationPeriods': ?numAggregationPeriods,
      'onlyFinalAttempt': ?onlyFinalAttempt,
      'playbookUrl': ?playbookUrl,
      'thresholdType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType, String>(thresholdType, (value) => value.wireValue),
      'thresholdValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue, Map<String, dynamic>>(thresholdValue, (value) => value.toMap()),
      'warningEnumList': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList, Map<String, dynamic>>(warningEnumList, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskAlertConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskAlertConfig(
      aggregationPeriod: (() { final guardedValue = map['aggregationPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertDisabled: (() { final guardedValue = map['alertDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alertName: (() { final guardedValue = map['alertName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationThresholdMs: (() { final guardedValue = map['durationThresholdMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorEnumList: (() { final guardedValue = map['errorEnumList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTaskAlertConfigMetricType.fromValue(guardedValue as String)); })(),
      numAggregationPeriods: (() { final guardedValue = map['numAggregationPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      onlyFinalAttempt: (() { final guardedValue = map['onlyFinalAttempt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      playbookUrl: (() { final guardedValue = map['playbookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thresholdType: (() { final guardedValue = map['thresholdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType.fromValue(guardedValue as String)); })(),
      thresholdValue: (() { final guardedValue = map['thresholdValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warningEnumList: (() { final guardedValue = map['warningEnumList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

