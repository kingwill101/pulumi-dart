// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleMatchHeader {
  /// Required. The key of the header.
  final pulumi.Input<String> key;
  /// The type of match.
  /// Default value is `EXACT`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `EXACT`, `REGULAR_EXPRESSION`.
  final pulumi.Input<String>? type;
  /// Required. The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GrpcRouteRuleMatchHeader].
  /// [key] Required. The key of the header.
  /// [type] The type of match.
  /// [value] Required. The value of the header.
  GrpcRouteRuleMatchHeader({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': ?type,
      'value': value,
    };
  }

  factory GrpcRouteRuleMatchHeader.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatchHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

