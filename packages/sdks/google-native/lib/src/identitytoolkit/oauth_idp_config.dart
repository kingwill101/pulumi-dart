import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_oauth_response_type_response.dart';
import 'oauth_idp_config_args.dart';

/// Create an Oidc Idp configuration for an Identity Toolkit project.
class OauthIdpConfig extends pulumi.CustomResource {
  /// The client id of an OAuth client.
  late final pulumi.Output<String> clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final pulumi.Output<String> clientSecret;
  /// The config's display name set by developers.
  late final pulumi.Output<String> displayName;
  /// True if allows the user to sign in with the provider.
  late final pulumi.Output<bool> enabled;
  /// For OIDC Idps, the issuer identifier.
  late final pulumi.Output<String> issuer;
  /// The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  late final pulumi.Output<String> name;
  /// The id to use for this config.
  late final pulumi.Output<String?> oauthIdpConfigId;
  late final pulumi.Output<String> project;
  /// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  late final pulumi.Output<GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse> responseType;
  late final pulumi.Output<String> tenantId;

  /// Creates a new [OauthIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OauthIdpConfig]. {@macro pulumi_identitytoolkit_v2_oauth_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OauthIdpConfig(
    String name, {
    OauthIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:OauthIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    oauthIdpConfigId = registerOutput<String?>('oauthIdpConfigId');
    project = registerOutput<String>('project');
    responseType = registerOutput<GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse>('responseType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
  }
}
