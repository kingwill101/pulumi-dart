// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_scheduled_alert_details_override_dynamic_property.dart';

class AlertRuleScheduledAlertDetailsOverride {
  /// The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  final pulumi.Input<String>? descriptionFormat;
  /// The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  final pulumi.Input<String>? displayNameFormat;
  /// A list of `dynamic_property` blocks as defined below.
  final pulumi.Input<List<AlertRuleScheduledAlertDetailsOverrideDynamicProperty>>? dynamicProperties;
  /// The column name to take the alert severity from.
  final pulumi.Input<String>? severityColumnName;
  /// The column name to take the alert tactics from.
  final pulumi.Input<String>? tacticsColumnName;

  /// Creates a new [AlertRuleScheduledAlertDetailsOverride].
  /// [descriptionFormat] The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  /// [displayNameFormat] The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  /// [dynamicProperties] A list of `dynamic_property` blocks as defined below.
  /// [severityColumnName] The column name to take the alert severity from.
  /// [tacticsColumnName] The column name to take the alert tactics from.
  AlertRuleScheduledAlertDetailsOverride({
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
      'dynamicProperties': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleScheduledAlertDetailsOverrideDynamicProperty>, List<Map<String, dynamic>>>(dynamicProperties, (value) => pulumi.Input.encodeList<AlertRuleScheduledAlertDetailsOverrideDynamicProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severityColumnName': ?severityColumnName,
      'tacticsColumnName': ?tacticsColumnName,
    };
  }

  factory AlertRuleScheduledAlertDetailsOverride.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledAlertDetailsOverride(
      descriptionFormat: map['descriptionFormat'] == null ? null : (map['descriptionFormat']! as String).input(),
      displayNameFormat: map['displayNameFormat'] == null ? null : (map['displayNameFormat']! as String).input(),
      dynamicProperties: map['dynamicProperties'] == null ? null : (pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverrideDynamicProperty>(map['dynamicProperties']!, (value) => AlertRuleScheduledAlertDetailsOverrideDynamicProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      severityColumnName: map['severityColumnName'] == null ? null : (map['severityColumnName']! as String).input(),
      tacticsColumnName: map['tacticsColumnName'] == null ? null : (map['tacticsColumnName']! as String).input(),
    );
  }
}

