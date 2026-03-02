// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_type.dart';

/// A match against a collection of headers.
class GrpcRouteHeaderMatch {
  /// The key of the header.
  final pulumi.Input<String> key;
  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final pulumi.Input<GrpcRouteHeaderMatchType>? type;
  /// The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GrpcRouteHeaderMatch].
  /// [key] The key of the header.
  /// [type] Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  /// [value] The value of the header.
  GrpcRouteHeaderMatch({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': ?pulumi.Input.mapOptionalInputValue<GrpcRouteHeaderMatchType, String>(type, (value) => value.value),
      'value': value,
    };
  }

  factory GrpcRouteHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatch(
      key: (map['key'] as String).input(),
      type: map['type'] == null ? null : (GrpcRouteHeaderMatchType.fromValue(map['type'] as String)).input(),
      value: (map['value'] as String).input(),
    );
  }
}

