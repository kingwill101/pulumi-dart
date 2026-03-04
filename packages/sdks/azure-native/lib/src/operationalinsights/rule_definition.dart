// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule definition parameters.
class RuleDefinition {
  /// The minimum delay in seconds before bin processing.
  final pulumi.Input<int>? binDelay;

  /// Scheduled window in minutes. Allowed values: 20, 30, 60, 120, 180, 360, 720, 1440.
  final pulumi.Input<int>? binSize;

  /// The start time (UTC) when Summary rule execution starts.
  final pulumi.Input<String>? binStartTime;

  /// The destination table used for the Summary rule results.
  final pulumi.Input<String>? destinationTable;

  /// Summary rule query.
  final pulumi.Input<String>? query;

  /// The time cursor used in Summary rules bins processing, e.g. TimeGenerated.
  final pulumi.Input<String>? timeSelector;

  /// Creates a new [RuleDefinition].
  /// [binDelay] The minimum delay in seconds before bin processing.
  /// [binSize] Scheduled window in minutes. Allowed values: 20, 30, 60, 120, 180, 360, 720, 1440.
  /// [binStartTime] The start time (UTC) when Summary rule execution starts.
  /// [destinationTable] The destination table used for the Summary rule results.
  /// [query] Summary rule query.
  /// [timeSelector] The time cursor used in Summary rules bins processing, e.g. TimeGenerated.
  RuleDefinition({
    this.binDelay,
    this.binSize,
    this.binStartTime,
    this.destinationTable,
    this.query,
    this.timeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binDelay': ?binDelay,
      'binSize': ?binSize,
      'binStartTime': ?binStartTime,
      'destinationTable': ?destinationTable,
      'query': ?query,
      'timeSelector': ?timeSelector,
    };
  }

  factory RuleDefinition.fromMap(Map<String, dynamic> map) {
    return RuleDefinition(
      binDelay: (() {
        final guardedValue = map['binDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      binSize: (() {
        final guardedValue = map['binSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      binStartTime: (() {
        final guardedValue = map['binStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationTable: (() {
        final guardedValue = map['destinationTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeSelector: (() {
        final guardedValue = map['timeSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
