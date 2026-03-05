import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_state.dart';

/// Use this resource to create, update, and delete a Simple or Browser Synthetics Monitor in New Relic.
///
/// &gt; **IMPORTANT:**  The **Synthetics Legacy Runtime** has reached its &lt;b style="color:red;"&gt;end-of-life&lt;/b&gt; on &lt;b style="color:red;"&gt;October 22, 2024&lt;/b&gt;. As a consequence, using the legacy runtime or blank runtime values with Synthetic monitor requests from the New Relic Terraform Provider will result in API errors. Starting with **v3.51.0** of the New Relic Terraform Provider, configurations of Synthetic monitors without runtime attributes or comprising legacy runtime values will be deemed invalid.
/// &lt;br&gt;&lt;br&gt;
/// If your Synthetic monitors' configuration is not updated already with new runtime values, upgrade as soon as possible to avoid these consequences. For more details and instructions, please see the detailed warning against `runtime_type` and `runtime_type_version` in the **Argument Reference** section.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const monitor = new newrelic.synthetics.Monitor("monitor", {
///     status: "ENABLED",
///     name: "monitor",
///     period: "EVERY_MINUTE",
///     uri: "https://www.one.newrelic.com",
///     type: "SIMPLE",
///     locationsPublics: ["AP_SOUTH_1"],
///     customHeaders: [{
///         name: "some_name",
///         value: "some_value",
///     }],
///     treatRedirectAsFailure: true,
///     validationString: "success",
///     bypassHeadRequest: true,
///     verifySsl: true,
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
/// monitor = newrelic.synthetics.Monitor("monitor",
///     status="ENABLED",
///     name="monitor",
///     period="EVERY_MINUTE",
///     uri="https://www.one.newrelic.com",
///     type="SIMPLE",
///     locations_publics=["AP_SOUTH_1"],
///     custom_headers=[{
///         "name": "some_name",
///         "value": "some_value",
///     }],
///     treat_redirect_as_failure=True,
///     validation_string="success",
///     bypass_head_request=True,
///     verify_ssl=True,
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
///     var monitor = new NewRelic.Synthetics.Monitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "monitor",
///         Period = "EVERY_MINUTE",
///         Uri = "https://www.one.newrelic.com",
///         Type = "SIMPLE",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///         },
///         CustomHeaders = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorCustomHeaderArgs
///             {
///                 Name = "some_name",
///                 Value = "some_value",
///             },
///         },
///         TreatRedirectAsFailure = true,
///         ValidationString = "success",
///         BypassHeadRequest = true,
///         VerifySsl = true,
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorTagArgs
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
/// 		_, err := synthetics.NewMonitor(ctx, "monitor", &synthetics.MonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("monitor"),
/// 			Period: pulumi.String("EVERY_MINUTE"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 			Type:   pulumi.String("SIMPLE"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 			},
/// 			CustomHeaders: synthetics.MonitorCustomHeaderArray{
/// 				&synthetics.MonitorCustomHeaderArgs{
/// 					Name:  pulumi.String("some_name"),
/// 					Value: pulumi.String("some_value"),
/// 				},
/// 			},
/// 			TreatRedirectAsFailure: pulumi.Bool(true),
/// 			ValidationString:       pulumi.String("success"),
/// 			BypassHeadRequest:      pulumi.Bool(true),
/// 			VerifySsl:              pulumi.Bool(true),
/// 			Tags: synthetics.MonitorTagArray{
/// 				&synthetics.MonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .status("ENABLED")
///             .name("monitor")
///             .period("EVERY_MINUTE")
///             .uri("https://www.one.newrelic.com")
///             .type("SIMPLE")
///             .locationsPublics("AP_SOUTH_1")
///             .customHeaders(MonitorCustomHeaderArgs.builder()
///                 .name("some_name")
///                 .value("some_value")
///                 .build())
///             .treatRedirectAsFailure(true)
///             .validationString("success")
///             .bypassHeadRequest(true)
///             .verifySsl(true)
///             .tags(MonitorTagArgs.builder()
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
///     type: newrelic:synthetics:Monitor
///     properties:
///       status: ENABLED
///       name: monitor
///       period: EVERY_MINUTE
///       uri: https://www.one.newrelic.com
///       type: SIMPLE
///       locationsPublics:
///         - AP_SOUTH_1
///       customHeaders:
///         - name: some_name
///           value: some_value
///       treatRedirectAsFailure: true
///       validationString: success
///       bypassHeadRequest: true
///       verifySsl: true
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// ##### Type: `SIMPLE BROWSER`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const monitor = new newrelic.synthetics.Monitor("monitor", {
///     status: "ENABLED",
///     name: "monitor",
///     period: "EVERY_MINUTE",
///     uri: "https://www.one.newrelic.com",
///     type: "BROWSER",
///     locationsPublics: ["AP_SOUTH_1"],
///     enableScreenshotOnFailureAndScript: true,
///     validationString: "success",
///     verifySsl: true,
///     runtimeType: "CHROME_BROWSER",
///     runtimeTypeVersion: "100",
///     scriptLanguage: "JAVASCRIPT",
///     devices: [
///         "DESKTOP",
///         "TABLET_LANDSCAPE",
///         "MOBILE_PORTRAIT",
///     ],
///     browsers: ["CHROME"],
///     customHeaders: [{
///         name: "some_name",
///         value: "some_value",
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
/// monitor = newrelic.synthetics.Monitor("monitor",
///     status="ENABLED",
///     name="monitor",
///     period="EVERY_MINUTE",
///     uri="https://www.one.newrelic.com",
///     type="BROWSER",
///     locations_publics=["AP_SOUTH_1"],
///     enable_screenshot_on_failure_and_script=True,
///     validation_string="success",
///     verify_ssl=True,
///     runtime_type="CHROME_BROWSER",
///     runtime_type_version="100",
///     script_language="JAVASCRIPT",
///     devices=[
///         "DESKTOP",
///         "TABLET_LANDSCAPE",
///         "MOBILE_PORTRAIT",
///     ],
///     browsers=["CHROME"],
///     custom_headers=[{
///         "name": "some_name",
///         "value": "some_value",
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
///     var monitor = new NewRelic.Synthetics.Monitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "monitor",
///         Period = "EVERY_MINUTE",
///         Uri = "https://www.one.newrelic.com",
///         Type = "BROWSER",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///         },
///         EnableScreenshotOnFailureAndScript = true,
///         ValidationString = "success",
///         VerifySsl = true,
///         RuntimeType = "CHROME_BROWSER",
///         RuntimeTypeVersion = "100",
///         ScriptLanguage = "JAVASCRIPT",
///         Devices = new[]
///         {
///             "DESKTOP",
///             "TABLET_LANDSCAPE",
///             "MOBILE_PORTRAIT",
///         },
///         Browsers = new[]
///         {
///             "CHROME",
///         },
///         CustomHeaders = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorCustomHeaderArgs
///             {
///                 Name = "some_name",
///                 Value = "some_value",
///             },
///         },
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorTagArgs
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
/// 		_, err := synthetics.NewMonitor(ctx, "monitor", &synthetics.MonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("monitor"),
/// 			Period: pulumi.String("EVERY_MINUTE"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 			Type:   pulumi.String("BROWSER"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 			},
/// 			EnableScreenshotOnFailureAndScript: pulumi.Bool(true),
/// 			ValidationString:                   pulumi.String("success"),
/// 			VerifySsl:                          pulumi.Bool(true),
/// 			RuntimeType:                        pulumi.String("CHROME_BROWSER"),
/// 			RuntimeTypeVersion:                 pulumi.String("100"),
/// 			ScriptLanguage:                     pulumi.String("JAVASCRIPT"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			CustomHeaders: synthetics.MonitorCustomHeaderArray{
/// 				&synthetics.MonitorCustomHeaderArgs{
/// 					Name:  pulumi.String("some_name"),
/// 					Value: pulumi.String("some_value"),
/// 				},
/// 			},
/// 			Tags: synthetics.MonitorTagArray{
/// 				&synthetics.MonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .status("ENABLED")
///             .name("monitor")
///             .period("EVERY_MINUTE")
///             .uri("https://www.one.newrelic.com")
///             .type("BROWSER")
///             .locationsPublics("AP_SOUTH_1")
///             .enableScreenshotOnFailureAndScript(true)
///             .validationString("success")
///             .verifySsl(true)
///             .runtimeType("CHROME_BROWSER")
///             .runtimeTypeVersion("100")
///             .scriptLanguage("JAVASCRIPT")
///             .devices(
///                 "DESKTOP",
///                 "TABLET_LANDSCAPE",
///                 "MOBILE_PORTRAIT")
///             .browsers("CHROME")
///             .customHeaders(MonitorCustomHeaderArgs.builder()
///                 .name("some_name")
///                 .value("some_value")
///                 .build())
///             .tags(MonitorTagArgs.builder()
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
///     type: newrelic:synthetics:Monitor
///     properties:
///       status: ENABLED
///       name: monitor
///       period: EVERY_MINUTE
///       uri: https://www.one.newrelic.com
///       type: BROWSER
///       locationsPublics:
///         - AP_SOUTH_1
///       enableScreenshotOnFailureAndScript: true
///       validationString: success
///       verifySsl: true
///       runtimeType: CHROME_BROWSER
///       runtimeTypeVersion: '100'
///       scriptLanguage: JAVASCRIPT
///       devices:
///         - DESKTOP
///         - TABLET_LANDSCAPE
///         - MOBILE_PORTRAIT
///       browsers:
///         - CHROME
///       customHeaders:
///         - name: some_name
///           value: some_value
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
/// ##### Type: `SIMPLE`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const location = new newrelic.synthetics.PrivateLocation("location", {
///     description: "Example private location",
///     name: "private_location",
///     verifiedScriptExecution: false,
/// });
/// const monitor = new newrelic.synthetics.Monitor("monitor", {
///     status: "ENABLED",
///     name: "monitor",
///     period: "EVERY_MINUTE",
///     uri: "https://www.one.newrelic.com",
///     type: "SIMPLE",
///     locationsPrivates: [location.id],
///     customHeaders: [{
///         name: "some_name",
///         value: "some_value",
///     }],
///     treatRedirectAsFailure: true,
///     validationString: "success",
///     bypassHeadRequest: true,
///     verifySsl: true,
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
///     verified_script_execution=False)
/// monitor = newrelic.synthetics.Monitor("monitor",
///     status="ENABLED",
///     name="monitor",
///     period="EVERY_MINUTE",
///     uri="https://www.one.newrelic.com",
///     type="SIMPLE",
///     locations_privates=[location.id],
///     custom_headers=[{
///         "name": "some_name",
///         "value": "some_value",
///     }],
///     treat_redirect_as_failure=True,
///     validation_string="success",
///     bypass_head_request=True,
///     verify_ssl=True,
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
///         VerifiedScriptExecution = false,
///     });
///
///     var monitor = new NewRelic.Synthetics.Monitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Name = "monitor",
///         Period = "EVERY_MINUTE",
///         Uri = "https://www.one.newrelic.com",
///         Type = "SIMPLE",
///         LocationsPrivates = new[]
///         {
///             location.Id,
///         },
///         CustomHeaders = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorCustomHeaderArgs
///             {
///                 Name = "some_name",
///                 Value = "some_value",
///             },
///         },
///         TreatRedirectAsFailure = true,
///         ValidationString = "success",
///         BypassHeadRequest = true,
///         VerifySsl = true,
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorTagArgs
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
/// 			VerifiedScriptExecution: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewMonitor(ctx, "monitor", &synthetics.MonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("monitor"),
/// 			Period: pulumi.String("EVERY_MINUTE"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 			Type:   pulumi.String("SIMPLE"),
/// 			LocationsPrivates: pulumi.StringArray{
/// 				location.ID(),
/// 			},
/// 			CustomHeaders: synthetics.MonitorCustomHeaderArray{
/// 				&synthetics.MonitorCustomHeaderArgs{
/// 					Name:  pulumi.String("some_name"),
/// 					Value: pulumi.String("some_value"),
/// 				},
/// 			},
/// 			TreatRedirectAsFailure: pulumi.Bool(true),
/// 			ValidationString:       pulumi.String("success"),
/// 			BypassHeadRequest:      pulumi.Bool(true),
/// 			VerifySsl:              pulumi.Bool(true),
/// 			Tags: synthetics.MonitorTagArray{
/// 				&synthetics.MonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
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
///             .verifiedScriptExecution(false)
///             .build());
///
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .status("ENABLED")
///             .name("monitor")
///             .period("EVERY_MINUTE")
///             .uri("https://www.one.newrelic.com")
///             .type("SIMPLE")
///             .locationsPrivates(location.id())
///             .customHeaders(MonitorCustomHeaderArgs.builder()
///                 .name("some_name")
///                 .value("some_value")
///                 .build())
///             .treatRedirectAsFailure(true)
///             .validationString("success")
///             .bypassHeadRequest(true)
///             .verifySsl(true)
///             .tags(MonitorTagArgs.builder()
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
///       verifiedScriptExecution: false
///   monitor:
///     type: newrelic:synthetics:Monitor
///     properties:
///       status: ENABLED
///       name: monitor
///       period: EVERY_MINUTE
///       uri: https://www.one.newrelic.com
///       type: SIMPLE
///       locationsPrivates:
///         - ${location.id}
///       customHeaders:
///         - name: some_name
///           value: some_value
///       treatRedirectAsFailure: true
///       validationString: success
///       bypassHeadRequest: true
///       verifySsl: true
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// ##### Type: `BROWSER`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const location = new newrelic.synthetics.PrivateLocation("location", {
///     description: "Example private location",
///     name: "private-location",
///     verifiedScriptExecution: false,
/// });
/// const monitor = new newrelic.synthetics.Monitor("monitor", {
///     status: "ENABLED",
///     type: "BROWSER",
///     uri: "https://www.one.newrelic.com",
///     name: "monitor",
///     period: "EVERY_MINUTE",
///     locationsPrivates: [location.id],
///     enableScreenshotOnFailureAndScript: true,
///     validationString: "success",
///     verifySsl: true,
///     runtimeTypeVersion: "100",
///     runtimeType: "CHROME_BROWSER",
///     scriptLanguage: "JAVASCRIPT",
///     devices: [
///         "DESKTOP",
///         "TABLET_LANDSCAPE",
///         "MOBILE_PORTRAIT",
///     ],
///     browsers: ["CHROME"],
///     customHeaders: [{
///         name: "some_name",
///         value: "some_value",
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
///     description="Example private location",
///     name="private-location",
///     verified_script_execution=False)
/// monitor = newrelic.synthetics.Monitor("monitor",
///     status="ENABLED",
///     type="BROWSER",
///     uri="https://www.one.newrelic.com",
///     name="monitor",
///     period="EVERY_MINUTE",
///     locations_privates=[location.id],
///     enable_screenshot_on_failure_and_script=True,
///     validation_string="success",
///     verify_ssl=True,
///     runtime_type_version="100",
///     runtime_type="CHROME_BROWSER",
///     script_language="JAVASCRIPT",
///     devices=[
///         "DESKTOP",
///         "TABLET_LANDSCAPE",
///         "MOBILE_PORTRAIT",
///     ],
///     browsers=["CHROME"],
///     custom_headers=[{
///         "name": "some_name",
///         "value": "some_value",
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
///         Description = "Example private location",
///         Name = "private-location",
///         VerifiedScriptExecution = false,
///     });
///
///     var monitor = new NewRelic.Synthetics.Monitor("monitor", new()
///     {
///         Status = "ENABLED",
///         Type = "BROWSER",
///         Uri = "https://www.one.newrelic.com",
///         Name = "monitor",
///         Period = "EVERY_MINUTE",
///         LocationsPrivates = new[]
///         {
///             location.Id,
///         },
///         EnableScreenshotOnFailureAndScript = true,
///         ValidationString = "success",
///         VerifySsl = true,
///         RuntimeTypeVersion = "100",
///         RuntimeType = "CHROME_BROWSER",
///         ScriptLanguage = "JAVASCRIPT",
///         Devices = new[]
///         {
///             "DESKTOP",
///             "TABLET_LANDSCAPE",
///             "MOBILE_PORTRAIT",
///         },
///         Browsers = new[]
///         {
///             "CHROME",
///         },
///         CustomHeaders = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorCustomHeaderArgs
///             {
///                 Name = "some_name",
///                 Value = "some_value",
///             },
///         },
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorTagArgs
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
/// 			Name:                    pulumi.String("private-location"),
/// 			VerifiedScriptExecution: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewMonitor(ctx, "monitor", &synthetics.MonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Type:   pulumi.String("BROWSER"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 			Name:   pulumi.String("monitor"),
/// 			Period: pulumi.String("EVERY_MINUTE"),
/// 			LocationsPrivates: pulumi.StringArray{
/// 				location.ID(),
/// 			},
/// 			EnableScreenshotOnFailureAndScript: pulumi.Bool(true),
/// 			ValidationString:                   pulumi.String("success"),
/// 			VerifySsl:                          pulumi.Bool(true),
/// 			RuntimeTypeVersion:                 pulumi.String("100"),
/// 			RuntimeType:                        pulumi.String("CHROME_BROWSER"),
/// 			ScriptLanguage:                     pulumi.String("JAVASCRIPT"),
/// 			Devices: pulumi.StringArray{
/// 				pulumi.String("DESKTOP"),
/// 				pulumi.String("TABLET_LANDSCAPE"),
/// 				pulumi.String("MOBILE_PORTRAIT"),
/// 			},
/// 			Browsers: pulumi.StringArray{
/// 				pulumi.String("CHROME"),
/// 			},
/// 			CustomHeaders: synthetics.MonitorCustomHeaderArray{
/// 				&synthetics.MonitorCustomHeaderArgs{
/// 					Name:  pulumi.String("some_name"),
/// 					Value: pulumi.String("some_value"),
/// 				},
/// 			},
/// 			Tags: synthetics.MonitorTagArray{
/// 				&synthetics.MonitorTagArgs{
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
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
///             .name("private-location")
///             .verifiedScriptExecution(false)
///             .build());
///
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .status("ENABLED")
///             .type("BROWSER")
///             .uri("https://www.one.newrelic.com")
///             .name("monitor")
///             .period("EVERY_MINUTE")
///             .locationsPrivates(location.id())
///             .enableScreenshotOnFailureAndScript(true)
///             .validationString("success")
///             .verifySsl(true)
///             .runtimeTypeVersion("100")
///             .runtimeType("CHROME_BROWSER")
///             .scriptLanguage("JAVASCRIPT")
///             .devices(
///                 "DESKTOP",
///                 "TABLET_LANDSCAPE",
///                 "MOBILE_PORTRAIT")
///             .browsers("CHROME")
///             .customHeaders(MonitorCustomHeaderArgs.builder()
///                 .name("some_name")
///                 .value("some_value")
///                 .build())
///             .tags(MonitorTagArgs.builder()
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
///       name: private-location
///       verifiedScriptExecution: false
///   monitor:
///     type: newrelic:synthetics:Monitor
///     properties:
///       status: ENABLED
///       type: BROWSER
///       uri: https://www.one.newrelic.com
///       name: monitor
///       period: EVERY_MINUTE
///       locationsPrivates:
///         - ${location.id}
///       enableScreenshotOnFailureAndScript: true
///       validationString: success
///       verifySsl: true
///       runtimeTypeVersion: '100'
///       runtimeType: CHROME_BROWSER
///       scriptLanguage: JAVASCRIPT
///       devices:
///         - DESKTOP
///         - TABLET_LANDSCAPE
///         - MOBILE_PORTRAIT
///       browsers:
///         - CHROME
///       customHeaders:
///         - name: some_name
///           value: some_value
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
///
/// ## Import
///
/// Synthetics monitor can be imported using the `guid`, e.g.
///
/// ```bash
/// $ terraform import newrelic_synthetics_monitor.monitor <guid>
/// ```
class Monitor extends pulumi.CustomResource {
  /// The account in which the Synthetics monitor will be created.
  late final pulumi.Output<String> accountId;
  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  late final pulumi.Output<List<String>?> browsers;
  /// Monitor should skip default HEAD request and instead use GET verb in check.
  ///
  /// The `BROWSER` monitor type supports the following additional arguments:
  late final pulumi.Output<bool?> bypassHeadRequest;
  /// Custom headers to use in monitor job. See Nested custom_header blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> customHeaders;
  /// Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`.
  /// * We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  late final pulumi.Output<String?> deviceOrientation;
  /// Device emulation type field. Valid values are `MOBILE` and `TABLET`.
  /// * We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  late final pulumi.Output<String?> deviceType;
  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  late final pulumi.Output<List<String>?> devices;
  /// Capture a screenshot during job execution.
  late final pulumi.Output<bool?> enableScreenshotOnFailureAndScript;
  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  late final pulumi.Output<List<String>?> locationsPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  late final pulumi.Output<List<String>?> locationsPublics;
  /// The monitor id of the Synthetics monitor (not to be confused with the GUID of the monitor).
  late final pulumi.Output<String> monitorId;
  /// The human-readable identifier for the monitor.
  late final pulumi.Output<String> name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  late final pulumi.Output<String> period;
  /// The interval in minutes at which Synthetic monitor should run.
  late final pulumi.Output<int> periodInMinutes;
  /// The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  late final pulumi.Output<String?> runtimeType_;
  /// The specific version of the runtime type selected (`100`).
  late final pulumi.Output<String?> runtimeTypeVersion;
  /// The programing language that should execute the script.
  late final pulumi.Output<String?> scriptLanguage;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  late final pulumi.Output<String> status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  ///
  /// The `SIMPLE` monitor type supports the following additional arguments:
  late final pulumi.Output<List<Map<String, dynamic>>?> tags;
  /// Categorize redirects during a monitor job as a failure.
  late final pulumi.Output<bool?> treatRedirectAsFailure;
  /// The monitor type. Valid values are `SIMPLE` and `BROWSER`.
  late final pulumi.Output<String> type;
  /// The URI the monitor runs against.
  late final pulumi.Output<String?> uri;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  late final pulumi.Output<bool?> useUnsupportedLegacyRuntime;
  /// Validation text for monitor to search for at given URI.
  late final pulumi.Output<String?> validationString;
  /// Monitor should validate SSL certificate chain.
  late final pulumi.Output<bool?> verifySsl;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_synthetics_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    bypassHeadRequest = registerOutput<bool?>('bypassHeadRequest');
    customHeaders = registerOutput<List<Map<String, dynamic>>?>('customHeaders');
    deviceOrientation = registerOutput<String?>('deviceOrientation');
    deviceType = registerOutput<String?>('deviceType');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>('enableScreenshotOnFailureAndScript');
    locationsPrivates = registerOutput<List<String>?>('locationsPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    scriptLanguage = registerOutput<String?>('scriptLanguage');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    treatRedirectAsFailure = registerOutput<bool?>('treatRedirectAsFailure');
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
    useUnsupportedLegacyRuntime = registerOutput<bool?>('useUnsupportedLegacyRuntime');
    validationString = registerOutput<String?>('validationString');
    verifySsl = registerOutput<bool?>('verifySsl');
  }

