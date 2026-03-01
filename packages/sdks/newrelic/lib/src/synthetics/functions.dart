import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_location_args.dart';
import 'get_private_location_result.dart';
import 'get_secure_credential_args.dart';
import 'get_secure_credential_result.dart';

/// Use this data source to get information about a specific Synthetics monitor private location in New Relic that already exists.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const example = newrelic.synthetics.getPrivateLocation({
///     accountId: "123456",
///     name: "My private location",
/// });
/// const foo = new newrelic.synthetics.Monitor("foo", {locationsPrivates: [example.then(example => example.id)]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example = newrelic.synthetics.get_private_location(account_id="123456",
///     name="My private location")
/// foo = newrelic.synthetics.Monitor("foo", locations_privates=[example.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = NewRelic.Synthetics.GetPrivateLocation.Invoke(new()
///     {
///         AccountId = "123456",
///         Name = "My private location",
///     });
///
///     var foo = new NewRelic.Synthetics.Monitor("foo", new()
///     {
///         LocationsPrivates = new[]
///         {
///             example.Apply(getPrivateLocationResult => getPrivateLocationResult.Id),
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
/// 		example, err := synthetics.LookupPrivateLocation(ctx, &synthetics.LookupPrivateLocationArgs{
/// 			AccountId: pulumi.StringRef("123456"),
/// 			Name:      "My private location",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewMonitor(ctx, "foo", &synthetics.MonitorArgs{
/// 			LocationsPrivates: pulumi.StringArray{
/// 				pulumi.String(example.Id),
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
/// import com.pulumi.newrelic.synthetics.SyntheticsFunctions;
/// import com.pulumi.newrelic.synthetics.inputs.GetPrivateLocationArgs;
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
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
///         final var example = SyntheticsFunctions.getPrivateLocation(GetPrivateLocationArgs.builder()
///             .accountId("123456")
///             .name("My private location")
///             .build());
///
///         var foo = new Monitor("foo", MonitorArgs.builder()
///             .locationsPrivates(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:Monitor
///     properties:
///       locationsPrivates:
///         - ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: newrelic:synthetics:getPrivateLocation
///       arguments:
///         accountId: 123456
///         name: My private location
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const example = newrelic.synthetics.getPrivateLocation({
///     accountId: "123456",
///     name: "My private location",
/// });
/// const foo = new newrelic.synthetics.StepMonitor("foo", {locationPrivates: [{
///     guid: example.then(example => example.id),
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example = newrelic.synthetics.get_private_location(account_id="123456",
///     name="My private location")
/// foo = newrelic.synthetics.StepMonitor("foo", location_privates=[{
///     "guid": example.id,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = NewRelic.Synthetics.GetPrivateLocation.Invoke(new()
///     {
///         AccountId = "123456",
///         Name = "My private location",
///     });
///
///     var foo = new NewRelic.Synthetics.StepMonitor("foo", new()
///     {
///         LocationPrivates = new[]
///         {
///             new NewRelic.Synthetics.Inputs.StepMonitorLocationPrivateArgs
///             {
///                 Guid = example.Apply(getPrivateLocationResult => getPrivateLocationResult.Id),
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
/// 		example, err := synthetics.LookupPrivateLocation(ctx, &synthetics.LookupPrivateLocationArgs{
/// 			AccountId: pulumi.StringRef("123456"),
/// 			Name:      "My private location",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewStepMonitor(ctx, "foo", &synthetics.StepMonitorArgs{
/// 			LocationPrivates: synthetics.StepMonitorLocationPrivateArray{
/// 				&synthetics.StepMonitorLocationPrivateArgs{
/// 					Guid: pulumi.String(example.Id),
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
/// import com.pulumi.newrelic.synthetics.SyntheticsFunctions;
/// import com.pulumi.newrelic.synthetics.inputs.GetPrivateLocationArgs;
/// import com.pulumi.newrelic.synthetics.StepMonitor;
/// import com.pulumi.newrelic.synthetics.StepMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.StepMonitorLocationPrivateArgs;
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
///         final var example = SyntheticsFunctions.getPrivateLocation(GetPrivateLocationArgs.builder()
///             .accountId("123456")
///             .name("My private location")
///             .build());
///
///         var foo = new StepMonitor("foo", StepMonitorArgs.builder()
///             .locationPrivates(StepMonitorLocationPrivateArgs.builder()
///                 .guid(example.id())
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
///       locationPrivates:
///         - guid: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: newrelic:synthetics:getPrivateLocation
///       arguments:
///         accountId: 123456
///         name: My private location
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_synthetics_get_private_location_get_private_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLocationResult> getPrivateLocation(
  GetPrivateLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:synthetics/getPrivateLocation:getPrivateLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLocationResult.fromMap(result);
}

/// Use this data source to get information about a specific Synthetics secure credential in New Relic that already exists.
///
/// Note that the secure credential's value is not returned as an attribute for security reasons.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.synthetics.getSecureCredential({
///     key: "MY_KEY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.get_secure_credential(key="MY_KEY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.Synthetics.GetSecureCredential.Invoke(new()
///     {
///         Key = "MY_KEY",
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
/// 		_, err := synthetics.LookupSecureCredential(ctx, &synthetics.LookupSecureCredentialArgs{
/// 			Key: "MY_KEY",
/// 		}, nil)
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
/// import com.pulumi.newrelic.synthetics.SyntheticsFunctions;
/// import com.pulumi.newrelic.synthetics.inputs.GetSecureCredentialArgs;
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
///         final var foo = SyntheticsFunctions.getSecureCredential(GetSecureCredentialArgs.builder()
///             .key("MY_KEY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:synthetics:getSecureCredential
///       arguments:
///         key: MY_KEY
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_synthetics_get_secure_credential_get_secure_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecureCredentialResult> getSecureCredential(
  GetSecureCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:synthetics/getSecureCredential:getSecureCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecureCredentialResult.fromMap(result);
}
