// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_rules_selector_exclude.dart';
import 'token_validation_rules_selector_include.dart';

class TokenValidationRulesSelector {
  /// Ignore operations that were otherwise included by `include`.
  final pulumi.Input<List<TokenValidationRulesSelectorExclude>?>? excludes;
  /// Select all matching operations.
  final pulumi.Input<List<TokenValidationRulesSelectorInclude>?>? includes;

  /// Creates a new [TokenValidationRulesSelector].
  /// [excludes] Ignore operations that were otherwise included by `include`.
  /// [includes] Select all matching operations.
  const TokenValidationRulesSelector({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<TokenValidationRulesSelectorExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<TokenValidationRulesSelectorExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': ?pulumi.Input.mapOptionalInputValue<List<TokenValidationRulesSelectorInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<TokenValidationRulesSelectorInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TokenValidationRulesSelector.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesSelector(
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TokenValidationRulesSelectorExclude>(guardedValue, (value) => TokenValidationRulesSelectorExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TokenValidationRulesSelectorInclude>(guardedValue, (value) => TokenValidationRulesSelectorInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
