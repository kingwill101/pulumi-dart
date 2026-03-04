import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_monitor_args.dart';
import 'script_monitor_state.dart';

/// Use this resource to create update, and delete a Script API or Script Browser Synthetics Monitor in New Relic.
///
/// &gt; **IMPORTANT:**  The **Synthetics Legacy Runtime** has reached its &lt;b style="color:red;"&gt;end-of-life&lt;/b&gt; on &lt;b style="color:red;"&gt;October 22, 2024&lt;/b&gt;. As a consequence, using the legacy runtime or blank runtime values with Synthetic monitor requests from the New Relic Terraform Provider will result in API errors. Starting with **v3.51.0** of the New Relic Terraform Provider, configurations of Synthetic monitors without runtime attributes or comprising legacy runtime values will be deemed invalid.
/// &lt;br&gt;&lt;br&gt;
/// If your Synthetic monitors' configuration is not updated already with new runtime values, upgrade as soon as possible to avoid these consequences. For more details and instructions, please see the detailed warning in the **Deprecated Runtime** section.
///
///
/// ## Example Usage
///
/// ##### Type: `SCRIPT_API`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const monitor = new newrelic.synthetics.ScriptMonitor("monitor", {
///     status: "ENABLED",
///     name: "script_monitor",
///     type: "SCRIPT_API",
///     locationsPublics: [
///         "AP_SOUTH_1",
///         "AP_EAST_1",
///     ],
///     period: "EVERY_6_HOURS",
///     script: "console.log('it works!')",
///     scriptLanguage: "JAVASCRIPT",
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
/// monitor = newrelic.synthetics.ScriptMonitor("monitor",
///     status="ENABLED",
///     name="script_monitor",
///     type="SCRIPT_API",
///     locations_publics=[
///         "AP_SOUTH_1",
///         "AP_EAST_1",
///     ],
///     period="EVERY_6_HOURS",
///     script="console.log('it works!')",
///     script_language="JAVASCRIPT",
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
///     var monitor = new NewRelic.Synthetics.ScriptMonitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "script_monitor",
///         Type = "SCRIPT_API",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///             "AP_EAST_1",
///         },
///         Period = "EVERY_6_HOURS",
///         Script = "console.log('it works!')",
///         ScriptLanguage = "JAVASCRIPT",
///         RuntimeType = "NODE_API",
///         RuntimeTypeVersion = "16.10",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorTagArgs
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
/// 		_, err := synthetics.NewScriptMonitor(ctx, "monitor", &synthetics.ScriptMonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("script_monitor"),
/// 			Type:   pulumi.String("SCRIPT_API"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 				pulumi.String("AP_EAST_1"),
/// 			},
/// 			Period:             pulumi.String("EVERY_6_HOURS"),
/// 			Script:             pulumi.String("console.log('it works!')"),
/// 			ScriptLanguage:     pulumi.String("JAVASCRIPT"),
/// 			RuntimeType:        pulumi.String("NODE_API"),
/// 			RuntimeTypeVersion: pulumi.String("16.10"),
/// 			Tags: synthetics.ScriptMonitorTagArray{
/// 				&synthetics.ScriptMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.ScriptMonitor;
/// import com.pulumi.newrelic.synthetics.ScriptMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorTagArgs;
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
///         var monitor = new ScriptMonitor("monitor", ScriptMonitorArgs.builder()
///             .status("ENABLED")
///             .name("script_monitor")
///             .type("SCRIPT_API")
///             .locationsPublics(
///                 "AP_SOUTH_1",
///                 "AP_EAST_1")
///             .period("EVERY_6_HOURS")
///             .script("console.log('it works!')")
///             .scriptLanguage("JAVASCRIPT")
///             .runtimeType("NODE_API")
///             .runtimeTypeVersion("16.10")
///             .tags(ScriptMonitorTagArgs.builder()
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
///   monitor:
///     type: newrelic:synthetics:ScriptMonitor
///     properties:
///       status: ENABLED
///       name: script_monitor
///       type: SCRIPT_API
///       locationsPublics:
///         - AP_SOUTH_1
///         - AP_EAST_1
///       period: EVERY_6_HOURS
///       script: console.log('it works!')
///       scriptLanguage: JAVASCRIPT
///       runtimeType: NODE_API
///       runtimeTypeVersion: '16.10'
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// ##### Type: `SCRIPT_BROWSER`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const monitor = new newrelic.synthetics.ScriptMonitor("monitor", {
///     status: "ENABLED",
///     name: "script_monitor",
///     type: "SCRIPT_BROWSER",
///     locationsPublics: [
///         "AP_SOUTH_1",
///         "AP_EAST_1",
///     ],
///     period: "EVERY_HOUR",
///     script: "$browser.get('https://one.newrelic.com')",
///     runtimeTypeVersion: "100",
///     runtimeType: "CHROME_BROWSER",
///     scriptLanguage: "JAVASCRIPT",
///     devices: [
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers: ["CHROME"],
///     enableScreenshotOnFailureAndScript: false,
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
/// monitor = newrelic.synthetics.ScriptMonitor("monitor",
///     status="ENABLED",
///     name="script_monitor",
///     type="SCRIPT_BROWSER",
///     locations_publics=[
///         "AP_SOUTH_1",
///         "AP_EAST_1",
///     ],
///     period="EVERY_HOUR",
///     script="$browser.get('https://one.newrelic.com')",
///     runtime_type_version="100",
///     runtime_type="CHROME_BROWSER",
///     script_language="JAVASCRIPT",
///     devices=[
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers=["CHROME"],
///     enable_screenshot_on_failure_and_script=False,
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
///     var monitor = new NewRelic.Synthetics.ScriptMonitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "script_monitor",
///         Type = "SCRIPT_BROWSER",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///             "AP_EAST_1",
///         },
///         Period = "EVERY_HOUR",
///         Script = "$browser.get('https://one.newrelic.com')",
///         RuntimeTypeVersion = "100",
///         RuntimeType = "CHROME_BROWSER",
///         ScriptLanguage = "JAVASCRIPT",
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
///         EnableScreenshotOnFailureAndScript = false,
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorTagArgs
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
/// 		_, err := synthetics.NewScriptMonitor(ctx, "monitor", &synthetics.ScriptMonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("script_monitor"),
/// 			Type:   pulumi.String("SCRIPT_BROWSER"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 				pulumi.String("AP_EAST_1"),
/// 			},
/// 			Period:             pulumi.String("EVERY_HOUR"),
/// 			Script:             pulumi.String("$browser.get('https://one.newrelic.com')"),
/// 			RuntimeTypeVersion: pulumi.String("100"),
/// 			RuntimeType:        pulumi.String("CHROME_BROWSER"),
/// 			ScriptLanguage:     pulumi.String("JAVASCRIPT"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			EnableScreenshotOnFailureAndScript: pulumi.Bool(false),
/// 			Tags: synthetics.ScriptMonitorTagArray{
/// 				&synthetics.ScriptMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.ScriptMonitor;
/// import com.pulumi.newrelic.synthetics.ScriptMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorTagArgs;
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
///         var monitor = new ScriptMonitor("monitor", ScriptMonitorArgs.builder()
///             .status("ENABLED")
///             .name("script_monitor")
///             .type("SCRIPT_BROWSER")
///             .locationsPublics(
///                 "AP_SOUTH_1",
///                 "AP_EAST_1")
///             .period("EVERY_HOUR")
///             .script("$browser.get('https://one.newrelic.com')")
///             .runtimeTypeVersion("100")
///             .runtimeType("CHROME_BROWSER")
///             .scriptLanguage("JAVASCRIPT")
///             .devices(
///                 "DESKTOP",
///                 "MOBILE_PORTRAIT",
///                 "TABLET_LANDSCAPE")
///             .browsers("CHROME")
///             .enableScreenshotOnFailureAndScript(false)
///             .tags(ScriptMonitorTagArgs.builder()
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
///   monitor:
///     type: newrelic:synthetics:ScriptMonitor
///     properties:
///       status: ENABLED
///       name: script_monitor
///       type: SCRIPT_BROWSER
///       locationsPublics:
///         - AP_SOUTH_1
///         - AP_EAST_1
///       period: EVERY_HOUR
///       script: $browser.get('https://one.newrelic.com')
///       runtimeTypeVersion: '100'
///       runtimeType: CHROME_BROWSER
///       scriptLanguage: JAVASCRIPT
///       devices:
///         - DESKTOP
///         - MOBILE_PORTRAIT
///         - TABLET_LANDSCAPE
///       browsers:
///         - CHROME
///       enableScreenshotOnFailureAndScript: false
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
/// ##### Type: `SCRIPT_API`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const location = new newrelic.synthetics.PrivateLocation("location", {
///     description: "Example private location",
///     name: "private_location",
///     verifiedScriptExecution: true,
/// });
/// const monitor = new newrelic.synthetics.ScriptMonitor("monitor", {
///     status: "ENABLED",
///     name: "script_monitor",
///     type: "SCRIPT_API",
///     locationPrivates: [{
///         guid: location.id,
///         vsePassword: "secret",
///     }],
///     period: "EVERY_6_HOURS",
///     script: "console.log('terraform integration test updated')",
///     scriptLanguage: "JAVASCRIPT",
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
/// location = newrelic.synthetics.PrivateLocation("location",
///     description="Example private location",
///     name="private_location",
///     verified_script_execution=True)
/// monitor = newrelic.synthetics.ScriptMonitor("monitor",
///     status="ENABLED",
///     name="script_monitor",
///     type="SCRIPT_API",
///     location_privates=[{
///         "guid": location.id,
///         "vse_password": "secret",
///     }],
///     period="EVERY_6_HOURS",
///     script="console.log('terraform integration test updated')",
///     script_language="JAVASCRIPT",
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
///     var location = new NewRelic.Synthetics.PrivateLocation("location", new()
///     {
///         Description = "Example private location",
///         Name = "private_location",
///         VerifiedScriptExecution = true,
///     });
///
///     var monitor = new NewRelic.Synthetics.ScriptMonitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "script_monitor",
///         Type = "SCRIPT_API",
///         LocationPrivates = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorLocationPrivateArgs
///             {
///                 Guid = location.Id,
///                 VsePassword = "secret",
///             },
///         },
///         Period = "EVERY_6_HOURS",
///         Script = "console.log('terraform integration test updated')",
///         ScriptLanguage = "JAVASCRIPT",
///         RuntimeType = "NODE_API",
///         RuntimeTypeVersion = "16.10",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorTagArgs
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
/// 		location, err := synthetics.NewPrivateLocation(ctx, "location", &synthetics.PrivateLocationArgs{
/// 			Description:             pulumi.String("Example private location"),
/// 			Name:                    pulumi.String("private_location"),
/// 			VerifiedScriptExecution: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewScriptMonitor(ctx, "monitor", &synthetics.ScriptMonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("script_monitor"),
/// 			Type:   pulumi.String("SCRIPT_API"),
/// 			LocationPrivates: synthetics.ScriptMonitorLocationPrivateArray{
/// 				&synthetics.ScriptMonitorLocationPrivateArgs{
/// 					Guid:        location.ID(),
/// 					VsePassword: pulumi.String("secret"),
/// 				},
/// 			},
/// 			Period:             pulumi.String("EVERY_6_HOURS"),
/// 			Script:             pulumi.String("console.log('terraform integration test updated')"),
/// 			ScriptLanguage:     pulumi.String("JAVASCRIPT"),
/// 			RuntimeType:        pulumi.String("NODE_API"),
/// 			RuntimeTypeVersion: pulumi.String("16.10"),
/// 			Tags: synthetics.ScriptMonitorTagArray{
/// 				&synthetics.ScriptMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.ScriptMonitor;
/// import com.pulumi.newrelic.synthetics.ScriptMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorLocationPrivateArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorTagArgs;
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
///         var location = new PrivateLocation("location", PrivateLocationArgs.builder()
///             .description("Example private location")
///             .name("private_location")
///             .verifiedScriptExecution(true)
///             .build());
///
///         var monitor = new ScriptMonitor("monitor", ScriptMonitorArgs.builder()
///             .status("ENABLED")
///             .name("script_monitor")
///             .type("SCRIPT_API")
///             .locationPrivates(ScriptMonitorLocationPrivateArgs.builder()
///                 .guid(location.id())
///                 .vsePassword("secret")
///                 .build())
///             .period("EVERY_6_HOURS")
///             .script("console.log('terraform integration test updated')")
///             .scriptLanguage("JAVASCRIPT")
///             .runtimeType("NODE_API")
///             .runtimeTypeVersion("16.10")
///             .tags(ScriptMonitorTagArgs.builder()
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
///   location:
///     type: newrelic:synthetics:PrivateLocation
///     properties:
///       description: Example private location
///       name: private_location
///       verifiedScriptExecution: true
///   monitor:
///     type: newrelic:synthetics:ScriptMonitor
///     properties:
///       status: ENABLED
///       name: script_monitor
///       type: SCRIPT_API
///       locationPrivates:
///         - guid: ${location.id}
///           vsePassword: secret
///       period: EVERY_6_HOURS
///       script: console.log('terraform integration test updated')
///       scriptLanguage: JAVASCRIPT
///       runtimeType: NODE_API
///       runtimeTypeVersion: '16.10'
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// ##### Type: `SCRIPT_BROWSER`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const location = new newrelic.synthetics.PrivateLocation("location", {
///     description: "Test Description",
///     name: "private_location",
///     verifiedScriptExecution: true,
/// });
/// const monitor = new newrelic.synthetics.ScriptMonitor("monitor", {
///     status: "ENABLED",
///     name: "script_monitor",
///     type: "SCRIPT_BROWSER",
///     period: "EVERY_HOUR",
///     script: "$browser.get('https://one.newrelic.com')",
///     runtimeTypeVersion: "100",
///     runtimeType: "CHROME_BROWSER",
///     scriptLanguage: "JAVASCRIPT",
///     devices: [
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers: ["CHROME"],
///     enableScreenshotOnFailureAndScript: false,
///     locationPrivates: [{
///         guid: location.id,
///         vsePassword: "secret",
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
/// location = newrelic.synthetics.PrivateLocation("location",
///     description="Test Description",
///     name="private_location",
///     verified_script_execution=True)
/// monitor = newrelic.synthetics.ScriptMonitor("monitor",
///     status="ENABLED",
///     name="script_monitor",
///     type="SCRIPT_BROWSER",
///     period="EVERY_HOUR",
///     script="$browser.get('https://one.newrelic.com')",
///     runtime_type_version="100",
///     runtime_type="CHROME_BROWSER",
///     script_language="JAVASCRIPT",
///     devices=[
///         "DESKTOP",
///         "MOBILE_PORTRAIT",
///         "TABLET_LANDSCAPE",
///     ],
///     browsers=["CHROME"],
///     enable_screenshot_on_failure_and_script=False,
///     location_privates=[{
///         "guid": location.id,
///         "vse_password": "secret",
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
///     var location = new NewRelic.Synthetics.PrivateLocation("location", new()
///     {
///         Description = "Test Description",
///         Name = "private_location",
///         VerifiedScriptExecution = true,
///     });
///
///     var monitor = new NewRelic.Synthetics.ScriptMonitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "script_monitor",
///         Type = "SCRIPT_BROWSER",
///         Period = "EVERY_HOUR",
///         Script = "$browser.get('https://one.newrelic.com')",
///         RuntimeTypeVersion = "100",
///         RuntimeType = "CHROME_BROWSER",
///         ScriptLanguage = "JAVASCRIPT",
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
///         EnableScreenshotOnFailureAndScript = false,
///         LocationPrivates = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorLocationPrivateArgs
///             {
///                 Guid = location.Id,
///                 VsePassword = "secret",
///             },
///         },
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.ScriptMonitorTagArgs
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
/// 		location, err := synthetics.NewPrivateLocation(ctx, "location", &synthetics.PrivateLocationArgs{
/// 			Description:             pulumi.String("Test Description"),
/// 			Name:                    pulumi.String("private_location"),
/// 			VerifiedScriptExecution: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewScriptMonitor(ctx, "monitor", &synthetics.ScriptMonitorArgs{
/// 			Status:             pulumi.String("ENABLED"),
/// 			Name:               pulumi.String("script_monitor"),
/// 			Type:               pulumi.String("SCRIPT_BROWSER"),
/// 			Period:             pulumi.String("EVERY_HOUR"),
/// 			Script:             pulumi.String("$browser.get('https://one.newrelic.com')"),
/// 			RuntimeTypeVersion: pulumi.String("100"),
/// 			RuntimeType:        pulumi.String("CHROME_BROWSER"),
/// 			ScriptLanguage:     pulumi.String("JAVASCRIPT"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			EnableScreenshotOnFailureAndScript: pulumi.Bool(false),
/// 			LocationPrivates: synthetics.ScriptMonitorLocationPrivateArray{
/// 				&synthetics.ScriptMonitorLocationPrivateArgs{
/// 					Guid:        location.ID(),
/// 					VsePassword: pulumi.String("secret"),
/// 				},
/// 			},
/// 			Tags: synthetics.ScriptMonitorTagArray{
/// 				&synthetics.ScriptMonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.ScriptMonitor;
/// import com.pulumi.newrelic.synthetics.ScriptMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorLocationPrivateArgs;
/// import com.pulumi.newrelic.synthetics.inputs.ScriptMonitorTagArgs;
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
///         var location = new PrivateLocation("location", PrivateLocationArgs.builder()
///             .description("Test Description")
///             .name("private_location")
///             .verifiedScriptExecution(true)
///             .build());
///
///         var monitor = new ScriptMonitor("monitor", ScriptMonitorArgs.builder()
///             .status("ENABLED")
///             .name("script_monitor")
///             .type("SCRIPT_BROWSER")
///             .period("EVERY_HOUR")
///             .script("$browser.get('https://one.newrelic.com')")
///             .runtimeTypeVersion("100")
///             .runtimeType("CHROME_BROWSER")
///             .scriptLanguage("JAVASCRIPT")
///             .devices(
///                 "DESKTOP",
///                 "MOBILE_PORTRAIT",
///                 "TABLET_LANDSCAPE")
///             .browsers("CHROME")
///             .enableScreenshotOnFailureAndScript(false)
///             .locationPrivates(ScriptMonitorLocationPrivateArgs.builder()
///                 .guid(location.id())
///                 .vsePassword("secret")
///                 .build())
///             .tags(ScriptMonitorTagArgs.builder()
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
///   location:
///     type: newrelic:synthetics:PrivateLocation
///     properties:
///       description: Test Description
///       name: private_location
///       verifiedScriptExecution: true
///   monitor:
///     type: newrelic:synthetics:ScriptMonitor
///     properties:
///       status: ENABLED
///       name: script_monitor
///       type: SCRIPT_BROWSER
///       period: EVERY_HOUR
///       script: $browser.get('https://one.newrelic.com')
///       runtimeTypeVersion: '100'
///       runtimeType: CHROME_BROWSER
///       scriptLanguage: JAVASCRIPT
///       devices:
///         - DESKTOP
///         - MOBILE_PORTRAIT
///         - TABLET_LANDSCAPE
///       browsers:
///         - CHROME
///       enableScreenshotOnFailureAndScript: false
///       locationPrivates:
///         - guid: ${location.id}
///           vsePassword: secret
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
///
/// ### Create a monitor and a secure credential
///
/// The following example shows how to use `depends_on` to create a monitor that uses a new secure credential.
/// The `depends_on` creates an explicit dependency between resources to ensure that the secure credential is created before the monitor that uses it.
///
/// &gt; **NOTE:** Use the `depends_on` when you are creating both monitor and its secure credentials together.
///
/// ##### Type: `SCRIPT_BROWSER`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const exampleCredential = new newrelic.synthetics.SecureCredential("example_credential", {
///     key: "TEST_SECURE_CREDENTIAL",
///     value: "some_value",
/// });
/// const exampleScriptMonitor = new newrelic.synthetics.ScriptMonitor("example_script_monitor", {
///     name: "script_monitor",
///     type: "SCRIPT_BROWSER",
///     period: "EVERY_HOUR",
///     locationsPublics: ["US_EAST_1"],
///     status: "ENABLED",
///     script: `      var assert = require('assert');
///       var secureCredential = secure.TEST_SECURE_CREDENTIAL;
/// `,
///     scriptLanguage: "JAVASCRIPT",
///     runtimeType: "CHROME_BROWSER",
///     runtimeTypeVersion: "100",
/// }, {
///     dependsOn: [exampleCredential],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example_credential = newrelic.synthetics.SecureCredential("example_credential",
///     key="TEST_SECURE_CREDENTIAL",
///     value="some_value")
/// example_script_monitor = newrelic.synthetics.ScriptMonitor("example_script_monitor",
///     name="script_monitor",
///     type="SCRIPT_BROWSER",
///     period="EVERY_HOUR",
///     locations_publics=["US_EAST_1"],
///     status="ENABLED",
///     script="""      var assert = require('assert');
///       var secureCredential = $secure.TEST_SECURE_CREDENTIAL;
/// """,
///     script_language="JAVASCRIPT",
///     runtime_type="CHROME_BROWSER",
///     runtime_type_version="100",
///     opts = pulumi.ResourceOptions(depends_on=[example_credential]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCredential = new NewRelic.Synthetics.SecureCredential("example_credential", new()
///     {
///         Key = "TEST_SECURE_CREDENTIAL",
///         Value = "some_value",
///     });
///
///     var exampleScriptMonitor = new NewRelic.Synthetics.ScriptMonitor("example_script_monitor", new()
///     {
///         Name = "script_monitor",
///         Type = "SCRIPT_BROWSER",
///         Period = "EVERY_HOUR",
///         LocationsPublics = new[]
///         {
///             "US_EAST_1",
///         },
///         Status = "ENABLED",
///         Script = @"      var assert = require('assert');
///       var secureCredential = $secure.TEST_SECURE_CREDENTIAL;
/// ",
///         ScriptLanguage = "JAVASCRIPT",
///         RuntimeType = "CHROME_BROWSER",
///         RuntimeTypeVersion = "100",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleCredential,
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
/// 		exampleCredential, err := synthetics.NewSecureCredential(ctx, "example_credential", &synthetics.SecureCredentialArgs{
/// 			Key:   pulumi.String("TEST_SECURE_CREDENTIAL"),
/// 			Value: pulumi.String("some_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewScriptMonitor(ctx, "example_script_monitor", &synthetics.ScriptMonitorArgs{
/// 			Name:   pulumi.String("script_monitor"),
/// 			Type:   pulumi.String("SCRIPT_BROWSER"),
/// 			Period: pulumi.String("EVERY_HOUR"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("US_EAST_1"),
/// 			},
/// 			Status:             pulumi.String("ENABLED"),
/// 			Script:             pulumi.String("      var assert = require('assert');\n      var secureCredential = $secure.TEST_SECURE_CREDENTIAL;\n"),
/// 			ScriptLanguage:     pulumi.String("JAVASCRIPT"),
/// 			RuntimeType:        pulumi.String("CHROME_BROWSER"),
/// 			RuntimeTypeVersion: pulumi.String("100"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleCredential,
/// 		}))
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
/// import com.pulumi.newrelic.synthetics.SecureCredential;
/// import com.pulumi.newrelic.synthetics.SecureCredentialArgs;
/// import com.pulumi.newrelic.synthetics.ScriptMonitor;
/// import com.pulumi.newrelic.synthetics.ScriptMonitorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleCredential = new SecureCredential("exampleCredential", SecureCredentialArgs.builder()
///             .key("TEST_SECURE_CREDENTIAL")
///             .value("some_value")
///             .build());
///
///         var exampleScriptMonitor = new ScriptMonitor("exampleScriptMonitor", ScriptMonitorArgs.builder()
///             .name("script_monitor")
///             .type("SCRIPT_BROWSER")
///             .period("EVERY_HOUR")
///             .locationsPublics("US_EAST_1")
///             .status("ENABLED")
///             .script("""
///       var assert = require('assert');
///       var secureCredential = $secure.TEST_SECURE_CREDENTIAL;
///             """)
///             .scriptLanguage("JAVASCRIPT")
///             .runtimeType("CHROME_BROWSER")
///             .runtimeTypeVersion("100")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleCredential)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleScriptMonitor:
///     type: newrelic:synthetics:ScriptMonitor
///     name: example_script_monitor
///     properties:
///       name: script_monitor
///       type: SCRIPT_BROWSER
///       period: EVERY_HOUR
///       locationsPublics:
///         - US_EAST_1
///       status: ENABLED
///       script: |2
///               var assert = require('assert');
///               var secureCredential = $secure.TEST_SECURE_CREDENTIAL;
///       scriptLanguage: JAVASCRIPT
///       runtimeType: CHROME_BROWSER
///       runtimeTypeVersion: '100'
///     options:
///       dependsOn:
///         - ${exampleCredential}
///   exampleCredential:
///     type: newrelic:synthetics:SecureCredential
///     name: example_credential
///     properties:
///       key: TEST_SECURE_CREDENTIAL
///       value: some_value
/// ```
///
///
/// ## Import
///
/// Synthetics monitor scripts can be imported using the `guid`, e.g.
///
/// ```bash
/// $ terraform import newrelic_synthetics_script_monitor.monitor <guid>
/// ```
class ScriptMonitor extends pulumi.CustomResource {
  /// The account in which the Synthetics monitor will be created.
  late final pulumi.Output<String> accountId;

  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  late final pulumi.Output<List<String>?> browsers;

