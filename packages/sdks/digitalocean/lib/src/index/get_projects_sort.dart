// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;

  /// Sort the projects by this key. This may be one of `name`,
  /// `purpose`, `description`, or `environment`.
  final pulumi.Input<String> key;

  /// Creates a new [GetProjectsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the projects by this key. This may be one of `name`,
  GetProjectsSort({this.direction, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': ?direction, 'key': key};
  }

  factory GetProjectsSort.fromMap(Map<String, dynamic> map) {
    return GetProjectsSort(
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
