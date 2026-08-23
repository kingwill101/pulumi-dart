// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretInt1 {
  final pulumi.Input<int?>? secretX;

  /// Creates a new [TsecretInt1].
  /// [secretX] Optional.
  const TsecretInt1({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretInt1.fromMap(Map<String, dynamic> map) {
    return TsecretInt1(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
