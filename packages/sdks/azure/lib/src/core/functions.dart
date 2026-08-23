import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_config_result.dart';
import 'get_extended_locations_args.dart';
import 'get_extended_locations_result.dart';
import 'get_location_args.dart';
import 'get_location_result.dart';
import 'get_resource_group_args.dart';
import 'get_resource_group_result.dart';
import 'get_resource_group_template_deployment_args.dart';
import 'get_resource_group_template_deployment_result.dart';
import 'get_resources_args.dart';
import 'get_resources_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_subscription_template_deployment_args.dart';
import 'get_subscription_template_deployment_result.dart';
import 'get_subscriptions_args.dart';
import 'get_subscriptions_result.dart';
import 'get_template_spec_version_args.dart';
import 'get_template_spec_version_result.dart';
import 'get_tenant_template_deployment_args.dart';
import 'get_tenant_template_deployment_result.dart';
import 'get_user_assigned_identity_args.dart';
import 'get_user_assigned_identity_result.dart';

/// Use this data source to access the configuration of the AzureRM provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// export const accountId = current.then(current => current.clientId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// pulumi.export("accountId", current.client_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["accountId"] = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accountId", current.ClientId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// output "accountId" {
///   value = data.azure_core_getclientconfig.current.client_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("accountId", current.clientId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// outputs:
///   accountId: ${current.clientId}
/// ```
/// [options] Invoke options controlling this call.
Future<GetClientConfigResult> getClientConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}

/// This data source return the available Extended Locations for a specific Azure Region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getExtendedLocations({
///     location: "West Europe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_extended_locations(location="West Europe")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetExtendedLocations.Invoke(new()
///     {
///         Location = "West Europe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.GetExtendedLocations(ctx, &core.GetExtendedLocationsArgs{
/// 			Location: "West Europe",
/// 		}, nil)
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getextendedlocations" "example" {
///   location = "West Europe"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetExtendedLocationsArgs;
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
///         final var example = CoreFunctions.getExtendedLocations(GetExtendedLocationsArgs.builder()
///             .location("West Europe")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getExtendedLocations
///       arguments:
///         location: West Europe
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_extended_locations_get_extended_locations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtendedLocationsResult> getExtendedLocations(
  GetExtendedLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getExtendedLocations:getExtendedLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtendedLocationsResult.fromMap(result);
}

/// Use this data source to access information of a specific physical location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getLocation({
///     location: "West Europe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_location(location="West Europe")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetLocation.Invoke(new()
///     {
///         Location = "West Europe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.GetLocation(ctx, &core.GetLocationArgs{
/// 			Location: "West Europe",
/// 		}, nil)
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getlocation" "example" {
///   location = "West Europe"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetLocationArgs;
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
///         final var example = CoreFunctions.getLocation(GetLocationArgs.builder()
///             .location("West Europe")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getLocation
///       arguments:
///         location: West Europe
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_location_get_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationResult> getLocation(
  GetLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getLocation:getLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationResult.fromMap(result);
}

