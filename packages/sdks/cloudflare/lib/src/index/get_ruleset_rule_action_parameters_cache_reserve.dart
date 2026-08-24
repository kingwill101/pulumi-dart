// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheReserve {
  /// Whether Cache Reserve is enabled. If this is true and a request meets eligibility criteria, Cloudflare will write the resource to Cache Reserve.
  final pulumi.Input<bool> eligible;
  /// The minimum file size eligible for storage in Cache Reserve.
  final pulumi.Input<int> minimumFileSize;

  /// Creates a new [GetRulesetRuleActionParametersCacheReserve].
  /// [eligible] Whether Cache Reserve is enabled. If this is true and a request meets eligibility criteria, Cloudflare will write the resource to Cache Reserve.
  /// [minimumFileSize] The minimum file size eligible for storage in Cache Reserve.
  const GetRulesetRuleActionParametersCacheReserve({
    required this.eligible,
    required this.minimumFileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eligible': eligible,
      'minimumFileSize': minimumFileSize,
    };
  }

  factory GetRulesetRuleActionParametersCacheReserve.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheReserve(
      eligible: pulumi.Input.fromValue(map['eligible'] as bool),
      minimumFileSize: pulumi.Input.fromValue((map['minimumFileSize'] as num).toInt()),
    );
  }
}
