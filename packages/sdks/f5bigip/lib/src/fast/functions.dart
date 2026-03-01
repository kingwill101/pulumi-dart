import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aws_service_discovery_args.dart';
import 'get_aws_service_discovery_result.dart';
import 'get_azure_service_discovery_args.dart';
import 'get_azure_service_discovery_result.dart';
import 'get_consul_service_discovery_args.dart';
import 'get_consul_service_discovery_result.dart';
import 'get_gce_service_discovery_args.dart';
import 'get_gce_service_discovery_result.dart';

/// Use this data source (`f5bigip.fast.getAwsServiceDiscovery`) to get the AWS Service discovery config to be used for `http`/`https` app deployment in FAST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const TC2 = f5bigip.fast.getAwsServiceDiscovery({
///     tagKey: "testawstagkey",
///     tagValue: "testawstagvalue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tc2 = f5bigip.fast.get_aws_service_discovery(tag_key="testawstagkey",
///     tag_value="testawstagvalue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var TC2 = F5BigIP.Fast.GetAwsServiceDiscovery.Invoke(new()
///     {
///         TagKey = "testawstagkey",
///         TagValue = "testawstagvalue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/fast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fast.GetAwsServiceDiscovery(ctx, &fast.GetAwsServiceDiscoveryArgs{
/// 			TagKey:   "testawstagkey",
/// 			TagValue: "testawstagvalue",
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
/// import com.pulumi.f5bigip.fast.FastFunctions;
/// import com.pulumi.f5bigip.fast.inputs.GetAwsServiceDiscoveryArgs;
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
///         final var TC2 = FastFunctions.getAwsServiceDiscovery(GetAwsServiceDiscoveryArgs.builder()
///             .tagKey("testawstagkey")
///             .tagValue("testawstagvalue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   TC2:
///     fn::invoke:
///       function: f5bigip:fast:getAwsServiceDiscovery
///       arguments:
///         tagKey: testawstagkey
///         tagValue: testawstagvalue
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fast_get_aws_service_discovery_get_aws_service_discovery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAwsServiceDiscoveryResult> getAwsServiceDiscovery(
  GetAwsServiceDiscoveryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:fast/getAwsServiceDiscovery:getAwsServiceDiscovery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAwsServiceDiscoveryResult.fromMap(result);
}

/// Use this data source (`f5bigip.fast.getAzureServiceDiscovery`) to get the Azure Service discovery config to be used for `http`/`https` app deployment in FAST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const TC3 = f5bigip.fast.getAzureServiceDiscovery({
///     resourceGroup: "testazurerg",
///     subscriptionId: "testazuresid",
///     tagKey: "testazuretag",
///     tagValue: "testazurevalue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tc3 = f5bigip.fast.get_azure_service_discovery(resource_group="testazurerg",
///     subscription_id="testazuresid",
///     tag_key="testazuretag",
///     tag_value="testazurevalue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var TC3 = F5BigIP.Fast.GetAzureServiceDiscovery.Invoke(new()
///     {
///         ResourceGroup = "testazurerg",
///         SubscriptionId = "testazuresid",
///         TagKey = "testazuretag",
///         TagValue = "testazurevalue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/fast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fast.GetAzureServiceDiscovery(ctx, &fast.GetAzureServiceDiscoveryArgs{
/// 			ResourceGroup:  "testazurerg",
/// 			SubscriptionId: "testazuresid",
/// 			TagKey:         pulumi.StringRef("testazuretag"),
/// 			TagValue:       pulumi.StringRef("testazurevalue"),
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
/// import com.pulumi.f5bigip.fast.FastFunctions;
/// import com.pulumi.f5bigip.fast.inputs.GetAzureServiceDiscoveryArgs;
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
///         final var TC3 = FastFunctions.getAzureServiceDiscovery(GetAzureServiceDiscoveryArgs.builder()
///             .resourceGroup("testazurerg")
///             .subscriptionId("testazuresid")
///             .tagKey("testazuretag")
///             .tagValue("testazurevalue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   TC3:
///     fn::invoke:
///       function: f5bigip:fast:getAzureServiceDiscovery
///       arguments:
///         resourceGroup: testazurerg
///         subscriptionId: testazuresid
///         tagKey: testazuretag
///         tagValue: testazurevalue
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fast_get_azure_service_discovery_get_azure_service_discovery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureServiceDiscoveryResult> getAzureServiceDiscovery(
  GetAzureServiceDiscoveryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:fast/getAzureServiceDiscovery:getAzureServiceDiscovery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureServiceDiscoveryResult.fromMap(result);
}