/// Use this data source to access information about an existing Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getResourceGroup({
///     name: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_resource_group(name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetResourceGroup.Invoke(new()
///     {
///         Name = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResourceGroupResult => getResourceGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupResourceGroup(ctx, &core.LookupResourceGroupArgs{
/// 			Name: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getresourcegroup" "example" {
///   name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_core_getresourcegroup.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetResourceGroupArgs;
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
///         final var example = CoreFunctions.getResourceGroup(GetResourceGroupArgs.builder()
///             .name("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getResourceGroup
///       arguments:
///         name: existing
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_resource_group_get_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGroupResult> getResourceGroup(
  GetResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getResourceGroup:getResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Resource Group Template Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.core.getResourceGroupTemplateDeployment({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const exampleOutput = example.then(example => std.jsondecode({
///     input: example.outputContent,
/// })).then(invoke => invoke.result?.exampleOutput?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.get_resource_group_template_deployment(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("exampleOutput", std.jsondecode(input=example.output_content).result["exampleOutput"]["value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetResourceGroupTemplateDeployment.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResourceGroupTemplateDeploymentResult => getResourceGroupTemplateDeploymentResult.Id),
///         ["exampleOutput"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getResourceGroupTemplateDeploymentResult => getResourceGroupTemplateDeploymentResult.OutputContent),
///         }).Apply(invoke => invoke.Result?.ExampleOutput?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupResourceGroupTemplateDeployment(ctx, &core.LookupResourceGroupTemplateDeploymentArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("exampleOutput", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.OutputContent,
/// 		}, nil).Result.ExampleOutput.Value))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_core_getresourcegrouptemplatedeployment" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_core_getresourcegrouptemplatedeployment.example.id
/// }
/// output "exampleOutput" {
///   value = jsondecode(data.azure_core_getresourcegrouptemplatedeployment.example.output_content).example_output.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetResourceGroupTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = CoreFunctions.getResourceGroupTemplateDeployment(GetResourceGroupTemplateDeploymentArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("exampleOutput", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.outputContent())
///             .build()).result().exampleOutput().value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getResourceGroupTemplateDeployment
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
///   exampleOutput:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.outputContent}
///       return: result.exampleOutput.value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_resource_group_template_deployment_get_resource_group_template_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGroupTemplateDeploymentResult> getResourceGroupTemplateDeployment(
  GetResourceGroupTemplateDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getResourceGroupTemplateDeployment:getResourceGroupTemplateDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGroupTemplateDeploymentResult.fromMap(result);
}

/// Use this data source to access information about existing resources.
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_resources_get_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcesResult> getResources(
  GetResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getResources:getResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcesResult.fromMap(result);
}

/// Use this data source to access information about an existing Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// export const currentSubscriptionDisplayName = current.then(current => current.displayName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// pulumi.export("currentSubscriptionDisplayName", current.display_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["currentSubscriptionDisplayName"] = current.Apply(getSubscriptionResult => getSubscriptionResult.DisplayName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("currentSubscriptionDisplayName", current.DisplayName)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getsubscription" "current" {
/// }
///
/// output "currentSubscriptionDisplayName" {
///   value = data.azure_core_getsubscription.current.display_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         ctx.export("currentSubscriptionDisplayName", current.displayName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// outputs:
///   currentSubscriptionDisplayName: ${current.displayName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_subscription_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getSubscription:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Use this data source to access information about an existing Subscription Template Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.core.getSubscriptionTemplateDeployment({
///     name: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const exampleOutput = example.then(example => std.jsondecode({
///     input: example.outputContent,
/// })).then(invoke => invoke.result?.exampleOutput?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.get_subscription_template_deployment(name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("exampleOutput", std.jsondecode(input=example.output_content).result["exampleOutput"]["value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetSubscriptionTemplateDeployment.Invoke(new()
///     {
///         Name = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSubscriptionTemplateDeploymentResult => getSubscriptionTemplateDeploymentResult.Id),
///         ["exampleOutput"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getSubscriptionTemplateDeploymentResult => getSubscriptionTemplateDeploymentResult.OutputContent),
///         }).Apply(invoke => invoke.Result?.ExampleOutput?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupSubscriptionTemplateDeployment(ctx, &core.LookupSubscriptionTemplateDeploymentArgs{
/// 			Name: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("exampleOutput", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.OutputContent,
/// 		}, nil).Result.ExampleOutput.Value))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_core_getsubscriptiontemplatedeployment" "example" {
///   name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_core_getsubscriptiontemplatedeployment.example.id
/// }
/// output "exampleOutput" {
///   value = jsondecode(data.azure_core_getsubscriptiontemplatedeployment.example.output_content).example_output.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = CoreFunctions.getSubscriptionTemplateDeployment(GetSubscriptionTemplateDeploymentArgs.builder()
///             .name("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("exampleOutput", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.outputContent())
///             .build()).result().exampleOutput().value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getSubscriptionTemplateDeployment
///       arguments:
///         name: existing
/// outputs:
///   id: ${example.id}
///   exampleOutput:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.outputContent}
///       return: result.exampleOutput.value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_subscription_template_deployment_get_subscription_template_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionTemplateDeploymentResult> getSubscriptionTemplateDeployment(
  GetSubscriptionTemplateDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getSubscriptionTemplateDeployment:getSubscriptionTemplateDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionTemplateDeploymentResult.fromMap(result);
}

/// Use this data source to access information about all the Subscriptions currently available.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const available = azure.core.getSubscriptions({});
/// export const availableSubscriptions = available.then(available => available.subscriptions);
/// export const firstAvailableSubscriptionDisplayName = available.then(available => available.subscriptions?.[0]?.displayName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// available = azure.core.get_subscriptions()
/// pulumi.export("availableSubscriptions", available.subscriptions)
/// pulumi.export("firstAvailableSubscriptionDisplayName", available.subscriptions[0].display_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Azure.Core.GetSubscriptions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["availableSubscriptions"] = available.Apply(getSubscriptionsResult => getSubscriptionsResult.Subscriptions),
///         ["firstAvailableSubscriptionDisplayName"] = available.Apply(getSubscriptionsResult => getSubscriptionsResult.Subscriptions[0]?.DisplayName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := core.GetSubscriptions(ctx, &core.GetSubscriptionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("availableSubscriptions", available.Subscriptions)
/// 		ctx.Export("firstAvailableSubscriptionDisplayName", available.Subscriptions[0].DisplayName)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getsubscriptions" "available" {
/// }
///
/// output "availableSubscriptions" {
///   value = data.azure_core_getsubscriptions.available.subscriptions
/// }
/// output "firstAvailableSubscriptionDisplayName" {
///   value = data.azure_core_getsubscriptions.available.subscriptions[0].display_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionsArgs;
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
///         final var available = CoreFunctions.getSubscriptions(GetSubscriptionsArgs.builder()
///             .build());
///
///         ctx.export("availableSubscriptions", available.subscriptions());
///         ctx.export("firstAvailableSubscriptionDisplayName", available.subscriptions()[0].displayName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: azure:core:getSubscriptions
///       arguments: {}
/// outputs:
///   availableSubscriptions: ${available.subscriptions}
///   firstAvailableSubscriptionDisplayName: ${available.subscriptions[0].displayName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_subscriptions_get_subscriptions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionsResult> getSubscriptions(
  GetSubscriptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getSubscriptions:getSubscriptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionsResult.fromMap(result);
}

/// Use this data source to access information about an existing Template Spec Version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getTemplateSpecVersion({
///     name: "exampleTemplateSpec",
///     resourceGroupName: "MyResourceGroup",
///     version: "v1.0.4",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_template_spec_version(name="exampleTemplateSpec",
///     resource_group_name="MyResourceGroup",
///     version="v1.0.4")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetTemplateSpecVersion.Invoke(new()
///     {
///         Name = "exampleTemplateSpec",
///         ResourceGroupName = "MyResourceGroup",
///         Version = "v1.0.4",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getTemplateSpecVersionResult => getTemplateSpecVersionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetTemplateSpecVersion(ctx, &core.GetTemplateSpecVersionArgs{
/// 			Name:              "exampleTemplateSpec",
/// 			ResourceGroupName: "MyResourceGroup",
/// 			Version:           "v1.0.4",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_gettemplatespecversion" "example" {
///   name                = "exampleTemplateSpec"
///   resource_group_name = "MyResourceGroup"
///   version             = "v1.0.4"
/// }
///
/// output "id" {
///   value = data.azure_core_gettemplatespecversion.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetTemplateSpecVersionArgs;
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
///         final var example = CoreFunctions.getTemplateSpecVersion(GetTemplateSpecVersionArgs.builder()
///             .name("exampleTemplateSpec")
///             .resourceGroupName("MyResourceGroup")
///             .version("v1.0.4")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getTemplateSpecVersion
///       arguments:
///         name: exampleTemplateSpec
///         resourceGroupName: MyResourceGroup
///         version: v1.0.4
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Resources` - 2022-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_template_spec_version_get_template_spec_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateSpecVersionResult> getTemplateSpecVersion(
  GetTemplateSpecVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getTemplateSpecVersion:getTemplateSpecVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateSpecVersionResult.fromMap(result);
}

/// Use this data source to access information about an existing Tenant Template Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.core.getTenantTemplateDeployment({
///     name: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const exampleOutput = example.then(example => std.jsondecode({
///     input: example.outputContent,
/// })).then(invoke => invoke.result?.exampleOutput?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.get_tenant_template_deployment(name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("exampleOutput", std.jsondecode(input=example.output_content).result["exampleOutput"]["value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetTenantTemplateDeployment.Invoke(new()
///     {
///         Name = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getTenantTemplateDeploymentResult => getTenantTemplateDeploymentResult.Id),
///         ["exampleOutput"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getTenantTemplateDeploymentResult => getTenantTemplateDeploymentResult.OutputContent),
///         }).Apply(invoke => invoke.Result?.ExampleOutput?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupTenantTemplateDeployment(ctx, &core.LookupTenantTemplateDeploymentArgs{
/// 			Name: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("exampleOutput", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.OutputContent,
/// 		}, nil).Result.ExampleOutput.Value))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_core_gettenanttemplatedeployment" "example" {
///   name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_core_gettenanttemplatedeployment.example.id
/// }
/// output "exampleOutput" {
///   value = jsondecode(data.azure_core_gettenanttemplatedeployment.example.output_content).example_output.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetTenantTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = CoreFunctions.getTenantTemplateDeployment(GetTenantTemplateDeploymentArgs.builder()
///             .name("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("exampleOutput", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.outputContent())
///             .build()).result().exampleOutput().value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getTenantTemplateDeployment
///       arguments:
///         name: existing
/// outputs:
///   id: ${example.id}
///   exampleOutput:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.outputContent}
///       return: result.exampleOutput.value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_tenant_template_deployment_get_tenant_template_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantTemplateDeploymentResult> getTenantTemplateDeployment(
  GetTenantTemplateDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getTenantTemplateDeployment:getTenantTemplateDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantTemplateDeploymentResult.fromMap(result);
}

/// Use this data source to access information about an existing User Assigned Identity.
///
/// ## Example Usage
///
/// ### Reference An Existing)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.authorization.getUserAssignedIdentity({
///     name: "name_of_user_assigned_identity",
///     resourceGroupName: "name_of_resource_group",
/// });
/// export const uaiClientId = example.then(example => example.clientId);
/// export const uaiPrincipalId = example.then(example => example.principalId);
/// export const uaiTenantId = example.then(example => example.tenantId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.authorization.get_user_assigned_identity(name="name_of_user_assigned_identity",
///     resource_group_name="name_of_resource_group")
/// pulumi.export("uaiClientId", example.client_id)
/// pulumi.export("uaiPrincipalId", example.principal_id)
/// pulumi.export("uaiTenantId", example.tenant_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Authorization.GetUserAssignedIdentity.Invoke(new()
///     {
///         Name = "name_of_user_assigned_identity",
///         ResourceGroupName = "name_of_resource_group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["uaiClientId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.ClientId),
///         ["uaiPrincipalId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.PrincipalId),
///         ["uaiTenantId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.TenantId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := authorization.LookupUserAssignedIdentity(ctx, &authorization.LookupUserAssignedIdentityArgs{
/// 			Name:              "name_of_user_assigned_identity",
/// 			ResourceGroupName: "name_of_resource_group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("uaiClientId", example.ClientId)
/// 		ctx.Export("uaiPrincipalId", example.PrincipalId)
/// 		ctx.Export("uaiTenantId", example.TenantId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_authorization_getuserassignedidentity" "example" {
///   name                = "name_of_user_assigned_identity"
///   resource_group_name = "name_of_resource_group"
/// }
///
/// output "uaiClientId" {
///   value = data.azure_authorization_getuserassignedidentity.example.client_id
/// }
/// output "uaiPrincipalId" {
///   value = data.azure_authorization_getuserassignedidentity.example.principal_id
/// }
/// output "uaiTenantId" {
///   value = data.azure_authorization_getuserassignedidentity.example.tenant_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetUserAssignedIdentityArgs;
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
///         final var example = AuthorizationFunctions.getUserAssignedIdentity(GetUserAssignedIdentityArgs.builder()
///             .name("name_of_user_assigned_identity")
///             .resourceGroupName("name_of_resource_group")
///             .build());
///
///         ctx.export("uaiClientId", example.clientId());
///         ctx.export("uaiPrincipalId", example.principalId());
///         ctx.export("uaiTenantId", example.tenantId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:authorization:getUserAssignedIdentity
///       arguments:
///         name: name_of_user_assigned_identity
///         resourceGroupName: name_of_resource_group
/// outputs:
///   uaiClientId: ${example.clientId}
///   uaiPrincipalId: ${example.principalId}
///   uaiTenantId: ${example.tenantId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ManagedIdentity` - 2024-11-30
/// [args] Arguments passed to this invoke. {@macro pulumi_core_get_user_assigned_identity_get_user_assigned_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserAssignedIdentityResult> getUserAssignedIdentity(
  GetUserAssignedIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:core/getUserAssignedIdentity:getUserAssignedIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAssignedIdentityResult.fromMap(result);
}
