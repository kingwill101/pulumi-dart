// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_idp_config_response_type.dart';

/// {@template pulumi_identityplatform_oauth_idp_config_oauth_idp_config_args_doc}
/// The set of arguments for OauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_oauth_idp_config_oauth_idp_config_args_doc}
class OauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String> clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Human friendly display name.
  final pulumi.Input<String>? displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String> issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  final pulumi.Input<OauthIdpConfigResponseType>? responseType;

  /// Creates a new [OauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [responseType] The response type to request for in the OAuth authorization flow.
  const OauthIdpConfigArgs({
    required this.clientId,
    this.clientSecret,
    this.deletionPolicy,
    this.displayName,
    this.enabled,
    required this.issuer,
    this.name,
    this.project,
    this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'issuer': issuer,
      'name': ?name,
      'project': ?project,
      'responseType': ?pulumi.Input.mapOptionalInputValue<OauthIdpConfigResponseType, Map<String, dynamic>>(responseType, (value) => value.toMap()),
    };
  }

  factory OauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigArgs(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseType: (() { final guardedValue = map['responseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OauthIdpConfigResponseType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
