// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretString2 {
  final pulumi.Input<String?>? secretX;

  /// Creates a new [TsecretString2].
  /// [secretX] Optional.
  const TsecretString2({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretString2.fromMap(Map<String, dynamic> map) {
    return TsecretString2(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
