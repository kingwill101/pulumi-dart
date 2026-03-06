// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list_response.dart';
import 'enterprise_crm_eventbus_proto_base_alert_config_threshold_value_response.dart';

/// Message to be used to configure alerting in the {@code TaskConfig} protos for tasks in an event.
class EnterpriseCrmEventbusProtoTaskAlertConfigResponse {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  final pulumi.Input<String> aggregationPeriod;
  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  final pulumi.Input<bool> alertDisabled;
  /// A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  final pulumi.Input<String> alertName;
  /// Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  final pulumi.Input<String> clientId;
  /// Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final pulumi.Input<String> durationThresholdMs;
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse> errorEnumList;
  final pulumi.Input<String> metricType;
  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final pulumi.Input<int> numAggregationPeriods;
  /// Only count final task attempts, not retries.
  final pulumi.Input<bool> onlyFinalAttempt;
  /// Link to a playbook for resolving the issue that triggered this alert.
  final pulumi.Input<String> playbookUrl;
  /// The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final pulumi.Input<String> thresholdType;
  /// The metric value, above or below which the alert should be triggered.
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse> thresholdValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse> warningEnumList;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskAlertConfigResponse].
  /// [aggregationPeriod] The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  /// [alertDisabled] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  /// [alertName] A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique in within the scope of the containing workflow.
  /// [clientId] Client associated with this alert configuration. Must be a client enabled in one of the containing workflow's triggers.
  /// [durationThresholdMs] Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [errorEnumList] Required.
  /// [metricType] Required.
  /// [numAggregationPeriods] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [onlyFinalAttempt] Only count final task attempts, not retries.
  /// [playbookUrl] Link to a playbook for resolving the issue that triggered this alert.
  /// [thresholdType] The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  /// [warningEnumList] Required.
  const EnterpriseCrmEventbusProtoTaskAlertConfigResponse({
    required this.aggregationPeriod,
    required this.alertDisabled,
    required this.alertName,
    required this.clientId,
    required this.durationThresholdMs,
    required this.errorEnumList,
    required this.metricType,
    required this.numAggregationPeriods,
    required this.onlyFinalAttempt,
    required this.playbookUrl,
    required this.thresholdType,
    required this.thresholdValue,
    required this.warningEnumList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': aggregationPeriod,
      'alertDisabled': alertDisabled,
      'alertName': alertName,
      'clientId': clientId,
      'durationThresholdMs': durationThresholdMs,
      'errorEnumList': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse, Map<String, dynamic>>(errorEnumList, (value) => value.toMap()),
      'metricType': metricType,
      'numAggregationPeriods': numAggregationPeriods,
      'onlyFinalAttempt': onlyFinalAttempt,
      'playbookUrl': playbookUrl,
      'thresholdType': thresholdType,
      'thresholdValue': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse, Map<String, dynamic>>(thresholdValue, (value) => value.toMap()),
      'warningEnumList': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse, Map<String, dynamic>>(warningEnumList, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskAlertConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskAlertConfigResponse(
      aggregationPeriod: pulumi.Input.fromValue(map['aggregationPeriod'] as String),
      alertDisabled: pulumi.Input.fromValue(map['alertDisabled'] as bool),
      alertName: pulumi.Input.fromValue(map['alertName'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      durationThresholdMs: pulumi.Input.fromValue(map['durationThresholdMs'] as String),
      errorEnumList: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap((map['errorEnumList']! as Map).cast<String, dynamic>())),
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
      numAggregationPeriods: pulumi.Input.fromValue(map['numAggregationPeriods'] as int),
      onlyFinalAttempt: pulumi.Input.fromValue(map['onlyFinalAttempt'] as bool),
      playbookUrl: pulumi.Input.fromValue(map['playbookUrl'] as String),
      thresholdType: pulumi.Input.fromValue(map['thresholdType'] as String),
      thresholdValue: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse.fromMap((map['thresholdValue']! as Map).cast<String, dynamic>())),
      warningEnumList: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap((map['warningEnumList']! as Map).cast<String, dynamic>())),
    );
  }
}

