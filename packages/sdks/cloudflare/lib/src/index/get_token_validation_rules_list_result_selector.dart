// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_rules_list_result_selector_exclude.dart';
import 'get_token_validation_rules_list_result_selector_include.dart';

class GetTokenValidationRulesListResultSelector {
  /// Ignore operations that were otherwise included by `include`.
  final pulumi.Input<List<GetTokenValidationRulesListResultSelectorExclude>> excludes;
  /// Select all matching operations.
  final pulumi.Input<List<GetTokenValidationRulesListResultSelectorInclude>> includes;

  /// Creates a new [GetTokenValidationRulesListResultSelector].
  /// [excludes] Ignore operations that were otherwise included by `include`.
  /// [includes] Select all matching operations.
  const GetTokenValidationRulesListResultSelector({
    required this.excludes,
    required this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': pulumi.Input.mapInputValue<List<GetTokenValidationRulesListResultSelectorExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<GetTokenValidationRulesListResultSelectorExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': pulumi.Input.mapInputValue<List<GetTokenValidationRulesListResultSelectorInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<GetTokenValidationRulesListResultSelectorInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTokenValidationRulesListResultSelector.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListResultSelector(
      excludes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationRulesListResultSelectorExclude>(map['excludes']!, (value) => GetTokenValidationRulesListResultSelectorExclude.fromMap((value as Map).cast<String, dynamic>()))),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTokenValidationRulesListResultSelectorInclude>(map['includes']!, (value) => GetTokenValidationRulesListResultSelectorInclude.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
