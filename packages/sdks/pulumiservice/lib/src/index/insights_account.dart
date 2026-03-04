import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider.dart';
import 'insights_account_args.dart';
import 'scan_schedule.dart';

/// Insights Account for cloud resource scanning and analysis across AWS, Azure, and GCP.
class InsightsAccount extends pulumi.CustomResource {
  /// Name of the insights account.
  late final pulumi.Output<String> accountName;

  /// The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  late final pulumi.Output<String> environment;

  /// The insights account identifier.
  late final pulumi.Output<String> insightsAccountId;

  /// The organization's name.
  late final pulumi.Output<String> organizationName;

  /// The cloud provider for scanning.
  late final pulumi.Output<CloudProvider> provider;

  /// Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  late final pulumi.Output<Map<String, dynamic>?> providerConfig;

  /// Schedule for automated scanning. Use 'daily' to enable daily scans, or 'none' to disable scheduled scanning. Defaults to 'none'.
  late final pulumi.Output<ScanSchedule> scanSchedule;

  /// Whether scheduled scanning is enabled.
  late final pulumi.Output<bool> scheduledScanEnabled;

  /// Key-value tags to associate with the insights account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [InsightsAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InsightsAccount]. {@macro pulumi_index_insights_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InsightsAccount(
    String name, {
    InsightsAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'pulumiservice:index:InsightsAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    environment = registerOutput<String>('environment');
    insightsAccountId = registerOutput<String>('insightsAccountId');
    organizationName = registerOutput<String>('organizationName');
    provider = registerOutput<CloudProvider>('provider');
    providerConfig = registerOutput<Map<String, dynamic>?>('providerConfig');
    scanSchedule = registerOutput<ScanSchedule>('scanSchedule');
    scheduledScanEnabled = registerOutput<bool>('scheduledScanEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
