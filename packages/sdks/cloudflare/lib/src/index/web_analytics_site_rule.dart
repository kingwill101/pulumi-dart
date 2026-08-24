// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAnalyticsSiteRule {
  final pulumi.Input<String?>? created;
  /// The hostname the rule will be applied to.
  final pulumi.Input<String?>? host;
  /// The Web Analytics rule identifier.
  final pulumi.Input<String?>? id;
  /// Whether the rule includes or excludes traffic from being measured.
  final pulumi.Input<bool?>? inclusive;
  /// Whether the rule is paused or not.
  final pulumi.Input<bool?>? isPaused;
  /// The paths the rule will be applied to.
  final pulumi.Input<List<String>?>? paths;
  final pulumi.Input<double?>? priority;

  /// Creates a new [WebAnalyticsSiteRule].
  /// [created] Optional.
  /// [host] The hostname the rule will be applied to.
  /// [id] The Web Analytics rule identifier.
  /// [inclusive] Whether the rule includes or excludes traffic from being measured.
  /// [isPaused] Whether the rule is paused or not.
  /// [paths] The paths the rule will be applied to.
  /// [priority] Optional.
  const WebAnalyticsSiteRule({
    this.created,
    this.host,
    this.id,
    this.inclusive,
    this.isPaused,
    this.paths,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'host': ?host,
      'id': ?id,
      'inclusive': ?inclusive,
      'isPaused': ?isPaused,
      'paths': ?paths,
      'priority': ?priority,
    };
  }

  factory WebAnalyticsSiteRule.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsSiteRule(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusive: (() { final guardedValue = map['inclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPaused: (() { final guardedValue = map['isPaused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
