// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_snippet_rules_get_snippet_rules_args_doc}
/// Arguments for getSnippetRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_snippet_rules_get_snippet_rules_args_doc}
class GetSnippetRulesArgs {
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetSnippetRulesArgs].
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const GetSnippetRulesArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetSnippetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetSnippetRulesArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
