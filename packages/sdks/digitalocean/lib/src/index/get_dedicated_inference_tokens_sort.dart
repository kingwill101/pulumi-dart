// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceTokensSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the tokens by this key. This may be one of the keys listed in `filter`.
  final pulumi.Input<String> key;

  /// Creates a new [GetDedicatedInferenceTokensSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the tokens by this key. This may be one of the keys listed in `filter`.
  const GetDedicatedInferenceTokensSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetDedicatedInferenceTokensSort.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceTokensSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