  /// Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  late final pulumi.Output<String?> deviceOrientation;

  /// Device emulation type field. Valid values are `MOBILE` and `TABLET`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  late final pulumi.Output<String?> deviceType;

  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  late final pulumi.Output<List<String>?> devices;

  /// Capture a screenshot during job execution.
  late final pulumi.Output<bool?> enableScreenshotOnFailureAndScript;

  /// The unique entity identifier of the monitor in New Relic.
  late final pulumi.Output<String> guid;

  /// The location the monitor will run from. See Nested location_private blocks below for details. **At least one of either** `locations_public` **or** `location_private` **is required**.
  late final pulumi.Output<List<Map<String, dynamic>>?> locationPrivates;

  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. The `AWS_` prefix is not needed, as the provider uses NerdGraph. **At least one of either** `locations_public` **or** `location_private` **is required**.
  late final pulumi.Output<List<String>?> locationsPublics;

  /// The monitor id of the Synthetics script monitor (not to be confused with the GUID of the monitor).
  late final pulumi.Output<String> monitorId;

  /// The name for the monitor.
  late final pulumi.Output<String> name;

  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  late final pulumi.Output<String> period;

  /// The interval in minutes at which Synthetic monitor should run.
  late final pulumi.Output<int> periodInMinutes;

  /// The runtime that the monitor will use to run jobs. For the `SCRIPT_API` monitor type, a valid value is `NODE_API`. For the `SCRIPT_BROWSER` monitor type, a valid value is `CHROME_BROWSER`.
  late final pulumi.Output<String?> runtimeType_;

