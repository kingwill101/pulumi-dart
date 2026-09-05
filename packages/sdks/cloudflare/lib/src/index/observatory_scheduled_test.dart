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
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleObservatoryScheduledTest = new cloudflare.ObservatoryScheduledTest("example_observatory_scheduled_test", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     url: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_observatory_scheduled_test = cloudflare.ObservatoryScheduledTest("example_observatory_scheduled_test",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     url="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleObservatoryScheduledTest = new Cloudflare.ObservatoryScheduledTest("example_observatory_scheduled_test", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Url = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewObservatoryScheduledTest(ctx, "example_observatory_scheduled_test", &cloudflare.ObservatoryScheduledTestArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Url:    pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_observatoryscheduledtest" "example_observatory_scheduled_test" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   url     = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ObservatoryScheduledTest;
/// import com.pulumi.cloudflare.ObservatoryScheduledTestArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleObservatoryScheduledTest = new ObservatoryScheduledTest("exampleObservatoryScheduledTest", ObservatoryScheduledTestArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .url("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleObservatoryScheduledTest:
///     type: cloudflare:ObservatoryScheduledTest
///     name: example_observatory_scheduled_test
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       url: example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/observatoryScheduledTest:ObservatoryScheduledTest example '<zone_id>/<url>'
/// ```
class ObservatoryScheduledTest extends pulumi.CustomResource {
  /// The frequency of the scheduled test. Defaults to WEEKLY for free plans, DAILY for paid plans.
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
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
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
