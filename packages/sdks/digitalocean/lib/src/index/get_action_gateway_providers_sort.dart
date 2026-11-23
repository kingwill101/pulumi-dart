// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayProvidersSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String?>? direction;
  /// Sort the providers by this key. This may be one of `name`, `displayName`, and `description`.
  final pulumi.Input<String> key;

  /// Creates a new [GetActionGatewayProvidersSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the providers by this key. This may be one of `name`, `displayName`, and `description`.
  const GetActionGatewayProvidersSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetActionGatewayProvidersSort.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProvidersSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
