// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_leaked_credential_check_rule_get_leaked_credential_check_rule_args_doc}
/// Arguments for getLeakedCredentialCheckRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_leaked_credential_check_rule_get_leaked_credential_check_rule_args_doc}
class GetLeakedCredentialCheckRuleArgs {
  /// Defines the unique ID for this custom detection.
  final pulumi.Input<String> detectionId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLeakedCredentialCheckRuleArgs].
  /// [detectionId] Defines the unique ID for this custom detection.
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckRuleArgs({
    required this.detectionId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectionId': detectionId,
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckRuleArgs(
      detectionId: pulumi.Input.fromValue(map['detectionId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
