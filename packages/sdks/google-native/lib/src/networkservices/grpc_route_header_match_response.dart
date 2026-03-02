// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A match against a collection of headers.
class GrpcRouteHeaderMatchResponse {
  /// The key of the header.
  final pulumi.Input<String> key;
  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final pulumi.Input<String> type;
  /// The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GrpcRouteHeaderMatchResponse].
  /// [key] The key of the header.
  /// [type] Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  /// [value] The value of the header.
  GrpcRouteHeaderMatchResponse({
    required this.key,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
      'value': value,
    };
  }

  factory GrpcRouteHeaderMatchResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatchResponse(
      key: (map['key'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

