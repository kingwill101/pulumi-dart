// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiOpenaiApiKeysSort {
  final pulumi.Input<String>? direction;
  final pulumi.Input<String> key;

  /// Creates a new [GetGenaiOpenaiApiKeysSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiOpenaiApiKeysSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiOpenaiApiKeysSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysSort(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

