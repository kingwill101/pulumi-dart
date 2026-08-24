// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_google_tag_gateway_get_google_tag_gateway_args_doc}
/// Arguments for getGoogleTagGateway.
/// {@endtemplate}
/// {@macro pulumi_index_get_google_tag_gateway_get_google_tag_gateway_args_doc}
class GetGoogleTagGatewayArgs {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetGoogleTagGatewayArgs].
  /// [zoneId] Identifier.
  const GetGoogleTagGatewayArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetGoogleTagGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGoogleTagGatewayArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
