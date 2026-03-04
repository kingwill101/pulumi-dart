import 'package:pulumi/pulumi.dart' as pulumi;
import 'broken_links_monitor_args.dart';
import 'broken_links_monitor_state.dart';

/// Use this resource to create, update, and delete a Synthetics Broken Links monitor in New Relic.
///
/// &gt; **IMPORTANT:**  The **Synthetics Legacy Runtime** has reached its &lt;b style="color:red;"&gt;end-of-life&lt;/b&gt; on &lt;b style="color:red;"&gt;October 22, 2024&lt;/b&gt;. As a consequence, using the legacy runtime or blank runtime values with Synthetic monitor requests from the New Relic Terraform Provider will result in API errors. Starting with **v3.51.0** of the New Relic Terraform Provider, configurations of Synthetic monitors without runtime attributes or comprising legacy runtime values will be deemed invalid.
/// &lt;br&gt;&lt;br&gt;
/// If your Synthetic monitors' configuration is not updated already with new runtime values, upgrade as soon as possible to avoid these consequences. For more details and instructions, please see the detailed warning against `runtime_type` and `runtime_type_version` in the **Argument Reference** section.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.BrokenLinksMonitor("foo", {
///     name: "Sample Broken Links Monitor",
///     uri: "https://www.one.example.com",
///     locationsPublics: ["AP_SOUTH_1"],
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     runtimeType: "NODE_API",
///     runtimeTypeVersion: "16.10",
///     tags: [{
///         key: "some_key",
///         values: ["some_value"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.BrokenLinksMonitor("foo",
///     name="Sample Broken Links Monitor",
///     uri="https://www.one.example.com",
///     locations_publics=["AP_SOUTH_1"],
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     runtime_type="NODE_API",
///     runtime_type_version="16.10",
///     tags=[{
///         "key": "some_key",
///         "values": ["some_value"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.BrokenLinksMonitor("foo", new()
///     {
///         Name = "Sample Broken Links Monitor",
///         Uri = "https://www.one.example.com",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///         },
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         RuntimeType = "NODE_API",
///         RuntimeTypeVersion = "16.10",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.BrokenLinksMonitorTagArgs
///             {
///                 Key = "some_key",
///                 Values = new[]
///                 {
///                     "some_value",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewBrokenLinksMonitor(ctx, "foo", &synthetics.BrokenLinksMonitorArgs{
/// 			Name: pulumi.String("Sample Broken Links Monitor"),
/// 			Uri:  pulumi.String("https://www.one.example.com"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 			},
/// 			Period:             pulumi.String("EVERY_6_HOURS"),
/// 			Status:             pulumi.String("ENABLED"),
/// 			RuntimeType:        pulumi.String("NODE_API"),
/// 			RuntimeTypeVersion: pulumi.String("16.10"),
/// 			Tags: synthetics.BrokenLinksMonitorTagArray{
/// 				&synthetics.BrokenLinksMonitorTagArgs{
/// 					Key: pulumi.String("some_key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("some_value"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.synthetics.BrokenLinksMonitor;
/// import com.pulumi.newrelic.synthetics.BrokenLinksMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.BrokenLinksMonitorTagArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var foo = new BrokenLinksMonitor("foo", BrokenLinksMonitorArgs.builder()
///             .name("Sample Broken Links Monitor")
///             .uri("https://www.one.example.com")
///             .locationsPublics("AP_SOUTH_1")
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .runtimeType("NODE_API")
///             .runtimeTypeVersion("16.10")
///             .tags(BrokenLinksMonitorTagArgs.builder()
///                 .key("some_key")
///                 .values("some_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:BrokenLinksMonitor
///     properties:
///       name: Sample Broken Links Monitor
///       uri: https://www.one.example.com
///       locationsPublics:
///         - AP_SOUTH_1
///       period: EVERY_6_HOURS
///       status: ENABLED
///       runtimeType: NODE_API
///       runtimeTypeVersion: '16.10'
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// ### Create a monitor with a private location
///
/// The below example shows how you can define a private location and attach it to a monitor.
///
/// &gt; **NOTE:** It can take up to 10 minutes for a private location to become available.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.PrivateLocation("foo", {
///     name: "Sample Private Location",
///     description: "Sample Private Location Description",
///     verifiedScriptExecution: false,
/// });
/// const fooBrokenLinksMonitor = new newrelic.synthetics.BrokenLinksMonitor("foo", {
///     name: "Sample Broken Links Monitor",
///     uri: "https://www.one.example.com",
///     locationsPrivates: [foo.id],
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     tags: [{
///         key: "some_key",
///         values: ["some_value"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.PrivateLocation("foo",
///     name="Sample Private Location",
///     description="Sample Private Location Description",
///     verified_script_execution=False)
/// foo_broken_links_monitor = newrelic.synthetics.BrokenLinksMonitor("foo",
///     name="Sample Broken Links Monitor",
///     uri="https://www.one.example.com",
///     locations_privates=[foo.id],
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     tags=[{
///         "key": "some_key",
///         "values": ["some_value"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.PrivateLocation("foo", new()
///     {
///         Name = "Sample Private Location",
///         Description = "Sample Private Location Description",
///         VerifiedScriptExecution = false,
///     });
///
///     var fooBrokenLinksMonitor = new NewRelic.Synthetics.BrokenLinksMonitor("foo", new()
///     {
///         Name = "Sample Broken Links Monitor",
///         Uri = "https://www.one.example.com",
///         LocationsPrivates = new[]
///         {
///             foo.Id,
///         },
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.BrokenLinksMonitorTagArgs
///             {
///                 Key = "some_key",
///                 Values = new[]
///                 {
///                     "some_value",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := synthetics.NewPrivateLocation(ctx, "foo", &synthetics.PrivateLocationArgs{
/// 			Name:                    pulumi.String("Sample Private Location"),
/// 			Description:             pulumi.String("Sample Private Location Description"),
/// 			VerifiedScriptExecution: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewBrokenLinksMonitor(ctx, "foo", &synthetics.BrokenLinksMonitorArgs{
/// 			Name: pulumi.String("Sample Broken Links Monitor"),
/// 			Uri:  pulumi.String("https://www.one.example.com"),
/// 			LocationsPrivates: pulumi.StringArray{
/// 				foo.ID(),
/// 			},
/// 			Period: pulumi.String("EVERY_6_HOURS"),
/// 			Status: pulumi.String("ENABLED"),
/// 			Tags: synthetics.BrokenLinksMonitorTagArray{
/// 				&synthetics.BrokenLinksMonitorTagArgs{
/// 					Key: pulumi.String("some_key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("some_value"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.synthetics.PrivateLocation;
/// import com.pulumi.newrelic.synthetics.PrivateLocationArgs;
/// import com.pulumi.newrelic.synthetics.BrokenLinksMonitor;
/// import com.pulumi.newrelic.synthetics.BrokenLinksMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.BrokenLinksMonitorTagArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var foo = new PrivateLocation("foo", PrivateLocationArgs.builder()
///             .name("Sample Private Location")
///             .description("Sample Private Location Description")
///             .verifiedScriptExecution(false)
///             .build());
///
///         var fooBrokenLinksMonitor = new BrokenLinksMonitor("fooBrokenLinksMonitor", BrokenLinksMonitorArgs.builder()
///             .name("Sample Broken Links Monitor")
///             .uri("https://www.one.example.com")
///             .locationsPrivates(foo.id())
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .tags(BrokenLinksMonitorTagArgs.builder()
///                 .key("some_key")
///                 .values("some_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:PrivateLocation
///     properties:
///       name: Sample Private Location
///       description: Sample Private Location Description
///       verifiedScriptExecution: false
///   fooBrokenLinksMonitor:
///     type: newrelic:synthetics:BrokenLinksMonitor
///     name: foo
///     properties:
///       name: Sample Broken Links Monitor
///       uri: https://www.one.example.com
///       locationsPrivates:
///         - ${foo.id}
///       period: EVERY_6_HOURS
///       status: ENABLED
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
///
/// ## Import
///
/// A broken links monitor can be imported using its GUID, using the following command.
///
/// ```bash
/// $ terraform import newrelic_synthetics_broken_links_monitor.monitor <guid>
/// ```
class BrokenLinksMonitor extends pulumi.CustomResource {
  /// The account in which the Synthetics monitor will be created.
  late final pulumi.Output<String> accountId;

  /// The unique entity identifier of the monitor in New Relic.
  late final pulumi.Output<String> guid;

  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  late final pulumi.Output<List<String>?> locationsPrivates;

  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  late final pulumi.Output<List<String>?> locationsPublics;

  /// The monitor id of the synthetics broken links monitor, not to be confused with the GUID of the monitor.
  late final pulumi.Output<String> monitorId;

  /// The name for the monitor.
  late final pulumi.Output<String> name;

  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  late final pulumi.Output<String> period;

  /// The interval in minutes at which Synthetic monitor should run.
  late final pulumi.Output<int> periodInMinutes;

  /// The runtime that the monitor will use to run jobs (`NODE_API`).
  late final pulumi.Output<String?> runtimeType_;

  /// The specific version of the runtime type selected (`16.10`).
  ///
  /// &gt; **WARNING:**  The &lt;b style="color:red;"&gt;end-of-life&lt;/b&gt; of the **Synthetics Legacy Runtime** took effect on &lt;b style="color:red;"&gt;October 22, 2024&lt;/b&gt;, implying that support for using the deprecated Synthetics Legacy Runtime with **new and existing** Synthetic monitors &lt;b style="color:maroon;"&gt;officially ended as of October 22, 2024&lt;/b&gt;. As a consequence of this API change, all requests associated with Synthetic Monitors (except Ping Monitors) going out of the New Relic Terraform Provider will be blocked by an API error if they include values corresponding to the legacy runtime or blank runtime values.
  /// &lt;br&gt;&lt;br&gt;
  /// Following these changes, starting with &lt;b style="color:red;"&gt;v3.51.0&lt;/b&gt; of the New Relic Terraform Provider, configuration of **new and existing** Synthetic monitors without runtime attributes (or) comprising runtime attributes signifying the legacy runtime will be deemed invalid (this applies to all Synthetic monitor resources, except `newrelic.synthetics.Monitor` with type `SIMPLE`). If your monitors' configuration is not updated with new runtime values, you will see the consequences stated here. New Synthetic monitors created after August 26, 2024 already adhere to these restrictions, as part of the first phase of the EOL.
  /// &lt;br&gt;&lt;br&gt;
  /// We kindly recommend that you upgrade your Synthetic Monitors to the new runtime as soon as possible if they are still using the legacy runtime, to avoid seeing the aforementioned consequences. Please check out this guide in the documentation of the Terraform Provider (specifically, the table at the bottom of the guide, if you're looking for updates to be made to the configuration of Synthetic monitors) and [this announcement](https://forum.newrelic.com/s/hubtopic/aAXPh0000001brxOAA/upcoming-endoflife-legacy-synthetics-runtimes-and-cpm) for more details on the EOL, actions needed, relevant resources, and more.
  /// &lt;br&gt;&lt;br&gt;
  /// You would not be affected by the EOL if your Synthetic monitors' Terraform configuration comprises new runtime values.
  late final pulumi.Output<String?> runtimeTypeVersion;

  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  late final pulumi.Output<String> status;

  /// The tags that will be associated with the monitor. See Nested tag blocks below for details
  late final pulumi.Output<List<Map<String, dynamic>>?> tags;

  /// The URI the monitor runs against.
  late final pulumi.Output<String> uri;

  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  late final pulumi.Output<bool?> useUnsupportedLegacyRuntime;

  /// Creates a new [BrokenLinksMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokenLinksMonitor]. {@macro pulumi_synthetics_broken_links_monitor_broken_links_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokenLinksMonitor(
    String name, {
    BrokenLinksMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:synthetics/brokenLinksMonitor:BrokenLinksMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    guid = registerOutput<String>('guid');
    locationsPrivates = registerOutput<List<String>?>('locationsPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    uri = registerOutput<String>('uri');
    useUnsupportedLegacyRuntime = registerOutput<bool?>(
      'useUnsupportedLegacyRuntime',
    );
  }

  /// Gets an existing [BrokenLinksMonitor] resource's state with the given [name] and [id].
  static BrokenLinksMonitor get(
    String name,
    pulumi.Input<String> id, {
    BrokenLinksMonitorState? state,
  }) {
    return BrokenLinksMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BrokenLinksMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:synthetics/brokenLinksMonitor:BrokenLinksMonitor',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    guid = registerOutput<String>('guid');
    locationsPrivates = registerOutput<List<String>?>('locationsPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    uri = registerOutput<String>('uri');
    useUnsupportedLegacyRuntime = registerOutput<bool?>(
      'useUnsupportedLegacyRuntime',
    );
  }
}
