// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersServeStale {
  /// Whether Cloudflare should disable serving stale content while getting the latest content from the origin.
  final pulumi.Input<bool?>? disableStaleWhileUpdating;

  /// Creates a new [RulesetRuleActionParametersServeStale].
  /// [disableStaleWhileUpdating] Whether Cloudflare should disable serving stale content while getting the latest content from the origin.
  const RulesetRuleActionParametersServeStale({
    this.disableStaleWhileUpdating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStaleWhileUpdating': ?disableStaleWhileUpdating,
    };
  }

  factory RulesetRuleActionParametersServeStale.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersServeStale(
      disableStaleWhileUpdating: (() { final guardedValue = map['disableStaleWhileUpdating']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
