// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  final pulumi.Input<String>? key;

  /// Creates a new [Split].
  /// [key] Row key to use as an initial tablet boundary.
  const Split({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory Split.fromMap(Map<String, dynamic> map) {
    return Split(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
