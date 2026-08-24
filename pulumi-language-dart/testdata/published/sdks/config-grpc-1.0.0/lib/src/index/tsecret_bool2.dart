// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretBool2 {
  final pulumi.Input<bool?>? secretX;

  /// Creates a new [TsecretBool2].
  /// [secretX] Optional.
  const TsecretBool2({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretBool2.fromMap(Map<String, dynamic> map) {
    return TsecretBool2(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
