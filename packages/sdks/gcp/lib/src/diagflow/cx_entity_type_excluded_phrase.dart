// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxEntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  final pulumi.Input<String>? value;

  /// Creates a new [CxEntityTypeExcludedPhrase].
  /// [value] The word or phrase to be excluded.
  const CxEntityTypeExcludedPhrase({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CxEntityTypeExcludedPhrase.fromMap(Map<String, dynamic> map) {
    return CxEntityTypeExcludedPhrase(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
