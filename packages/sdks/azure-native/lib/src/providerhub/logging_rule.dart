// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_rule_hidden_property_paths.dart';

class LoggingRule {
  /// The action.
  final pulumi.Input<String> action;
  /// The detail level.
  final pulumi.Input<String> detailLevel;
  /// The direction.
  final pulumi.Input<String> direction;
  /// The hidden property paths.
  final pulumi.Input<LoggingRuleHiddenPropertyPaths>? hiddenPropertyPaths;

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
      'hiddenPropertyPaths': ?pulumi.Input.mapOptionalInputValue<LoggingRuleHiddenPropertyPaths, Map<String, dynamic>>(hiddenPropertyPaths, (value) => value.toMap()),
    };
  }

  factory LoggingRule.fromMap(Map<String, dynamic> map) {
    return LoggingRule(
      action: (map['action'] as String).input(),
      detailLevel: (map['detailLevel'] as String).input(),
      direction: (map['direction'] as String).input(),
      hiddenPropertyPaths: map['hiddenPropertyPaths'] == null ? null : (LoggingRuleHiddenPropertyPaths.fromMap((map['hiddenPropertyPaths']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

