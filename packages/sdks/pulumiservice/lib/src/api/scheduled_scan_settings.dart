import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_scan_settings_args.dart';

/// Updates the scheduled scan configuration for an Insights account, such as scan frequency and schedule.
class ScheduledScanSettings extends pulumi.CustomResource {
  /// The batch size for processing resources during the scan.
  late final pulumi.Output<int?> batchSize;
  /// The concurrency level for list operations during the scan.
  late final pulumi.Output<int?> listConcurrency;
  /// Whether the scheduled scan is paused.
  late final pulumi.Output<bool> paused;
  /// The concurrency level for read operations during the scan.
  late final pulumi.Output<int?> readConcurrency;
  /// The timeout duration for read operations, as a Go duration string (e.g., '30s', '5m').
  late final pulumi.Output<String?> readTimeout;
  /// The cron expression defining the scan schedule.
  late final pulumi.Output<String> scheduleCron;

  /// Creates a new [ScheduledScanSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledScanSettings]. {@macro pulumi_api_insights_scheduled_scan_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledScanSettings(
    String name, {
    ScheduledScanSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/insights:ScheduledScanSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchSize = registerOutput<int?>('batchSize');
    listConcurrency = registerOutput<int?>('listConcurrency');
    paused = registerOutput<bool>('paused');
    readConcurrency = registerOutput<int?>('readConcurrency');
    readTimeout = registerOutput<String?>('readTimeout');
    scheduleCron = registerOutput<String>('scheduleCron');
  }

  /// Creates a typed reference to an existing [ScheduledScanSettings] resource.
  ScheduledScanSettings.reference(String urn)
    : super(
        'pulumiservice:api/insights:ScheduledScanSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    batchSize = registerOutput<int?>('batchSize');
    listConcurrency = registerOutput<int?>('listConcurrency');
    paused = registerOutput<bool>('paused');
    readConcurrency = registerOutput<int?>('readConcurrency');
    readTimeout = registerOutput<String?>('readTimeout');
    scheduleCron = registerOutput<String>('scheduleCron');
  }
}