  /// Gets an existing [Monitor] resource's state with the given [name] and [id].
  static Monitor get(
    String name,
    pulumi.Input<String> id, {
    MonitorState? state,
  }) {
    return Monitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Monitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    browsers = registerOutput<List<String>?>('browsers');
    bypassHeadRequest = registerOutput<bool?>('bypassHeadRequest');
    customHeaders = registerOutput<List<Map<String, dynamic>>?>('customHeaders');
    deviceOrientation = registerOutput<String?>('deviceOrientation');
    deviceType = registerOutput<String?>('deviceType');
    devices = registerOutput<List<String>?>('devices');
    enableScreenshotOnFailureAndScript = registerOutput<bool?>('enableScreenshotOnFailureAndScript');
    locationsPrivates = registerOutput<List<String>?>('locationsPrivates');
    locationsPublics = registerOutput<List<String>?>('locationsPublics');
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    period = registerOutput<String>('period');
    periodInMinutes = registerOutput<int>('periodInMinutes');
    runtimeType_ = registerOutput<String?>('runtimeType');
    runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    scriptLanguage = registerOutput<String?>('scriptLanguage');
    status = registerOutput<String>('status');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    treatRedirectAsFailure = registerOutput<bool?>('treatRedirectAsFailure');
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
    useUnsupportedLegacyRuntime = registerOutput<bool?>('useUnsupportedLegacyRuntime');
    validationString = registerOutput<String?>('validationString');
    verifySsl = registerOutput<bool?>('verifySsl');
  }
}
