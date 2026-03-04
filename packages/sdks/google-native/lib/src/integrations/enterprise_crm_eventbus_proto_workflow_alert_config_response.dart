// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list_response.dart';
import 'enterprise_crm_eventbus_proto_base_alert_config_threshold_value_response.dart';

/// Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.
class EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse {
  /// For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  final pulumi.Input<String> aggregationPeriod;

  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  final pulumi.Input<bool> alertDisabled;

  /// A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the workflow.
  final pulumi.Input<String> alertName;

  /// Client associated with this alert configuration.
  final pulumi.Input<String> clientId;

  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final pulumi.Input<String> durationThresholdMs;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse
  >
  errorEnumList;
  final pulumi.Input<String> metricType;

  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final pulumi.Input<int> numAggregationPeriods;

  /// For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  final pulumi.Input<bool> onlyFinalAttempt;

  /// Link to a playbook for resolving the issue that triggered this alert.
  final pulumi.Input<String> playbookUrl;

  /// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final pulumi.Input<String> thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  final pulumi.Input<
    EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse
  >
  thresholdValue;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse
  >
  warningEnumList;

  /// Creates a new [EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse].
  /// [aggregationPeriod] For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  /// [alertDisabled] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this workflow alert.
  /// [alertName] A name to identify this alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the workflow.
  /// [clientId] Client associated with this alert configuration.
  /// [durationThresholdMs] Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [errorEnumList] Required.
  /// [metricType] Required.
  /// [numAggregationPeriods] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [onlyFinalAttempt] For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  /// [playbookUrl] Link to a playbook for resolving the issue that triggered this alert.
  /// [thresholdType] The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  /// [warningEnumList] Required.
  EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse({
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
      'errorEnumList':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse,
            Map<String, dynamic>
          >(errorEnumList, (value) => value.toMap()),
      'metricType': metricType,
      'numAggregationPeriods': numAggregationPeriods,
      'onlyFinalAttempt': onlyFinalAttempt,
      'playbookUrl': playbookUrl,
      'thresholdType': thresholdType,
      'thresholdValue':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse,
            Map<String, dynamic>
          >(thresholdValue, (value) => value.toMap()),
      'warningEnumList':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse,
            Map<String, dynamic>
          >(warningEnumList, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse(
      aggregationPeriod: pulumi.Input.fromValue(
        map['aggregationPeriod'] as String,
      ),
      alertDisabled: pulumi.Input.fromValue(map['alertDisabled'] as bool),
      alertName: pulumi.Input.fromValue(map['alertName'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      durationThresholdMs: pulumi.Input.fromValue(
        map['durationThresholdMs'] as String,
      ),
      errorEnumList: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap(
          (map['errorEnumList']! as Map).cast<String, dynamic>(),
        ),
      ),
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
      numAggregationPeriods: pulumi.Input.fromValue(
        map['numAggregationPeriods'] as int,
      ),
      onlyFinalAttempt: pulumi.Input.fromValue(map['onlyFinalAttempt'] as bool),
      playbookUrl: pulumi.Input.fromValue(map['playbookUrl'] as String),
      thresholdType: pulumi.Input.fromValue(map['thresholdType'] as String),
      thresholdValue: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValueResponse.fromMap(
          (map['thresholdValue']! as Map).cast<String, dynamic>(),
        ),
      ),
      warningEnumList: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap(
          (map['warningEnumList']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
