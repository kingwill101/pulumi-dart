// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_rules_selector_exclude.dart';
import 'get_token_validation_rules_selector_include.dart';

class GetTokenValidationRulesSelector {
  /// Ignore operations that were otherwise included by `include`.
  final pulumi.Input<List<GetTokenValidationRulesSelectorExclude>> excludes;
  /// Select all matching operations.
  final pulumi.Input<List<GetTokenValidationRulesSelectorInclude>> includes;

  /// Creates a new [GetTokenValidationRulesSelector].
  /// [excludes] Ignore operations that were otherwise included by `include`.
  /// [includes] Select all matching operations.
  const GetTokenValidationRulesSelector({
    required this.excludes,
    required this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': pulumi.Input.mapInputValue<List<GetTokenValidationRulesSelectorExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<GetTokenValidationRulesSelectorExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': pulumi.Input.mapInputValue<List<GetTokenValidationRulesSelectorInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<GetTokenValidationRulesSelectorInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTokenValidationRulesSelector.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesSelector(
      excludes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationRulesSelectorExclude>(map['excludes']!, (value) => GetTokenValidationRulesSelectorExclude.fromMap((value as Map).cast<String, dynamic>()))),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationRulesSelectorInclude>(map['includes']!, (value) => GetTokenValidationRulesSelectorInclude.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
