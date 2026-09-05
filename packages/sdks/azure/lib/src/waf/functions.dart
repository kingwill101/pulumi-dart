import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';

/// Use this data source to access information about an existing Web Application Firewall Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.waf.getFirewallPolicy({
///     resourceGroupName: "existing",
///     name: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.waf.get_firewall_policy(resource_group_name="existing",
///     name="existing")
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
///     var example = Azure.Waf.GetFirewallPolicy.Invoke(new()
///     {
///         ResourceGroupName = "existing",
///         Name = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getFirewallPolicyResult => getFirewallPolicyResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := waf.GetFirewallPolicy(ctx, &waf.GetFirewallPolicyArgs{
/// 			ResourceGroupName: "existing",
/// 			Name:              "existing",
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
/// data "azure_waf_getfirewallpolicy" "example" {
///   resource_group_name = "existing"
///   name                = "existing"
/// }
///
/// output "id" {
///   value = data.azure_waf_getfirewallpolicy.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.waf.WafFunctions;
/// import com.pulumi.azure.waf.inputs.GetFirewallPolicyArgs;
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
///         final var example = WafFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
///             .resourceGroupName("existing")
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
///       function: azure:waf:getFirewallPolicy
///       arguments:
///         resourceGroupName: existing
///         name: existing
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
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_firewall_policy_get_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:waf/getFirewallPolicy:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyResult> getFirewallPolicyOutput(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:waf/getFirewallPolicy:getFirewallPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyResult.fromMap);
}
