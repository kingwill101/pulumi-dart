// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TsecretString3 {
  final pulumi.Input<String?>? secretX;

  /// Creates a new [TsecretString3].
  /// [secretX] Optional.
  const TsecretString3({
    this.secretX,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretX': ?secretX,
    };
  }

  factory TsecretString3.fromMap(Map<String, dynamic> map) {
    return TsecretString3(
      secretX: (() { final guardedValue = map['secretX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
