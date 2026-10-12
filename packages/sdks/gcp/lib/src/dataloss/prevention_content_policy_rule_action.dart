// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyRuleAction {
  /// If set, the verdict will be returned to the user.
  /// Possible values: ["ALLOW", "BLOCK"]
  /// Possible values are: `ALLOW`, `BLOCK`.
  final pulumi.Input<String?>? returnVerdict;

  /// Creates a new [PreventionContentPolicyRuleAction].
  /// [returnVerdict] If set, the verdict will be returned to the user.
  const PreventionContentPolicyRuleAction({
    this.returnVerdict,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnVerdict': ?returnVerdict,
    };
  }

  factory PreventionContentPolicyRuleAction.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyRuleAction(
      returnVerdict: (() { final guardedValue = map['returnVerdict']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
