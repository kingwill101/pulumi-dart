// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_edge_ttl_status_code_ttl.dart';

class GetRulesetRuleActionParametersEdgeTtl {
  /// The edge TTL (in seconds) if you choose the "overrideOrigin" mode.
  final pulumi.Input<int> default_;
  /// The edge TTL mode.
  /// Available values: "respect*origin", "bypass*by*default", "override*origin".
  final pulumi.Input<String> mode;
  /// A list of TTLs to apply to specific status codes or status code ranges.
  final pulumi.Input<List<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl>> statusCodeTtls;

  /// Creates a new [GetRulesetRuleActionParametersEdgeTtl].
  /// [default_] The edge TTL (in seconds) if you choose the "overrideOrigin" mode.
  /// [mode] The edge TTL mode.
  /// [statusCodeTtls] A list of TTLs to apply to specific status codes or status code ranges.
  const GetRulesetRuleActionParametersEdgeTtl({
    required this.default_,
    required this.mode,
    required this.statusCodeTtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'mode': mode,
      'statusCodeTtls': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl>, List<Map<String, dynamic>>>(statusCodeTtls, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesetRuleActionParametersEdgeTtl.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersEdgeTtl(
      default_: pulumi.Input.fromValue((map['default'] as num).toInt()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      statusCodeTtls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl>(map['statusCodeTtls']!, (value) => GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
