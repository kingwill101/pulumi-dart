// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_type_networkservices_v1beta1.dart';

/// A match against a collection of headers.
class GrpcRouteHeaderMatchNetworkservicesV1beta1 {
  /// The key of the header.
  final pulumi.Input<String> key;
  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final pulumi.Input<GrpcRouteHeaderMatchTypeNetworkservicesV1beta1>? type;
  /// The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [GrpcRouteHeaderMatchNetworkservicesV1beta1].
  /// [key] The key of the header.
  /// [type] Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  /// [value] The value of the header.
  GrpcRouteHeaderMatchNetworkservicesV1beta1({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': ?pulumi.Input.mapOptionalInputValue<GrpcRouteHeaderMatchTypeNetworkservicesV1beta1, String>(type, (value) => value.value),
      'value': value,
    };
  }

  factory GrpcRouteHeaderMatchNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatchNetworkservicesV1beta1(
      key: (map['key'] as String).input(),
      type: map['type'] == null ? null : (GrpcRouteHeaderMatchTypeNetworkservicesV1beta1.fromValue(map['type']! as String)).input(),
      value: (map['value'] as String).input(),
    );
  }
}

