import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_definition_args.dart';
import 'get_definition_result.dart';
import 'get_published_version_args.dart';
import 'get_published_version_result.dart';

/// Use this data source to access information about an existing Azure Blueprint Definition
///
/// > **Note:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const root = current.then(current => azure.management.getGroup({
///     name: current.tenantId,
/// }));
/// const example = root.then(root => azure.blueprint.getDefinition({
///     name: "exampleManagementGroupBP",
///     scopeId: root.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// root = azure.management.get_group(name=current.tenant_id)
/// example = azure.blueprint.get_definition(name="exampleManagementGroupBP",
///     scope_id=root.id)
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
///     var root = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///     });
///
///     var example = Azure.Blueprint.GetDefinition.Invoke(new()
///     {
///         Name = "exampleManagementGroupBP",
///         ScopeId = root.Apply(getGroupResult => getGroupResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/blueprint"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		root, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef(current.TenantId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = blueprint.GetDefinition(ctx, &blueprint.GetDefinitionArgs{
/// 			Name:    "exampleManagementGroupBP",
/// 			ScopeId: root.Id,
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.blueprint.BlueprintFunctions;
/// import com.pulumi.azure.blueprint.inputs.GetDefinitionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var root = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name(current.tenantId())
///             .build());
///
///         final var example = BlueprintFunctions.getDefinition(GetDefinitionArgs.builder()
///             .name("exampleManagementGroupBP")
///             .scopeId(root.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   root:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: ${current.tenantId}
///   example:
///     fn::invoke:
///       function: azure:blueprint:getDefinition
///       arguments:
///         name: exampleManagementGroupBP
///         scopeId: ${root.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Blueprint` - 2018-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_definition_get_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefinitionResult> getDefinition(
  GetDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:blueprint/getDefinition:getDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefinitionResult.fromMap(result);
}

/// Use this data source to access information about an existing Blueprint Published Version
///
/// > **Note:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const test = current.then(current => azure.blueprint.getPublishedVersion({
///     scopeId: current.id,
///     blueprintName: "exampleBluePrint",
///     version: "dev_v2.3",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// test = azure.blueprint.get_published_version(scope_id=current.id,
///     blueprint_name="exampleBluePrint",
///     version="dev_v2.3")
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
///     var test = Azure.Blueprint.GetPublishedVersion.Invoke(new()
///     {
///         ScopeId = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         BlueprintName = "exampleBluePrint",
///         Version = "dev_v2.3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/blueprint"
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
/// 		_, err = blueprint.GetPublishedVersion(ctx, &blueprint.GetPublishedVersionArgs{
/// 			ScopeId:       current.Id,
/// 			BlueprintName: "exampleBluePrint",
/// 			Version:       "dev_v2.3",
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.blueprint.BlueprintFunctions;
/// import com.pulumi.azure.blueprint.inputs.GetPublishedVersionArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var test = BlueprintFunctions.getPublishedVersion(GetPublishedVersionArgs.builder()
///             .scopeId(current.id())
///             .blueprintName("exampleBluePrint")
///             .version("dev_v2.3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   test:
///     fn::invoke:
///       function: azure:blueprint:getPublishedVersion
///       arguments:
///         scopeId: ${current.id}
///         blueprintName: exampleBluePrint
///         version: dev_v2.3
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Blueprint` - 2018-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_published_version_get_published_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublishedVersionResult> getPublishedVersion(
  GetPublishedVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:blueprint/getPublishedVersion:getPublishedVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublishedVersionResult.fromMap(result);
}
