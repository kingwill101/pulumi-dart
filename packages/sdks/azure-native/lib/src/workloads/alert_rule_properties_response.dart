// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_query_parameter_response.dart';

/// Describes the properties of an alert.
class AlertRulePropertiesResponse {
  /// Action Group resource Ids to invoke when the alert fires
  final pulumi.Input<List<String>>? actionGroups;
  /// The alert query parameters.
  final pulumi.Input<List<AlertQueryParameterResponse>>? alertQueryParameters;
  /// The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
  final pulumi.Input<String>? autoMitigate;
  /// Evaluation of metric on a particular column.
  final pulumi.Input<String>? dimension;
  /// How often the scheduled query rule is evaluated.
  final pulumi.Input<int>? evaluationFrequency;
  /// The operator for failing periods.
  final pulumi.Input<String>? failingPeriodsOperator;
  /// The number of failing periods to trigger an alert.
  final pulumi.Input<int>? failingPeriodsToAlert;
  /// Mute actions for the chosen period of time after the alert is fired.
  final pulumi.Input<int>? muteActionsDuration;
  /// Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest.
  final pulumi.Input<int>? severity;
  /// Indicates whether the alert is in an enabled state.
  final pulumi.Input<String>? status;
  /// The threshold of the alert.
  final pulumi.Input<int>? threshold;
  /// The threshold operator of the alert.
  final pulumi.Input<String>? thresholdOperator;
  /// The period of time on which the Alert query will be executed.
  final pulumi.Input<int>? windowSize;

  /// Creates a new [AlertRulePropertiesResponse].
  /// [actionGroups] Action Group resource Ids to invoke when the alert fires
  /// [alertQueryParameters] The alert query parameters.
  /// [autoMitigate] The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
  /// [dimension] Evaluation of metric on a particular column.
  /// [evaluationFrequency] How often the scheduled query rule is evaluated.
  /// [failingPeriodsOperator] The operator for failing periods.
  /// [failingPeriodsToAlert] The number of failing periods to trigger an alert.
  /// [muteActionsDuration] Mute actions for the chosen period of time after the alert is fired.
  /// [severity] Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest.
  /// [status] Indicates whether the alert is in an enabled state.
  /// [threshold] The threshold of the alert.
  /// [thresholdOperator] The threshold operator of the alert.
  /// [windowSize] The period of time on which the Alert query will be executed.
  const AlertRulePropertiesResponse({
    this.actionGroups,
    this.alertQueryParameters,
    this.autoMitigate,
    this.dimension,
    this.evaluationFrequency,
    this.failingPeriodsOperator,
    this.failingPeriodsToAlert,
    this.muteActionsDuration,
    this.severity,
    this.status,
    this.threshold,
    this.thresholdOperator,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'alertQueryParameters': ?pulumi.Input.mapOptionalInputValue<List<AlertQueryParameterResponse>, List<Map<String, dynamic>>>(alertQueryParameters, (value) => pulumi.Input.encodeList<AlertQueryParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoMitigate': ?autoMitigate,
      'dimension': ?dimension,
      'evaluationFrequency': ?evaluationFrequency,
      'failingPeriodsOperator': ?failingPeriodsOperator,
      'failingPeriodsToAlert': ?failingPeriodsToAlert,
      'muteActionsDuration': ?muteActionsDuration,
      'severity': ?severity,
      'status': ?status,
      'threshold': ?threshold,
      'thresholdOperator': ?thresholdOperator,
      'windowSize': ?windowSize,
    };
  }

  factory AlertRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AlertRulePropertiesResponse(
      actionGroups: (() { final guardedValue = map['actionGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      alertQueryParameters: (() { final guardedValue = map['alertQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertQueryParameterResponse>(guardedValue, (value) => AlertQueryParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoMitigate: (() { final guardedValue = map['autoMitigate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationFrequency: (() { final guardedValue = map['evaluationFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      failingPeriodsOperator: (() { final guardedValue = map['failingPeriodsOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failingPeriodsToAlert: (() { final guardedValue = map['failingPeriodsToAlert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      muteActionsDuration: (() { final guardedValue = map['muteActionsDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      thresholdOperator: (() { final guardedValue = map['thresholdOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowSize: (() { final guardedValue = map['windowSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

