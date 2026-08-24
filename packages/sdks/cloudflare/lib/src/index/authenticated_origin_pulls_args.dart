// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticated_origin_pulls_config.dart';

/// {@template pulumi_index_authenticated_origin_pulls_authenticated_origin_pulls_args_doc}
/// The set of arguments for AuthenticatedOriginPulls.
/// {@endtemplate}
/// {@macro pulumi_index_authenticated_origin_pulls_authenticated_origin_pulls_args_doc}
class AuthenticatedOriginPullsArgs {
  final pulumi.Input<List<AuthenticatedOriginPullsConfig>> configs;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsArgs].
  /// [configs] Required.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsArgs({
    required this.configs,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.mapInputValue<List<AuthenticatedOriginPullsConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<AuthenticatedOriginPullsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory AuthenticatedOriginPullsArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsArgs(
      configs: pulumi.Input.fromValue(pulumi.Input.decodeList<AuthenticatedOriginPullsConfig>(map['configs']!, (value) => AuthenticatedOriginPullsConfig.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
