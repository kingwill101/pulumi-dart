import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_monitor_args.dart';
import 'step_monitor_state.dart';

/// Use this resource to create, update, and delete a Synthetics Step monitor in New Relic.
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
/// const foo = new newrelic.synthetics.StepMonitor("foo", {
///     name: "Sample Step Monitor",
///     enableScreenshotOnFailureAndScript: true,
///     locationsPublics: [
///         "US_EAST_1",
///         "US_EAST_2",
///     ],
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     runtimeType: "CHROME_BROWSER",
///     runtimeTypeVersion: "100",
///     devices: [
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers: ["CHROME"],
///     steps: [{
///         ordinal: 0,
///         type: "NAVIGATE",
///         values: ["https://www.newrelic.com"],
///     }],
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
/// foo = newrelic.synthetics.StepMonitor("foo",
///     name="Sample Step Monitor",
///     enable_screenshot_on_failure_and_script=True,
///     locations_publics=[
///         "US_EAST_1",
///         "US_EAST_2",
///     ],
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     runtime_type="CHROME_BROWSER",
///     runtime_type_version="100",
///     devices=[
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers=["CHROME"],
///     steps=[{
///         "ordinal": 0,
///         "type": "NAVIGATE",
///         "values": ["https://www.newrelic.com"],
///     }],
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
///     var foo = new NewRelic.Synthetics.StepMonitor("foo", new()
///     {
///         Name = "Sample Step Monitor",
///         EnableScreenshotOnFailureAndScript = true,
///         LocationsPublics = new[]
///         {
///             "US_EAST_1",
///             "US_EAST_2",
///         },
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         RuntimeType = "CHROME_BROWSER",
///         RuntimeTypeVersion = "100",
///         Devices = new[]
///         {
///             "DESKTOP",
///             "MOBILE_PORTRAIT",
///             "TABLET_LANDSCAPE",
///         },
///         Browsers = new[]
///         {
///             "CHROME",
///         },
///         Steps = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorStepArgs
///             {
///                 Ordinal = 0,
///                 Type = "NAVIGATE",
///                 Values = new[]
///                 {
///                     "https://www.newrelic.com",
///                 },
///             },
///         },
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorTagArgs
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
/// 		_, err := synthetics.NewStepMonitor(ctx, "foo", &synthetics.StepMonitorArgs{
/// 			Name:                               pulumi.String("Sample Step Monitor"),
/// 			EnableScreenshotOnFailureAndScript: pulumi.Bool(true),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("US_EAST_1"),
/// 				pulumi.String("US_EAST_2"),
/// 			},
/// 			Period:             pulumi.String("EVERY_6_HOURS"),
/// 			Status:             pulumi.String("ENABLED"),
/// 			RuntimeType:        pulumi.String("CHROME_BROWSER"),
/// 			RuntimeTypeVersion: pulumi.String("100"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			Steps: synthetics.StepMonitorStepArray{
/// 				&synthetics.StepMonitorStepArgs{
/// 					Ordinal: pulumi.Int(0),
/// 					Type:    pulumi.String("NAVIGATE"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("https://www.newrelic.com"),
/// 					},
/// 				},
/// 			},
/// 			Tags: synthetics.StepMonitorTagArray{
/// 				&synthetics.StepMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.StepMonitor;
/// import com.pulumi.newrelic.synthetics.StepMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorStepArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorTagArgs;
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
///         var foo = new StepMonitor("foo", StepMonitorArgs.builder()
///             .name("Sample Step Monitor")
///             .enableScreenshotOnFailureAndScript(true)
///             .locationsPublics(
///                 "US_EAST_1",
///                 "US_EAST_2")
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .runtimeType("CHROME_BROWSER")
///             .runtimeTypeVersion("100")
///             .devices(
///                 "DESKTOP",
///                 "MOBILE_PORTRAIT",
///                 "TABLET_LANDSCAPE")
///             .browsers("CHROME")
///             .steps(StepMonitorStepArgs.builder()
///                 .ordinal(0)
///                 .type("NAVIGATE")
///                 .values("https://www.newrelic.com")
///                 .build())
///             .tags(StepMonitorTagArgs.builder()
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
///     type: newrelic:synthetics:StepMonitor
///     properties:
///       name: Sample Step Monitor
///       enableScreenshotOnFailureAndScript: true
///       locationsPublics:
///         - US_EAST_1
///         - US_EAST_2
///       period: EVERY_6_HOURS
///       status: ENABLED
///       runtimeType: CHROME_BROWSER
///       runtimeTypeVersion: '100'
///       devices:
///         - DESKTOP
///         - MOBILE_PORTRAIT
///         - TABLET_LANDSCAPE
///       browsers:
///         - CHROME
///       steps:
///         - ordinal: 0
///           type: NAVIGATE
///           values:
///             - https://www.newrelic.com
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
///     verifiedScriptExecution: true,
/// });
/// const fooStepMonitor = new newrelic.synthetics.StepMonitor("foo", {
///     name: "Sample Step Monitor",
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     runtimeType: "CHROME_BROWSER",
///     runtimeTypeVersion: "100",
///     devices: [
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers: ["CHROME"],
///     locationPrivates: [{
///         guid: foo.id,
///         vsePassword: "secret",
///     }],
///     steps: [{
///         ordinal: 0,
///         type: "NAVIGATE",
///         values: ["https://google.com"],
///     }],
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
///     verified_script_execution=True)
/// foo_step_monitor = newrelic.synthetics.StepMonitor("foo",
///     name="Sample Step Monitor",
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     runtime_type="CHROME_BROWSER",
///     runtime_type_version="100",
///     devices=[
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers=["CHROME"],
///     location_privates=[{
///         "guid": foo.id,
///         "vse_password": "secret",
///     }],
///     steps=[{
///         "ordinal": 0,
///         "type": "NAVIGATE",
///         "values": ["https://google.com"],
///     }],
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
///         VerifiedScriptExecution = true,
///     });
///
///     var fooStepMonitor = new NewRelic.Synthetics.StepMonitor("foo", new()
///     {
///         Name = "Sample Step Monitor",
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         RuntimeType = "CHROME_BROWSER",
///         RuntimeTypeVersion = "100",
///         Devices = new[]
///         {
///             "DESKTOP",
///             "MOBILE_PORTRAIT",
///             "TABLET_LANDSCAPE",
///         },
///         Browsers = new[]
///         {
///             "CHROME",
///         },
///         LocationPrivates = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorLocationPrivateArgs
///             {
///                 Guid = foo.Id,
///                 VsePassword = "secret",
///             },
///         },
///         Steps = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorStepArgs
///             {
///                 Ordinal = 0,
///                 Type = "NAVIGATE",
///                 Values = new[]
///                 {
///                     "https://google.com",
///                 },
///             },
///         },
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorTagArgs
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
/// 			VerifiedScriptExecution: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewStepMonitor(ctx, "foo", &synthetics.StepMonitorArgs{
/// 			Name:               pulumi.String("Sample Step Monitor"),
/// 			Period:             pulumi.String("EVERY_6_HOURS"),
/// 			Status:             pulumi.String("ENABLED"),
/// 			RuntimeType:        pulumi.String("CHROME_BROWSER"),
/// 			RuntimeTypeVersion: pulumi.String("100"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			LocationPrivates: synthetics.StepMonitorLocationPrivateArray{
/// 				&synthetics.StepMonitorLocationPrivateArgs{
/// 					Guid:        foo.ID(),
/// 					VsePassword: pulumi.String("secret"),
/// 				},
/// 			},
/// 			Steps: synthetics.StepMonitorStepArray{
/// 				&synthetics.StepMonitorStepArgs{
/// 					Ordinal: pulumi.Int(0),
/// 					Type:    pulumi.String("NAVIGATE"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("https://google.com"),
/// 					},
/// 				},
/// 			},
/// 			Tags: synthetics.StepMonitorTagArray{
/// 				&synthetics.StepMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.StepMonitor;
/// import com.pulumi.newrelic.synthetics.StepMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorLocationPrivateArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorStepArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorTagArgs;
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
///             .verifiedScriptExecution(true)
///             .build());
///
///         var fooStepMonitor = new StepMonitor("fooStepMonitor", StepMonitorArgs.builder()
///             .name("Sample Step Monitor")
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .runtimeType("CHROME_BROWSER")
///             .runtimeTypeVersion("100")
///             .devices(
///                 "DESKTOP",
///                 "MOBILE_PORTRAIT",
///                 "TABLET_LANDSCAPE")
///             .browsers("CHROME")
///             .locationPrivates(StepMonitorLocationPrivateArgs.builder()
///                 .guid(foo.id())
///                 .vsePassword("secret")
///                 .build())
///             .steps(StepMonitorStepArgs.builder()
///                 .ordinal(0)
///                 .type("NAVIGATE")
///                 .values("https://google.com")
///                 .build())
///             .tags(StepMonitorTagArgs.builder()
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
///       verifiedScriptExecution: true
///   fooStepMonitor:
///     type: newrelic:synthetics:StepMonitor
///     name: foo
///     properties:
///       name: Sample Step Monitor
///       period: EVERY_6_HOURS
///       status: ENABLED
///       runtimeType: CHROME_BROWSER
///       runtimeTypeVersion: '100'
///       devices:
///         - DESKTOP
///         - MOBILE_PORTRAIT
///         - TABLET_LANDSCAPE
///       browsers:
///         - CHROME
///       locationPrivates:
///         - guid: ${foo.id}
///           vsePassword: secret
///       steps:
///         - ordinal: 0
///           type: NAVIGATE
///           values:
///             - https://google.com
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
///
/// ## Import
///
/// A step monitor can be imported using its GUID, using the following command.
///
/// ```bash
/// $ terraform import newrelic_synthetics_step_monitor.monitor <guid>
/// ```
class StepMonitor extends pulumi.CustomResource {
  /// The account in which the Synthetics monitor will be created.
  late final pulumi.Output<String> accountId;
  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  late final pulumi.Output<List<String>?> browsers;
  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  late final pulumi.Output<List<String>?> devices;
  /// Capture a screenshot during job execution.
  late final pulumi.Output<bool?> enableScreenshotOnFailureAndScript;
  /// The unique entity identifier of the monitor in New Relic.
  late final pulumi.Output<String> guid;
  /// The location the monitor will run from. At least one of `locations_public` or `location_private` is required. See Nested locations_private blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> locationPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  late final pulumi.Output<List<String>?> locationsPublics;
  /// The monitor id of the synthetics step monitor (not to be confused with the GUID of the monitor).
  late final pulumi.Output<String> monitorId;
  /// The name for the monitor.
  late final pulumi.Output<String> name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  late final pulumi.Output<String> period;
  /// The interval in minutes at which Synthetic monitor should run.
  late final pulumi.Output<int> periodInMinutes;
  /// The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  late final pulumi.Output<String?> runtimeType_;
  /// The specific version of the runtime type selected (`100`).
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
  /// The steps that make up the script the monitor will run. See Nested steps blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> tags;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  late final pulumi.Output<bool?> useUnsupportedLegacyRuntime;

  /// Creates a new [StepMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StepMonitor]. {@macro pulumi_synthetics_step_monitor_step_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StepMonitor(
    String name, {
    StepMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/stepMonitor:StepMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>('enableScreenshotOnFailureAndScript');
    guid = registerOutput<String>('guid');
    locationPrivates = registerOutput<List<Map<String, dynamic>>?>('locationPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    status = registerOutput<String>('status');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    useUnsupportedLegacyRuntime = registerOutput<bool?>('useUnsupportedLegacyRuntime');
  }

  /// Gets an existing [StepMonitor] resource's state with the given [name] and [id].
  static StepMonitor get(
    String name,
    pulumi.Input<String> id, {
    StepMonitorState? state,
  }) {
    return StepMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StepMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/stepMonitor:StepMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>('enableScreenshotOnFailureAndScript');
    guid = registerOutput<String>('guid');
    locationPrivates = registerOutput<List<Map<String, dynamic>>?>('locationPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    status = registerOutput<String>('status');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    useUnsupportedLegacyRuntime = registerOutput<bool?>('useUnsupportedLegacyRuntime');
  }
}
