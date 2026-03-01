// ignore_for_file: unused_element, unnecessary_cast

import 'logging_rule_hidden_property_paths.dart';

class LoggingRule {
  /// The action.
  final String action;
  /// The detail level.
  final String detailLevel;
  /// The direction.
  final String direction;
  /// The hidden property paths.
  final LoggingRuleHiddenPropertyPaths? hiddenPropertyPaths;

  /// Creates a new [LoggingRule].
  /// [action] The action.
  /// [detailLevel] The detail level.
  /// [direction] The direction.
  /// [hiddenPropertyPaths] The hidden property paths.
  LoggingRule({
    required this.action,
    required this.detailLevel,
    required this.direction,
    this.hiddenPropertyPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'detailLevel': detailLevel,
      'direction': direction,
      'hiddenPropertyPaths': ?hiddenPropertyPaths == null ? null : hiddenPropertyPaths!.toMap(),
    };
  }

  factory LoggingRule.fromMap(Map<String, dynamic> map) {
    return LoggingRule(
      action: map['action'] as String,
      detailLevel: map['detailLevel'] as String,
      direction: map['direction'] as String,
      hiddenPropertyPaths: map['hiddenPropertyPaths'] == null ? null : LoggingRuleHiddenPropertyPaths.fromMap((map['hiddenPropertyPaths'] as Map).cast<String, dynamic>()),
    );
  }
}

