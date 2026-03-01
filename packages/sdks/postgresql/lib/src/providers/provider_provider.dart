import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the postgresql package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// AWS profile to use for IAM auth
  late final pulumi.Output<String?> awsRdsIamProfile;
  /// AWS IAM role to assume for IAM auth
  late final pulumi.Output<String?> awsRdsIamProviderRoleArn;
  /// AWS region to use for IAM auth
  late final pulumi.Output<String?> awsRdsIamRegion;
  late final pulumi.Output<String?> azureTenantId;
  /// The name of the database to connect to in order to connect to (defaults to `postgres`).
  late final pulumi.Output<String?> database;
  /// Database username associated to the connected user (for user name maps)
  late final pulumi.Output<String?> databaseUsername;
  /// Specify the expected version of PostgreSQL.
  late final pulumi.Output<String?> expectedVersion;
  /// Service account to impersonate when using GCP IAM authentication.
  late final pulumi.Output<String?> gcpIamImpersonateServiceAccount;
  /// Name of PostgreSQL server address to connect to
  late final pulumi.Output<String?> host;
  /// Password to be used if the PostgreSQL server demands password authentication
  late final pulumi.Output<String?> password;
  late final pulumi.Output<String?> scheme;
  late final pulumi.Output<String?> sslMode;
  /// This option determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the PostgreSQL server
  late final pulumi.Output<String?> sslmode;
  /// The SSL server root certificate file path. The file must contain PEM encoded data.
  late final pulumi.Output<String?> sslrootcert;
  /// PostgreSQL user name to connect as
  late final pulumi.Output<String?> username;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsRdsIamProfile = registerOutput<String?>('awsRdsIamProfile');
    this.awsRdsIamProviderRoleArn = registerOutput<String?>('awsRdsIamProviderRoleArn');
    this.awsRdsIamRegion = registerOutput<String?>('awsRdsIamRegion');
    this.azureTenantId = registerOutput<String?>('azureTenantId');
    this.database = registerOutput<String?>('database');
    this.databaseUsername = registerOutput<String?>('databaseUsername');
    this.expectedVersion = registerOutput<String?>('expectedVersion');
    this.gcpIamImpersonateServiceAccount = registerOutput<String?>('gcpIamImpersonateServiceAccount');
    this.host = registerOutput<String?>('host');
    this.password = registerOutput<String?>('password');
    this.scheme = registerOutput<String?>('scheme');
    this.sslMode = registerOutput<String?>('sslMode');
    this.sslmode = registerOutput<String?>('sslmode');
    this.sslrootcert = registerOutput<String?>('sslrootcert');
    this.username = registerOutput<String?>('username');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.Deployment.instance;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:postgresql/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
