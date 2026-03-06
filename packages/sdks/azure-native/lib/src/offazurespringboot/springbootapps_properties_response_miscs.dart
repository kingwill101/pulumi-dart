// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringbootappsPropertiesResponseMiscs {
  /// The miscs. key.
  final pulumi.Input<String> key;
  /// The miscs. value.
  final pulumi.Input<String>? value;

  /// Creates a new [SpringbootappsPropertiesResponseMiscs].
  /// [key] The miscs. key.
  /// [value] The miscs. value.
  const SpringbootappsPropertiesResponseMiscs({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory SpringbootappsPropertiesResponseMiscs.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponseMiscs(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

