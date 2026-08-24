// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretBool1 {
  final pulumi.Input<bool?>? secretX;

  /// Creates a new [TsecretBool1].
  /// [secretX] Optional.
  const TsecretBool1({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretBool1.fromMap(Map<String, dynamic> map) {
    return TsecretBool1(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
