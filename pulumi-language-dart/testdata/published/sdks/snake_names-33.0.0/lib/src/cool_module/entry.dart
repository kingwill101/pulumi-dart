// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Entry {
  final pulumi.Input<String> value;

  /// Creates a new [Entry].
  /// [value] Required.
  const Entry({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
