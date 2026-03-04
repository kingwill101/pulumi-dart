// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_property_mapping.dart';

/// Settings for how to dynamically override alert static details
class AlertDetailsOverride {
  /// the format containing columns name(s) to override the alert description
  final pulumi.Input<String>? alertDescriptionFormat;

  /// the format containing columns name(s) to override the alert name
  final pulumi.Input<String>? alertDisplayNameFormat;

  /// List of additional dynamic properties to override
  final pulumi.Input<List<AlertPropertyMapping>>? alertDynamicProperties;

  /// the column name to take the alert severity from
  final pulumi.Input<String>? alertSeverityColumnName;

  /// the column name to take the alert tactics from
  final pulumi.Input<String>? alertTacticsColumnName;

  /// Creates a new [AlertDetailsOverride].
  /// [alertDescriptionFormat] the format containing columns name(s) to override the alert description
  /// [alertDisplayNameFormat] the format containing columns name(s) to override the alert name
  /// [alertDynamicProperties] List of additional dynamic properties to override
  /// [alertSeverityColumnName] the column name to take the alert severity from
  /// [alertTacticsColumnName] the column name to take the alert tactics from
  AlertDetailsOverride({
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
      'alertDynamicProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertPropertyMapping>,
            List<Map<String, dynamic>>
          >(
            alertDynamicProperties,
            (value) =>
                pulumi.Input.encodeList<
                  AlertPropertyMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'alertSeverityColumnName': ?alertSeverityColumnName,
      'alertTacticsColumnName': ?alertTacticsColumnName,
    };
  }

  factory AlertDetailsOverride.fromMap(Map<String, dynamic> map) {
    return AlertDetailsOverride(
      alertDescriptionFormat: (() {
        final guardedValue = map['alertDescriptionFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alertDisplayNameFormat: (() {
        final guardedValue = map['alertDisplayNameFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alertDynamicProperties: (() {
        final guardedValue = map['alertDynamicProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertPropertyMapping>(
            guardedValue,
            (value) => AlertPropertyMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      alertSeverityColumnName: (() {
        final guardedValue = map['alertSeverityColumnName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alertTacticsColumnName: (() {
        final guardedValue = map['alertTacticsColumnName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
