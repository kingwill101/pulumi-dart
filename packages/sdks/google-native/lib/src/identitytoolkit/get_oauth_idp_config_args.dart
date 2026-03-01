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
  GetOauthIdpConfigArgs({
    required pulumi.Output<String> oauthIdpConfigId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tenantId,
  }) :
      oauthIdpConfigId = pulumi.Input.asInput<String>(oauthIdpConfigId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthIdpConfigId': oauthIdpConfigId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthIdpConfigArgs(
      oauthIdpConfigId: pulumi.Output.create<String>(map['oauthIdpConfigId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

