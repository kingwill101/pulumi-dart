import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_address_pool_args.dart';
import 'get_backend_address_pool_result.dart';
import 'get_lbargs.dart';
import 'get_lboutbound_rule_args.dart';
import 'get_lboutbound_rule_result.dart';
import 'get_lbresult.dart';
import 'get_lbrule_args.dart';
import 'get_lbrule_result.dart';

/// Use this data source to access information about an existing Load Balancer's Backend Address Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.lb.getLB({
///     name: "example-lb",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetBackendAddressPool = example.then(example => azure.lb.getBackendAddressPool({
///     name: "first",
///     loadbalancerId: example.id,
/// }));
/// export const backendAddressPoolId = exampleGetBackendAddressPool.then(exampleGetBackendAddressPool => exampleGetBackendAddressPool.id);
/// export const backendIpConfigurationIds = beap.backendIpConfigurations.map(__item => __item.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.lb.get_lb(name="example-lb",
///     resource_group_name="example-resources")
/// example_get_backend_address_pool = azure.lb.get_backend_address_pool(name="first",
///     loadbalancer_id=example.id)
/// pulumi.export("backendAddressPoolId", example_get_backend_address_pool.id)
/// pulumi.export("backendIpConfigurationIds", [__item["id"] for __item in beap["backendIpConfigurations"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Lb.GetLB.Invoke(new()
///     {
///         Name = "example-lb",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetBackendAddressPool = Azure.Lb.GetBackendAddressPool.Invoke(new()
///     {
///         Name = "first",
///         LoadbalancerId = example.Apply(getLBResult => getLBResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["backendAddressPoolId"] = exampleGetBackendAddressPool.Apply(getBackendAddressPoolResult => getBackendAddressPoolResult.Id),
///         ["backendIpConfigurationIds"] = beap.BackendIpConfigurations.Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lb.GetLB(ctx, &lb.GetLBArgs{
/// Name: "example-lb",
/// ResourceGroupName: "example-resources",
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleGetBackendAddressPool, err := lb.LookupBackendAddressPool(ctx, &lb.LookupBackendAddressPoolArgs{
/// Name: "first",
/// LoadbalancerId: example.Id,
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("backendAddressPoolId", exampleGetBackendAddressPool.Id)
/// ctx.Export("backendIpConfigurationIds", pulumi.Array(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:15,11-45)))
/// return nil
/// })
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
/// data "azure_lb_getlb" "example" {
///   name                = "example-lb"
///   resource_group_name = "example-resources"
/// }
/// data "azure_lb_getbackendaddresspool" "exampleGetBackendAddressPool" {
///   name            = "first"
///   loadbalancer_id = data.azure_lb_getlb.example.id
/// }
///
/// output "backendAddressPoolId" {
///   value = data.azure_lb_getbackendaddresspool.exampleGetBackendAddressPool.id
/// }
/// output "backendIpConfigurationIds" {
///   value = beap.backendIpConfigurations[*].id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.lb.LbFunctions;
/// import com.pulumi.azure.lb.inputs.GetLBArgs;
/// import com.pulumi.azure.lb.inputs.GetBackendAddressPoolArgs;
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
///         final var example = LbFunctions.getLB(GetLBArgs.builder()
///             .name("example-lb")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetBackendAddressPool = LbFunctions.getBackendAddressPool(GetBackendAddressPoolArgs.builder()
///             .name("first")
///             .loadbalancerId(example.id())
///             .build());
///
///         ctx.export("backendAddressPoolId", exampleGetBackendAddressPool.id());
///         ctx.export("backendIpConfigurationIds", beap.backendIpConfigurations().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_backend_address_pool_get_backend_address_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendAddressPoolResult> getBackendAddressPool(
  GetBackendAddressPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:lb/getBackendAddressPool:getBackendAddressPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendAddressPoolResult.fromMap(result);
}

pulumi.Output<GetBackendAddressPoolResult> getBackendAddressPoolOutput(
  GetBackendAddressPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:lb/getBackendAddressPool:getBackendAddressPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackendAddressPoolResult.fromMap);
}

