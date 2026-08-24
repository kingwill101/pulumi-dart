// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_rules_filter.dart';

/// {@template pulumi_index_get_token_validation_rules_get_token_validation_rules_args_doc}
/// Arguments for getTokenValidationRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_token_validation_rules_get_token_validation_rules_args_doc}
class GetTokenValidationRulesArgs {
  final pulumi.Input<GetTokenValidationRulesFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? ruleId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetTokenValidationRulesArgs].
  /// [filter] Optional.
  /// [ruleId] UUID.
  /// [zoneId] Identifier.
  const GetTokenValidationRulesArgs({
    this.filter,
    this.ruleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetTokenValidationRulesFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'ruleId': ?ruleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTokenValidationRulesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
