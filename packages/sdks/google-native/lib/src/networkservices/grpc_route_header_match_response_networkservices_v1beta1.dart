// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A match against a collection of headers.
class GrpcRouteHeaderMatchResponseNetworkservicesV1beta1 {
  /// The key of the header.
  final pulumi.Input<String> key;
  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final pulumi.Input<String> type;
  /// The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GrpcRouteHeaderMatchResponseNetworkservicesV1beta1].
  /// [key] The key of the header.
  /// [type] Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  /// [value] The value of the header.
  const GrpcRouteHeaderMatchResponseNetworkservicesV1beta1({
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

  factory GrpcRouteHeaderMatchResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatchResponseNetworkservicesV1beta1(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
