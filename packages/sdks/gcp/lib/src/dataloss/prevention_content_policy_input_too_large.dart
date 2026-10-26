// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInputTooLarge {
  /// If set, the verdict will be returned to the user.
  /// Possible values: ["ALLOW", "BLOCK"]
  /// Possible values are: `ALLOW`, `BLOCK`.
  final pulumi.Input<String?>? returnVerdict;

  /// Creates a new [PreventionContentPolicyInputTooLarge].
  /// [returnVerdict] If set, the verdict will be returned to the user.
  const PreventionContentPolicyInputTooLarge({
    this.returnVerdict,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnVerdict': ?returnVerdict,
    };
  }

  factory PreventionContentPolicyInputTooLarge.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInputTooLarge(
      returnVerdict: (() { final guardedValue = map['returnVerdict']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
