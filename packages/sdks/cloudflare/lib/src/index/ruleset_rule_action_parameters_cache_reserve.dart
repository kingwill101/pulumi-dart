// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheReserve {
  /// Whether Cache Reserve is enabled. If this is true and a request meets eligibility criteria, Cloudflare will write the resource to Cache Reserve.
  final pulumi.Input<bool> eligible;
  /// The minimum file size eligible for storage in Cache Reserve.
  final pulumi.Input<int?>? minimumFileSize;

  /// Creates a new [RulesetRuleActionParametersCacheReserve].
  /// [eligible] Whether Cache Reserve is enabled. If this is true and a request meets eligibility criteria, Cloudflare will write the resource to Cache Reserve.
  /// [minimumFileSize] The minimum file size eligible for storage in Cache Reserve.
  const RulesetRuleActionParametersCacheReserve({
    required this.eligible,
    this.minimumFileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eligible': eligible,
      'minimumFileSize': ?minimumFileSize,
    };
  }

  factory RulesetRuleActionParametersCacheReserve.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheReserve(
      eligible: pulumi.Input.fromValue(map['eligible'] as bool),
      minimumFileSize: (() { final guardedValue = map['minimumFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
