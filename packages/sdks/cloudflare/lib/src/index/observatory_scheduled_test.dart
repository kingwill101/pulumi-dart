import 'package:pulumi/pulumi.dart' as pulumi;
import 'observatory_scheduled_test_args.dart';
import 'observatory_scheduled_test_schedule.dart';
import 'observatory_scheduled_test_state.dart';
import 'observatory_scheduled_test_test.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Import
///
/// Import using zoneId and url (region defaults to us-central1)
///
/// ```sh
/// $ pulumi import cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest example '<zone_id>/<url>'
/// ```
///
/// Import with an explicit region (required when the schedule is not in us-central1)
///
/// ```sh
/// $ pulumi import cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest example '<zone_id>/<url>/<region>'
/// ```
class ObservatoryScheduledTest extends pulumi.CustomResource {
  /// The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
  /// Available values: "DAILY", "WEEKLY".
  late final pulumi.Output<String> frequency;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  late final pulumi.Output<String> region;
  /// The test schedule.
  late final pulumi.Output<ObservatoryScheduledTestSchedule> schedule;
  late final pulumi.Output<ObservatoryScheduledTestTest> test;
  /// A URL.
  late final pulumi.Output<String> url;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ObservatoryScheduledTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObservatoryScheduledTest]. {@macro pulumi_index_observatory_scheduled_test_observatory_scheduled_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObservatoryScheduledTest(
    String name, {
    ObservatoryScheduledTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    frequency = registerOutput<String>('frequency');
    region = registerOutput<String>('region');
    schedule = registerOutput<ObservatoryScheduledTestSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    test = registerOutput<ObservatoryScheduledTestTest>('test', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestTest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    url = registerOutput<String>('url');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ObservatoryScheduledTest] resource's state with the given [name] and [id].
  static ObservatoryScheduledTest get(
    String name,
    pulumi.Input<String> id, {
    ObservatoryScheduledTestState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ObservatoryScheduledTest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ObservatoryScheduledTest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    frequency = registerOutput<String>('frequency');
    region = registerOutput<String>('region');
    schedule = registerOutput<ObservatoryScheduledTestSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    test = registerOutput<ObservatoryScheduledTestTest>('test', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestTest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    url = registerOutput<String>('url');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ObservatoryScheduledTest] resource.
  ObservatoryScheduledTest.reference(String urn)
    : super(
        'cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    frequency = registerOutput<String>('frequency');
    region = registerOutput<String>('region');
    schedule = registerOutput<ObservatoryScheduledTestSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    test = registerOutput<ObservatoryScheduledTestTest>('test', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObservatoryScheduledTestTest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    url = registerOutput<String>('url');
    zoneId = registerOutput<String>('zoneId');
  }
}
