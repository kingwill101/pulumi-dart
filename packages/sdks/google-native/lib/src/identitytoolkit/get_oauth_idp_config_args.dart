// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_oauth_idp_config_args_doc}
/// Arguments for getOauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_oauth_idp_config_args_doc}
class GetOauthIdpConfigArgs {
  final pulumi.Input<String> oauthIdpConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetOauthIdpConfigArgs].
  /// [oauthIdpConfigId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  const GetOauthIdpConfigArgs({
    required this.oauthIdpConfigId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthIdpConfigId': oauthIdpConfigId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthIdpConfigArgs(
      oauthIdpConfigId: pulumi.Input.fromValue(map['oauthIdpConfigId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
