// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersServeStale {
  /// Whether Cloudflare should disable serving stale content while getting the latest content from the origin.
  final pulumi.Input<bool> disableStaleWhileUpdating;

  /// Creates a new [GetRulesetRuleActionParametersServeStale].
  /// [disableStaleWhileUpdating] Whether Cloudflare should disable serving stale content while getting the latest content from the origin.
  const GetRulesetRuleActionParametersServeStale({
    required this.disableStaleWhileUpdating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStaleWhileUpdating': disableStaleWhileUpdating,
    };
  }

  factory GetRulesetRuleActionParametersServeStale.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersServeStale(
      disableStaleWhileUpdating: pulumi.Input.fromValue(map['disableStaleWhileUpdating'] as bool),
    );
  }
}
