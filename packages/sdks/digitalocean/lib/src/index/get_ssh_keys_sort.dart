// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSshKeysSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  final pulumi.Input<String> key;

  /// Creates a new [GetSshKeysSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  GetSshKeysSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetSshKeysSort.fromMap(Map<String, dynamic> map) {
    return GetSshKeysSort(
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

