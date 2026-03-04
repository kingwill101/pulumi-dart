// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// License information.
class License {
  /// Comments
  final pulumi.Input<String>? comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final pulumi.Input<String>? expression;

  /// Creates a new [License].
  /// [comments] Comments
  /// [expression] Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  License({this.comments, this.expression});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comments': ?comments, 'expression': ?expression};
  }

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      comments: (() {
        final guardedValue = map['comments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
