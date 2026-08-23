// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_property_mapping_response.dart';

/// Settings for how to dynamically override alert static details
class AlertDetailsOverrideResponse {
  /// the format containing columns name(s) to override the alert description
  final pulumi.Input<String>? alertDescriptionFormat;
  /// the format containing columns name(s) to override the alert name
  final pulumi.Input<String>? alertDisplayNameFormat;
  /// List of additional dynamic properties to override
  final pulumi.Input<List<AlertPropertyMappingResponse>>? alertDynamicProperties;
  /// the column name to take the alert severity from
  final pulumi.Input<String>? alertSeverityColumnName;
  /// the column name to take the alert tactics from
  final pulumi.Input<String>? alertTacticsColumnName;

  /// Creates a new [AlertDetailsOverrideResponse].
  /// [alertDescriptionFormat] the format containing columns name(s) to override the alert description
  /// [alertDisplayNameFormat] the format containing columns name(s) to override the alert name
  /// [alertDynamicProperties] List of additional dynamic properties to override
  /// [alertSeverityColumnName] the column name to take the alert severity from
  /// [alertTacticsColumnName] the column name to take the alert tactics from
  const AlertDetailsOverrideResponse({
    this.alertDescriptionFormat,
    this.alertDisplayNameFormat,
    this.alertDynamicProperties,
    this.alertSeverityColumnName,
    this.alertTacticsColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDescriptionFormat': ?alertDescriptionFormat,
      'alertDisplayNameFormat': ?alertDisplayNameFormat,
      'alertDynamicProperties': ?pulumi.Input.mapOptionalInputValue<List<AlertPropertyMappingResponse>, List<Map<String, dynamic>>>(alertDynamicProperties, (value) => pulumi.Input.encodeList<AlertPropertyMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alertSeverityColumnName': ?alertSeverityColumnName,
      'alertTacticsColumnName': ?alertTacticsColumnName,
    };
  }

  factory AlertDetailsOverrideResponse.fromMap(Map<String, dynamic> map) {
    return AlertDetailsOverrideResponse(
      alertDescriptionFormat: (() { final guardedValue = map['alertDescriptionFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertDisplayNameFormat: (() { final guardedValue = map['alertDisplayNameFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertDynamicProperties: (() { final guardedValue = map['alertDynamicProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPropertyMappingResponse>(guardedValue, (value) => AlertPropertyMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alertSeverityColumnName: (() { final guardedValue = map['alertSeverityColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertTacticsColumnName: (() { final guardedValue = map['alertTacticsColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
