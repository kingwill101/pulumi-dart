// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretInt2 {
  final pulumi.Input<int?>? secretX;

  /// Creates a new [TsecretInt2].
  /// [secretX] Optional.
  const TsecretInt2({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretInt2.fromMap(Map<String, dynamic> map) {
    return TsecretInt2(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
