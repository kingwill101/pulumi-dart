import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_resource_group_args.dart';
import 'get_budget_resource_group_result.dart';
import 'get_budget_subscription_args.dart';
import 'get_budget_subscription_result.dart';

/// Use this data source to access information about an existing Consumption Budget for a specific resource group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.consumption.getBudgetResourceGroup({
///     name: "existing",
///     resourceGroupId: exampleAzurermResourceGroup.id,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.consumption.get_budget_resource_group(name="existing",
///     resource_group_id=example_azurerm_resource_group["id"])
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
///     var example = Azure.Consumption.GetBudgetResourceGroup.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupId = exampleAzurermResourceGroup.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getBudgetResourceGroupResult => getBudgetResourceGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/consumption"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := consumption.LookupBudgetResourceGroup(ctx, &consumption.LookupBudgetResourceGroupArgs{
/// 			Name:            "existing",
/// 			ResourceGroupId: exampleAzurermResourceGroup.Id,
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
/// data "azure_consumption_getbudgetresourcegroup" "example" {
///   name              = "existing"
///   resource_group_id = exampleAzurermResourceGroup.id
/// }
///
/// output "id" {
///   value = data.azure_consumption_getbudgetresourcegroup.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.consumption.ConsumptionFunctions;
/// import com.pulumi.azure.consumption.inputs.GetBudgetResourceGroupArgs;
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
///         final var example = ConsumptionFunctions.getBudgetResourceGroup(GetBudgetResourceGroupArgs.builder()
///             .name("existing")
///             .resourceGroupId(exampleAzurermResourceGroup.id())
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
///       function: azure:consumption:getBudgetResourceGroup
///       arguments:
///         name: existing
///         resourceGroupId: ${exampleAzurermResourceGroup.id}
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
/// * `Microsoft.Consumption` - 2019-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_consumption_get_budget_resource_group_get_budget_resource_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetResourceGroupResult> getBudgetResourceGroup(
  GetBudgetResourceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:consumption/getBudgetResourceGroup:getBudgetResourceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetResourceGroupResult.fromMap(result);
}

pulumi.Output<GetBudgetResourceGroupResult> getBudgetResourceGroupOutput(
  GetBudgetResourceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:consumption/getBudgetResourceGroup:getBudgetResourceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBudgetResourceGroupResult.fromMap);
}

/// Use this data source to access information about an existing Consumption Budget for a specific subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.consumption.getBudgetSubscription({
///     name: "existing",
///     subscriptionId: "/subscriptions/00000000-0000-0000-0000-000000000000/",
/// });
/// export const id = exampleAzurermConsumptionBudget.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.consumption.get_budget_subscription(name="existing",
///     subscription_id="/subscriptions/00000000-0000-0000-0000-000000000000/")
/// pulumi.export("id", example_azurerm_consumption_budget["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Consumption.GetBudgetSubscription.Invoke(new()
///     {
///         Name = "existing",
///         SubscriptionId = "/subscriptions/00000000-0000-0000-0000-000000000000/",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleAzurermConsumptionBudget.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/consumption"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := consumption.LookupBudgetSubscription(ctx, &consumption.LookupBudgetSubscriptionArgs{
/// 			Name:           "existing",
/// 			SubscriptionId: "/subscriptions/00000000-0000-0000-0000-000000000000/",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", pulumi.Any(exampleAzurermConsumptionBudget.Id))
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
/// data "azure_consumption_getbudgetsubscription" "example" {
///   name            = "existing"
///   subscription_id = "/subscriptions/00000000-0000-0000-0000-000000000000/"
/// }
///
/// output "id" {
///   value = exampleAzurermConsumptionBudget.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.consumption.ConsumptionFunctions;
/// import com.pulumi.azure.consumption.inputs.GetBudgetSubscriptionArgs;
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
///         final var example = ConsumptionFunctions.getBudgetSubscription(GetBudgetSubscriptionArgs.builder()
///             .name("existing")
///             .subscriptionId("/subscriptions/00000000-0000-0000-0000-000000000000/")
///             .build());
///
///         ctx.export("id", exampleAzurermConsumptionBudget.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:consumption:getBudgetSubscription
///       arguments:
///         name: existing
///         subscriptionId: /subscriptions/00000000-0000-0000-0000-000000000000/
/// outputs:
///   id: ${exampleAzurermConsumptionBudget.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Consumption` - 2019-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_consumption_get_budget_subscription_get_budget_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetSubscriptionResult> getBudgetSubscription(
  GetBudgetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:consumption/getBudgetSubscription:getBudgetSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetSubscriptionResult.fromMap(result);
}

pulumi.Output<GetBudgetSubscriptionResult> getBudgetSubscriptionOutput(
  GetBudgetSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:consumption/getBudgetSubscription:getBudgetSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBudgetSubscriptionResult.fromMap);
}
