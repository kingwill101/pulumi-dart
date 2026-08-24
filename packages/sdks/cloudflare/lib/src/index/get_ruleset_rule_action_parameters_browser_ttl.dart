// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersBrowserTtl {
  /// The browser TTL (in seconds) if you choose the "overrideOrigin" mode.
  final pulumi.Input<int> default_;
  /// The browser TTL mode.
  /// Available values: "respect*origin", "bypass*by*default", "override*origin", "bypass".
  final pulumi.Input<String> mode;

  /// Creates a new [GetRulesetRuleActionParametersBrowserTtl].
  /// [default_] The browser TTL (in seconds) if you choose the "overrideOrigin" mode.
  /// [mode] The browser TTL mode.
  const GetRulesetRuleActionParametersBrowserTtl({
    required this.default_,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'mode': mode,
    };
  }

  factory GetRulesetRuleActionParametersBrowserTtl.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersBrowserTtl(
      default_: pulumi.Input.fromValue((map['default'] as num).toInt()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
