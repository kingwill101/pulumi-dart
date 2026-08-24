// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAgentBlockingRuleFilter {
  /// A string to search for in the description of existing rules.
  final pulumi.Input<String?>? description;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// A string to search for in the user agent values of existing rules.
  final pulumi.Input<String?>? userAgent;

  /// Creates a new [GetUserAgentBlockingRuleFilter].
  /// [description] A string to search for in the description of existing rules.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [userAgent] A string to search for in the user agent values of existing rules.
  const GetUserAgentBlockingRuleFilter({
    this.description,
    this.paused,
    this.userAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'paused': ?paused,
      'userAgent': ?userAgent,
    };
  }

  factory GetUserAgentBlockingRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRuleFilter(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAgent: (() { final guardedValue = map['userAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