  /// The specific version of the runtime type selected. For the `SCRIPT_API` monitor type, a valid value is `16.10`, which corresponds to the version of Node.js. For the `SCRIPT_BROWSER` monitor type, a valid value is `100`, which corresponds to the version of the Chrome browser.
  late final pulumi.Output<String?> runtimeTypeVersion;

  /// The script that the monitor runs.
  late final pulumi.Output<String?> script;

  /// The programing language that should execute the script.
  late final pulumi.Output<String?> scriptLanguage;

  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  late final pulumi.Output<String> status;

  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  ///
  /// The `SCRIPTED_BROWSER` monitor type supports the following additional arguments:
  late final pulumi.Output<List<Map<String, dynamic>>?> tags;

  /// The plaintext representing the monitor script. Valid values are SCRIPT_BROWSER or SCRIPT_API
  late final pulumi.Output<String> type;

  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  late final pulumi.Output<bool?> useUnsupportedLegacyRuntime;

  /// Creates a new [ScriptMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScriptMonitor]. {@macro pulumi_synthetics_script_monitor_script_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScriptMonitor(
    String name, {
    ScriptMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:synthetics/scriptMonitor:ScriptMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    deviceOrientation = registerOutput<String?>('deviceOrientation');
    deviceType = registerOutput<String?>('deviceType');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>(
      'enableScreenshotOnFailureAndScript',
    );
    guid = registerOutput<String>('guid');
    locationPrivates = registerOutput<List<Map<String, dynamic>>?>(
      'locationPrivates',
    );
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    script = registerOutput<String?>('script');
    scriptLanguage = registerOutput<String?>('scriptLanguage');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    type = registerOutput<String>('type');
    useUnsupportedLegacyRuntime = registerOutput<bool?>(
      'useUnsupportedLegacyRuntime',
    );
  }

  /// Gets an existing [ScriptMonitor] resource's state with the given [name] and [id].
  static ScriptMonitor get(
    String name,
    pulumi.Input<String> id, {
    ScriptMonitorState? state,
  }) {
    return ScriptMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScriptMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:synthetics/scriptMonitor:ScriptMonitor',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    deviceOrientation = registerOutput<String?>('deviceOrientation');
    deviceType = registerOutput<String?>('deviceType');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>(
      'enableScreenshotOnFailureAndScript',
    );
    guid = registerOutput<String>('guid');
    locationPrivates = registerOutput<List<Map<String, dynamic>>?>(
      'locationPrivates',
    );
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    script = registerOutput<String?>('script');
    scriptLanguage = registerOutput<String?>('scriptLanguage');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    type = registerOutput<String>('type');
    useUnsupportedLegacyRuntime = registerOutput<bool?>(
      'useUnsupportedLegacyRuntime',
    );
  }
}
