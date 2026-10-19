// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformModelsSort {
  final pulumi.Input<String?>? direction;
  final pulumi.Input<String> key;

  /// Creates a new [GetAgentPlatformModelsSort].
  /// [direction] Optional.
  /// [key] Required.
  const GetAgentPlatformModelsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetAgentPlatformModelsSort.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformModelsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