/// Use this data source (`f5bigip.fast.getConsulServiceDiscovery`) to get the Consul Service discovery config to be used for `http`/`https` app deployment in FAST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const TC2 = f5bigip.fast.getConsulServiceDiscovery({
///     uri: "https://192.0.2.100:8500/v1/catalog/nodes",
///     port: 8080,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tc2 = f5bigip.fast.get_consul_service_discovery(uri="https://192.0.2.100:8500/v1/catalog/nodes",
///     port=8080)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var TC2 = F5BigIP.Fast.GetConsulServiceDiscovery.Invoke(new()
///     {
///         Uri = "https://192.0.2.100:8500/v1/catalog/nodes",
///         Port = 8080,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/fast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fast.GetConsulServiceDiscovery(ctx, &fast.GetConsulServiceDiscoveryArgs{
/// 			Uri:  "https://192.0.2.100:8500/v1/catalog/nodes",
/// 			Port: 8080,
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
/// import com.pulumi.f5bigip.fast.FastFunctions;
/// import com.pulumi.f5bigip.fast.inputs.GetConsulServiceDiscoveryArgs;
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
///         final var TC2 = FastFunctions.getConsulServiceDiscovery(GetConsulServiceDiscoveryArgs.builder()
///             .uri("https://192.0.2.100:8500/v1/catalog/nodes")
///             .port(8080)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   TC2:
///     fn::invoke:
///       function: f5bigip:fast:getConsulServiceDiscovery
///       arguments:
///         uri: https://192.0.2.100:8500/v1/catalog/nodes
///         port: 8080
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fast_get_consul_service_discovery_get_consul_service_discovery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsulServiceDiscoveryResult> getConsulServiceDiscovery(
  GetConsulServiceDiscoveryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:fast/getConsulServiceDiscovery:getConsulServiceDiscovery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsulServiceDiscoveryResult.fromMap(result);
}

/// Use this data source (`f5bigip.fast.getGceServiceDiscovery`) to get the GCE Service discovery config to be used for `http`/`https` app deployment in FAST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const TC3 = f5bigip.fast.getGceServiceDiscovery({
///     tagKey: "testgcetag",
///     tagValue: "testgcevalue",
///     region: "testgceregion",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tc3 = f5bigip.fast.get_gce_service_discovery(tag_key="testgcetag",
///     tag_value="testgcevalue",
///     region="testgceregion")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var TC3 = F5BigIP.Fast.GetGceServiceDiscovery.Invoke(new()
///     {
///         TagKey = "testgcetag",
///         TagValue = "testgcevalue",
///         Region = "testgceregion",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/fast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fast.GetGceServiceDiscovery(ctx, &fast.GetGceServiceDiscoveryArgs{
/// 			TagKey:   "testgcetag",
/// 			TagValue: "testgcevalue",
/// 			Region:   "testgceregion",
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
/// import com.pulumi.f5bigip.fast.FastFunctions;
/// import com.pulumi.f5bigip.fast.inputs.GetGceServiceDiscoveryArgs;
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
///         final var TC3 = FastFunctions.getGceServiceDiscovery(GetGceServiceDiscoveryArgs.builder()
///             .tagKey("testgcetag")
///             .tagValue("testgcevalue")
///             .region("testgceregion")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   TC3:
///     fn::invoke:
///       function: f5bigip:fast:getGceServiceDiscovery
///       arguments:
///         tagKey: testgcetag
///         tagValue: testgcevalue
///         region: testgceregion
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fast_get_gce_service_discovery_get_gce_service_discovery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGceServiceDiscoveryResult> getGceServiceDiscovery(
  GetGceServiceDiscoveryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:fast/getGceServiceDiscovery:getGceServiceDiscovery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGceServiceDiscoveryResult.fromMap(result);
}
