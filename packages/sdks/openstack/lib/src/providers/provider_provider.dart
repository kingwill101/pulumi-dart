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
    this.applicationCredentialId = registerOutput<String?>('applicationCredentialId');
    this.applicationCredentialName = registerOutput<String?>('applicationCredentialName');
    this.applicationCredentialSecret = registerOutput<String?>('applicationCredentialSecret');
    this.authUrl = registerOutput<String?>('authUrl');
    this.cacertFile = registerOutput<String?>('cacertFile');
    this.cert = registerOutput<String?>('cert');
    this.cloud = registerOutput<String?>('cloud');
    this.defaultDomain = registerOutput<String?>('defaultDomain');
    this.domainId = registerOutput<String?>('domainId');
    this.domainName = registerOutput<String?>('domainName');
    this.endpointType = registerOutput<String?>('endpointType');
    this.key = registerOutput<String?>('key');
    this.password = registerOutput<String?>('password');
    this.projectDomainId = registerOutput<String?>('projectDomainId');
    this.projectDomainName = registerOutput<String?>('projectDomainName');
    this.region = registerOutput<String?>('region');
    this.tenantId = registerOutput<String?>('tenantId');
    this.tenantName = registerOutput<String?>('tenantName');
    this.token = registerOutput<String?>('token');
    this.userDomainId = registerOutput<String?>('userDomainId');
    this.userDomainName = registerOutput<String?>('userDomainName');
    this.userId = registerOutput<String?>('userId');
    this.userName = registerOutput<String?>('userName');
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
