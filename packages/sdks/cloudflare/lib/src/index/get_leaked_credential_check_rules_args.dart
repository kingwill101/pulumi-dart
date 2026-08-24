// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_leaked_credential_check_rules_get_leaked_credential_check_rules_args_doc}
/// Arguments for getLeakedCredentialCheckRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_leaked_credential_check_rules_get_leaked_credential_check_rules_args_doc}
class GetLeakedCredentialCheckRulesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLeakedCredentialCheckRulesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckRulesArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckRulesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