/// Use this data source to access information about an existing Load Balancer
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.lb.getLB({
///     name: "example-lb",
///     resourceGroupName: "example-resources",
/// });
/// export const loadbalancerId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.lb.get_lb(name="example-lb",
///     resource_group_name="example-resources")
/// pulumi.export("loadbalancerId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Lb.GetLB.Invoke(new()
///     {
///         Name = "example-lb",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["loadbalancerId"] = example.Apply(getLBResult => getLBResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lb.GetLB(ctx, &lb.GetLBArgs{
/// 			Name:              "example-lb",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("loadbalancerId", example.Id)
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
/// data "azure_lb_getlb" "example" {
///   name                = "example-lb"
///   resource_group_name = "example-resources"
/// }
///
/// output "loadbalancerId" {
///   value = data.azure_lb_getlb.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.lb.LbFunctions;
/// import com.pulumi.azure.lb.inputs.GetLBArgs;
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
///         final var example = LbFunctions.getLB(GetLBArgs.builder()
///             .name("example-lb")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("loadbalancerId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:lb:getLB
///       arguments:
///         name: example-lb
///         resourceGroupName: example-resources
/// outputs:
///   loadbalancerId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_lb_get_lbargs_doc}
/// [options] Invoke options controlling this call.
Future<GetLBResult> getLB(
  GetLBArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:lb/getLB:getLB',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLBResult.fromMap(result);
}

pulumi.Output<GetLBResult> getLBOutput(
  GetLBArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:lb/getLB:getLB',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLBResult.fromMap);
}

/// Use this data source to access information about an existing Load Balancer Outbound Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.lb.getLBOutboundRule({
///     name: "existing_lb_outbound_rule",
///     loadbalancerId: "existing_load_balancer_id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.lb.get_lb_outbound_rule(name="existing_lb_outbound_rule",
///     loadbalancer_id="existing_load_balancer_id")
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
///     var example = Azure.Lb.GetLBOutboundRule.Invoke(new()
///     {
///         Name = "existing_lb_outbound_rule",
///         LoadbalancerId = "existing_load_balancer_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getLBOutboundRuleResult => getLBOutboundRuleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lb.GetLBOutboundRule(ctx, &lb.GetLBOutboundRuleArgs{
/// 			Name:           "existing_lb_outbound_rule",
/// 			LoadbalancerId: "existing_load_balancer_id",
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
/// data "azure_lb_getlboutboundrule" "example" {
///   name            = "existing_lb_outbound_rule"
///   loadbalancer_id = "existing_load_balancer_id"
/// }
///
/// output "id" {
///   value = data.azure_lb_getlboutboundrule.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.lb.LbFunctions;
/// import com.pulumi.azure.lb.inputs.GetLBOutboundRuleArgs;
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
///         final var example = LbFunctions.getLBOutboundRule(GetLBOutboundRuleArgs.builder()
///             .name("existing_lb_outbound_rule")
///             .loadbalancerId("existing_load_balancer_id")
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
///       function: azure:lb:getLBOutboundRule
///       arguments:
///         name: existing_lb_outbound_rule
///         loadbalancerId: existing_load_balancer_id
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
/// * `Microsoft.Network` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_lboutbound_rule_get_lboutbound_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLBOutboundRuleResult> getLBOutboundRule(
  GetLBOutboundRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:lb/getLBOutboundRule:getLBOutboundRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLBOutboundRuleResult.fromMap(result);
}

pulumi.Output<GetLBOutboundRuleResult> getLBOutboundRuleOutput(
  GetLBOutboundRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:lb/getLBOutboundRule:getLBOutboundRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLBOutboundRuleResult.fromMap);
}

/// Use this data source to access information about an existing Load Balancer Rule.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_lb_getlb" "example" {
///   name                = "example-lb"
///   resource_group_name = "example-resources"
/// }
/// data "azure_lb_getlbrule" "exampleGetLBRule" {
///   name                = "first"
///   resource_group_name = "example-resources"
///   loadbalancer_id     = data.azure_lb_getlb.example.id
/// }
///
/// output "lbRuleId" {
///   value = data.azure_lb_getlbrule.exampleGetLBRule.id
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:lb:getLB
///       arguments:
///         name: example-lb
///         resourceGroupName: example-resources
///   exampleGetLBRule:
///     fn::invoke:
///       function: azure:lb:getLBRule
///       arguments:
///         name: first
///         resourceGroupName: example-resources
///         loadbalancerId: ${example.id}
/// outputs:
///   lbRuleId: ${exampleGetLBRule.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_lbrule_get_lbrule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLBRuleResult> getLBRule(
  GetLBRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:lb/getLBRule:getLBRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLBRuleResult.fromMap(result);
}

pulumi.Output<GetLBRuleResult> getLBRuleOutput(
  GetLBRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:lb/getLBRule:getLBRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLBRuleResult.fromMap);
}
