// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretBool3 {
  final pulumi.Input<bool?>? secretX;

  /// Creates a new [TsecretBool3].
  /// [secretX] Optional.
  const TsecretBool3({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretBool3.fromMap(Map<String, dynamic> map) {
    return TsecretBool3(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
