// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_alert_details_override_dynamic_property.dart';

class AlertRuleNrtAlertDetailsOverride {
  /// The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  final pulumi.Input<String?>? descriptionFormat;
  /// The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  final pulumi.Input<String?>? displayNameFormat;
  /// A list of `dynamicProperty` blocks as defined below.
  final pulumi.Input<List<AlertRuleNrtAlertDetailsOverrideDynamicProperty>?>? dynamicProperties;
  /// The column name to take the alert severity from.
  final pulumi.Input<String?>? severityColumnName;
  /// The column name to take the alert tactics from.
  final pulumi.Input<String?>? tacticsColumnName;

  /// Creates a new [AlertRuleNrtAlertDetailsOverride].
  /// [descriptionFormat] The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  /// [displayNameFormat] The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  /// [dynamicProperties] A list of `dynamicProperty` blocks as defined below.
  /// [severityColumnName] The column name to take the alert severity from.
  /// [tacticsColumnName] The column name to take the alert tactics from.
  const AlertRuleNrtAlertDetailsOverride({
    this.descriptionFormat,
    this.displayNameFormat,
    this.dynamicProperties,
    this.severityColumnName,
    this.tacticsColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionFormat': ?descriptionFormat,
      'displayNameFormat': ?displayNameFormat,
      'dynamicProperties': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleNrtAlertDetailsOverrideDynamicProperty>, List<Map<String, dynamic>>>(dynamicProperties, (value) => pulumi.Input.encodeList<AlertRuleNrtAlertDetailsOverrideDynamicProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severityColumnName': ?severityColumnName,
      'tacticsColumnName': ?tacticsColumnName,
    };
  }

  factory AlertRuleNrtAlertDetailsOverride.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtAlertDetailsOverride(
      descriptionFormat: (() { final guardedValue = map['descriptionFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayNameFormat: (() { final guardedValue = map['displayNameFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicProperties: (() { final guardedValue = map['dynamicProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleNrtAlertDetailsOverrideDynamicProperty>(guardedValue, (value) => AlertRuleNrtAlertDetailsOverrideDynamicProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      severityColumnName: (() { final guardedValue = map['severityColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tacticsColumnName: (() { final guardedValue = map['tacticsColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
