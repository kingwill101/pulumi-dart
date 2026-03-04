// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentVersionsSort {
  final pulumi.Input<String>? direction;
  final pulumi.Input<String> key;

  /// Creates a new [GetGenaiAgentVersionsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiAgentVersionsSort({this.direction, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': ?direction, 'key': key};
  }

  factory GetGenaiAgentVersionsSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsSort(
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
