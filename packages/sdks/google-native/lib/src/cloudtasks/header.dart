// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a header message. A header can have a key and a value.
class Header {
  /// The Key of the header.
  final pulumi.Input<String>? key;
  /// The Value of the header.
  final pulumi.Input<String>? value;

  /// Creates a new [Header].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  const Header({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory Header.fromMap(Map<String, dynamic> map) {
    return Header(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
