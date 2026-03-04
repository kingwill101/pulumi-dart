// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the ClfsTarget
class ClfsTarget {
  /// Resource ID of storage container.
  final pulumi.Input<String>? target;

  /// Creates a new [ClfsTarget].
  /// [target] Resource ID of storage container.
  ClfsTarget({this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'target': ?target};
  }

  factory ClfsTarget.fromMap(Map<String, dynamic> map) {
    return ClfsTarget(
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
