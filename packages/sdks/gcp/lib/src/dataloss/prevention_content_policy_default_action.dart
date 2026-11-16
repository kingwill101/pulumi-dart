// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyDefaultAction {
  /// If set, the verdict will be returned to the user.
  /// Possible values: ["ALLOW", "BLOCK"]
  /// Possible values are: `ALLOW`, `BLOCK`.
  final pulumi.Input<String?>? returnVerdict;

  /// Creates a new [PreventionContentPolicyDefaultAction].
  /// [returnVerdict] If set, the verdict will be returned to the user.
  const PreventionContentPolicyDefaultAction({
    this.returnVerdict,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnVerdict': ?returnVerdict,
    };
  }

  factory PreventionContentPolicyDefaultAction.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyDefaultAction(
      returnVerdict: (() { final guardedValue = map['returnVerdict']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
