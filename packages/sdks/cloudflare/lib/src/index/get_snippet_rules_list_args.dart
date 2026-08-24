// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_snippet_rules_list_get_snippet_rules_list_args_doc}
/// Arguments for getSnippetRulesList.
/// {@endtemplate}
/// {@macro pulumi_index_get_snippet_rules_list_get_snippet_rules_list_args_doc}
class GetSnippetRulesListArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetSnippetRulesListArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] The unique ID of the zone.
  const GetSnippetRulesListArgs({
    this.maxItems,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': zoneId,
    };
  }

  factory GetSnippetRulesListArgs.fromMap(Map<String, dynamic> map) {
    return GetSnippetRulesListArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
