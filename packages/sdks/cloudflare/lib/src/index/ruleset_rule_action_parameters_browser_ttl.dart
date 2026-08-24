// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersBrowserTtl {
  /// The browser TTL (in seconds) if you choose the "overrideOrigin" mode.
  final pulumi.Input<int?>? default_;
  /// The browser TTL mode.
  /// Available values: "respect*origin", "bypass*by*default", "override*origin", "bypass".
  final pulumi.Input<String> mode;

  /// Creates a new [RulesetRuleActionParametersBrowserTtl].
  /// [default_] The browser TTL (in seconds) if you choose the "overrideOrigin" mode.
  /// [mode] The browser TTL mode.
  const RulesetRuleActionParametersBrowserTtl({
    this.default_,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'mode': mode,
    };
  }

  factory RulesetRuleActionParametersBrowserTtl.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersBrowserTtl(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
