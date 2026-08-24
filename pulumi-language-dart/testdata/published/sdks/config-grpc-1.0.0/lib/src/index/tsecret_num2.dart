// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretNum2 {
  final pulumi.Input<double?>? secretX;

  /// Creates a new [TsecretNum2].
  /// [secretX] Optional.
  const TsecretNum2({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretNum2.fromMap(Map<String, dynamic> map) {
    return TsecretNum2(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
