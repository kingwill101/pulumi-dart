import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_supported_idp_config_args.dart';
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config_response.dart';

/// Create a default supported Idp configuration for an Identity Toolkit project.
class DefaultSupportedIdpConfig extends pulumi.CustomResource {
  /// Additional config for Apple-based projects.
  late final pulumi.Output<
    GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse
  >
  appleSignInConfig;

  /// OAuth client ID.
  late final pulumi.Output<String> clientId;

  /// OAuth client secret.
  late final pulumi.Output<String> clientSecret;

  /// True if allows the user to sign in with the provider.
  late final pulumi.Output<bool> enabled;

  /// The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  late final pulumi.Output<String?> idpId;

  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> tenantId;

  /// Creates a new [DefaultSupportedIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultSupportedIdpConfig]. {@macro pulumi_identitytoolkit_v2_default_supported_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultSupportedIdpConfig(
    String name, {
    DefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:identitytoolkit/v2:DefaultSupportedIdpConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appleSignInConfig =
        registerOutput<
          GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse
        >('appleSignInConfig');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    enabled = registerOutput<bool>('enabled');
    idpId = registerOutput<String?>('idpId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenantId = registerOutput<String>('tenantId');
  }
}
