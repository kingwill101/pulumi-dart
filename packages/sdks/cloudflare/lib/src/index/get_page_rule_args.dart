// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_rule_get_page_rule_args_doc}
/// Arguments for getPageRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_rule_get_page_rule_args_doc}
class GetPageRuleArgs {
  /// Identifier.
  final pulumi.Input<String> pageruleId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageRuleArgs].
  /// [pageruleId] Identifier.
  /// [zoneId] Identifier.
  const GetPageRuleArgs({
    required this.pageruleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pageruleId': pageruleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPageRuleArgs(
      pageruleId: pulumi.Input.fromValue(map['pageruleId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
