// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWebAnalyticsSitesResultRule {
  final pulumi.Input<String> created;
  /// The hostname the rule will be applied to.
  final pulumi.Input<String> host;
  /// The Web Analytics rule identifier.
  final pulumi.Input<String> id;
  /// Whether the rule includes or excludes traffic from being measured.
  final pulumi.Input<bool> inclusive;
  /// Whether the rule is paused or not.
  final pulumi.Input<bool> isPaused;
  /// The paths the rule will be applied to.
  final pulumi.Input<List<String>> paths;
  final pulumi.Input<double> priority;

  /// Creates a new [GetWebAnalyticsSitesResultRule].
  /// [created] Required.
  /// [host] The hostname the rule will be applied to.
  /// [id] The Web Analytics rule identifier.
  /// [inclusive] Whether the rule includes or excludes traffic from being measured.
  /// [isPaused] Whether the rule is paused or not.
  /// [paths] The paths the rule will be applied to.
  /// [priority] Required.
  const GetWebAnalyticsSitesResultRule({
    required this.created,
    required this.host,
    required this.id,
    required this.inclusive,
    required this.isPaused,
    required this.paths,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'host': host,
      'id': id,
      'inclusive': inclusive,
      'isPaused': isPaused,
      'paths': paths,
      'priority': priority,
    };
  }

  factory GetWebAnalyticsSitesResultRule.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSitesResultRule(
      created: pulumi.Input.fromValue(map['created'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      inclusive: pulumi.Input.fromValue(map['inclusive'] as bool),
      isPaused: pulumi.Input.fromValue(map['isPaused'] as bool),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
    );
  }
}
