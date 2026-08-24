// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authenticated_origin_pulls_get_authenticated_origin_pulls_args_doc}
/// Arguments for getAuthenticatedOriginPulls.
/// {@endtemplate}
/// {@macro pulumi_index_get_authenticated_origin_pulls_get_authenticated_origin_pulls_args_doc}
class GetAuthenticatedOriginPullsArgs {
  /// The hostname on the origin for which the client certificate uploaded will be used.
  final pulumi.Input<String> hostname;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsArgs].
  /// [hostname] The hostname on the origin for which the client certificate uploaded will be used.
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsArgs({
    required this.hostname,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'zoneId': zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsArgs(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
