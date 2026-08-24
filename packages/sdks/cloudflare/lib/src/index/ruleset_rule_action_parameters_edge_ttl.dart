// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_edge_ttl_status_code_ttl.dart';

class RulesetRuleActionParametersEdgeTtl {
  /// The edge TTL (in seconds) if you choose the "overrideOrigin" mode.
  final pulumi.Input<int?>? default_;
  /// The edge TTL mode.
  /// Available values: "respect*origin", "bypass*by*default", "override*origin".
  final pulumi.Input<String> mode;
  /// A list of TTLs to apply to specific status codes or status code ranges.
  final pulumi.Input<List<RulesetRuleActionParametersEdgeTtlStatusCodeTtl>?>? statusCodeTtls;

  /// Creates a new [RulesetRuleActionParametersEdgeTtl].
  /// [default_] The edge TTL (in seconds) if you choose the "overrideOrigin" mode.
  /// [mode] The edge TTL mode.
  /// [statusCodeTtls] A list of TTLs to apply to specific status codes or status code ranges.
  const RulesetRuleActionParametersEdgeTtl({
    this.default_,
    required this.mode,
    this.statusCodeTtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'mode': mode,
      'statusCodeTtls': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersEdgeTtlStatusCodeTtl>, List<Map<String, dynamic>>>(statusCodeTtls, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersEdgeTtlStatusCodeTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RulesetRuleActionParametersEdgeTtl.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersEdgeTtl(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      statusCodeTtls: (() { final guardedValue = map['statusCodeTtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersEdgeTtlStatusCodeTtl>(guardedValue, (value) => RulesetRuleActionParametersEdgeTtlStatusCodeTtl.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
