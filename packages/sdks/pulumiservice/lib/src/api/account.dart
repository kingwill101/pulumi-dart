import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';

/// Creates a new Insights account. An Insights account represents a cloud provider account (e.g., AWS, Azure, OCI) configured for resource discovery.
class Account extends pulumi.CustomResource {
  /// The ID of the agent pool to run account discovery workflows.
  /// If not specified, discovery will use the default agent pool.
  late final pulumi.Output<String?> agentPoolID;
  /// The name of the account.
  late final pulumi.Output<String> name;
  /// The user with ownership of this Insights account
  late final pulumi.Output<dynamic> ownedBy;
  /// The cloud provider for the account (e.g., aws, gcp, azure-native).
  late final pulumi.Output<String> provider;
  /// Provider-specific configuration for the account.
  late final pulumi.Output<Map<String, dynamic>?> providerConfig;
  /// Reference to an ESC environment containing provider credentials,
  /// in the format 'project/environment' with an optional @version suffix.
  late final pulumi.Output<String?> providerEnvRef;
  /// The version of the Pulumi provider package used for discovery.
  late final pulumi.Output<String?> providerVersion;
  /// Status of the last discovery scan for this account.
  late final pulumi.Output<dynamic> scanStatus;
  /// If true, the account is scheduled for recurring discovery.
  late final pulumi.Output<bool> scheduledScanEnabled;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_api_insights_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/insights:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPoolID = registerOutput<String?>('agentPoolID');
    this.name = registerOutput<String>('name');
    ownedBy = registerOutput<dynamic>('ownedBy');
    provider = registerOutput<String>('provider');
    providerConfig = registerOutput<Map<String, dynamic>?>('providerConfig');
    providerEnvRef = registerOutput<String?>('providerEnvRef');
    providerVersion = registerOutput<String?>('providerVersion');
    scanStatus = registerOutput<dynamic>('scanStatus');
    scheduledScanEnabled = registerOutput<bool>('scheduledScanEnabled');
  }
}
