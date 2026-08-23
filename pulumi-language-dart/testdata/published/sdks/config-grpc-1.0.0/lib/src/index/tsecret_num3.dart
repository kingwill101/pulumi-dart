// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretNum3 {
  final pulumi.Input<double?>? secretX;

  /// Creates a new [TsecretNum3].
  /// [secretX] Optional.
  const TsecretNum3({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretNum3.fromMap(Map<String, dynamic> map) {
    return TsecretNum3(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
