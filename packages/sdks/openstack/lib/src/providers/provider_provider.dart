import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the openstack package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// Application Credential ID to login with.
  late final pulumi.Output<String?> applicationCredentialId;
  /// Application Credential name to login with.
  late final pulumi.Output<String?> applicationCredentialName;
  /// Application Credential secret to login with.
  late final pulumi.Output<String?> applicationCredentialSecret;
  /// The Identity authentication URL.
  late final pulumi.Output<String?> authUrl;
  /// A Custom CA certificate.
  late final pulumi.Output<String?> cacertFile;
  /// A client certificate to authenticate with.
  late final pulumi.Output<String?> cert;
  /// An entry in a `clouds.yaml` file to use.
  late final pulumi.Output<String?> cloud;
  /// The name of the Domain ID to scope to if no other domain is specified. Defaults to `default` (Identity v3).
  late final pulumi.Output<String?> defaultDomain;
  /// The ID of the Domain to scope to (Identity v3).
  late final pulumi.Output<String?> domainId;
  /// The name of the Domain to scope to (Identity v3).
  late final pulumi.Output<String?> domainName;
  late final pulumi.Output<String?> endpointType;
  /// A client private key to authenticate with.
  late final pulumi.Output<String?> key;
  /// Password to login with.
  late final pulumi.Output<String?> password;
  /// The ID of the domain where the proejct resides (Identity v3).
  late final pulumi.Output<String?> projectDomainId;
  /// The name of the domain where the project resides (Identity v3).
  late final pulumi.Output<String?> projectDomainName;
  /// The OpenStack region to connect to.
  late final pulumi.Output<String?> region;
  /// The ID of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  late final pulumi.Output<String?> tenantId;
  /// The name of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  late final pulumi.Output<String?> tenantName;
  /// Authentication token to use as an alternative to username/password.
  late final pulumi.Output<String?> token;
  /// The ID of the domain where the user resides (Identity v3).
  late final pulumi.Output<String?> userDomainId;
  /// The name of the domain where the user resides (Identity v3).
  late final pulumi.Output<String?> userDomainName;
  /// User ID to login with.
  late final pulumi.Output<String?> userId;
  /// Username to login with.
  late final pulumi.Output<String?> userName;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationCredentialId = registerOutput<String?>('applicationCredentialId');
    applicationCredentialName = registerOutput<String?>('applicationCredentialName');
    applicationCredentialSecret = registerOutput<String?>('applicationCredentialSecret');
    authUrl = registerOutput<String?>('authUrl');
    cacertFile = registerOutput<String?>('cacertFile');
    cert = registerOutput<String?>('cert');
    cloud = registerOutput<String?>('cloud');
    defaultDomain = registerOutput<String?>('defaultDomain');
    domainId = registerOutput<String?>('domainId');
    domainName = registerOutput<String?>('domainName');
    endpointType = registerOutput<String?>('endpointType');
    key = registerOutput<String?>('key');
    password = registerOutput<String?>('password');
    projectDomainId = registerOutput<String?>('projectDomainId');
    projectDomainName = registerOutput<String?>('projectDomainName');
    region = registerOutput<String?>('region');
    tenantId = registerOutput<String?>('tenantId');
    tenantName = registerOutput<String?>('tenantName');
    token = registerOutput<String?>('token');
    userDomainId = registerOutput<String?>('userDomainId');
    userDomainName = registerOutput<String?>('userDomainName');
    userId = registerOutput<String?>('userId');
    userName = registerOutput<String?>('userName');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:openstack/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
