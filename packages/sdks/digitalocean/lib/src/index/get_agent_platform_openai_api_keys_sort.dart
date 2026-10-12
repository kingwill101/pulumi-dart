// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformOpenaiApiKeysSort {
  final pulumi.Input<String?>? direction;
  final pulumi.Input<String> key;

  /// Creates a new [GetAgentPlatformOpenaiApiKeysSort].
  /// [direction] Optional.
  /// [key] Required.
  const GetAgentPlatformOpenaiApiKeysSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetAgentPlatformOpenaiApiKeysSort.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformOpenaiApiKeysSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
