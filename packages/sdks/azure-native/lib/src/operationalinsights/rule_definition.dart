// ignore_for_file: unused_element, unnecessary_cast


/// Rule definition parameters.
class RuleDefinition {
  /// The minimum delay in seconds before bin processing.
  final int? binDelay;
  /// Scheduled window in minutes. Allowed values: 20, 30, 60, 120, 180, 360, 720, 1440.
  final int? binSize;
  /// The start time (UTC) when Summary rule execution starts.
  final String? binStartTime;
  /// The destination table used for the Summary rule results.
  final String? destinationTable;
  /// Summary rule query.
  final String? query;
  /// The time cursor used in Summary rules bins processing, e.g. TimeGenerated.
  final String? timeSelector;

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
      binDelay: map['binDelay'] == null ? null : map['binDelay'] as int,
      binSize: map['binSize'] == null ? null : map['binSize'] as int,
      binStartTime: map['binStartTime'] == null ? null : map['binStartTime'] as String,
      destinationTable: map['destinationTable'] == null ? null : map['destinationTable'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      timeSelector: map['timeSelector'] == null ? null : map['timeSelector'] as String,
    );
  }
}

