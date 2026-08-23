// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretNum1 {
  final pulumi.Input<double?>? secretX;

  /// Creates a new [TsecretNum1].
  /// [secretX] Optional.
  const TsecretNum1({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretNum1.fromMap(Map<String, dynamic> map) {
    return TsecretNum1(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
