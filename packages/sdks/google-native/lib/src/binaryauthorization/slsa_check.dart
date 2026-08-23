// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verification_rule.dart';

/// A SLSA provenance attestation check, which ensures that images are built by a trusted builder using source code from its trusted repositories only.
class SlsaCheck {
  /// Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
  final pulumi.Input<List<VerificationRule>>? rules;

  /// Creates a new [SlsaCheck].
  /// [rules] Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
  const SlsaCheck({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<VerificationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<VerificationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SlsaCheck.fromMap(Map<String, dynamic> map) {
    return SlsaCheck(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VerificationRule>(guardedValue, (value) => VerificationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
