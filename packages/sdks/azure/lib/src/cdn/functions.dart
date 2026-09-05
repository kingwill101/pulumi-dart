import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_args.dart';
import 'get_frontdoor_batch_rule_set_result.dart';
import 'get_frontdoor_custom_domain_args.dart';
import 'get_frontdoor_custom_domain_result.dart';
import 'get_frontdoor_endpoint_args.dart';
import 'get_frontdoor_endpoint_result.dart';
import 'get_frontdoor_firewall_policy_args.dart';
import 'get_frontdoor_firewall_policy_result.dart';
import 'get_frontdoor_origin_group_args.dart';
import 'get_frontdoor_origin_group_result.dart';
import 'get_frontdoor_profile_args.dart';
import 'get_frontdoor_profile_result.dart';
import 'get_frontdoor_rule_set_args.dart';
import 'get_frontdoor_rule_set_result.dart';
import 'get_frontdoor_secret_args.dart';
import 'get_frontdoor_secret_result.dart';
import 'get_frontdoor_security_policy_args.dart';
import 'get_frontdoor_security_policy_result.dart';
import 'get_profile_args.dart';
import 'get_profile_result.dart';

/// Gets information about an existing Front Door (standard/premium) Batch Rule Set.
///
/// &gt; **Note:** This data source can only read Rule Sets that were provisioned in batch mode. Use the `azure.cdn.FrontdoorRuleSet` data source for Rule Sets that were not provisioned in batch mode.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorBatchRuleSet({
///     name: "existing",
///     profileName: "existing-profile",
///     resourceGroupName: "existing-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_batch_rule_set(name="existing",
///     profile_name="existing-profile",
///     resource_group_name="existing-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorBatchRuleSet.Invoke(new()
///     {
///         Name = "existing",
///         ProfileName = "existing-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorBatchRuleSet(ctx, &cdn.LookupFrontdoorBatchRuleSetArgs{
/// 			Name:              "existing",
/// 			ProfileName:       "existing-profile",
/// 			ResourceGroupName: "existing-resources",
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
/// data "azure_cdn_getfrontdoorbatchruleset" "example" {
///   name                = "existing"
///   profile_name        = "existing-profile"
///   resource_group_name = "existing-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorBatchRuleSetArgs;
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
///         final var example = CdnFunctions.getFrontdoorBatchRuleSet(GetFrontdoorBatchRuleSetArgs.builder()
///             .name("existing")
///             .profileName("existing-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorBatchRuleSet
///       arguments:
///         name: existing
///         profileName: existing-profile
///         resourceGroupName: existing-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_batch_rule_set_get_frontdoor_batch_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorBatchRuleSetResult> getFrontdoorBatchRuleSet(
  GetFrontdoorBatchRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorBatchRuleSet:getFrontdoorBatchRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorBatchRuleSetResult.fromMap(result);
}

pulumi.Output<GetFrontdoorBatchRuleSetResult> getFrontdoorBatchRuleSetOutput(
  GetFrontdoorBatchRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorBatchRuleSet:getFrontdoorBatchRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorBatchRuleSetResult.fromMap);
}

/// Gets information about an existing Front Door (standard/premium) Custom Domain.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorCustomDomain({
///     name: "existing-cdn-frontdoor-custom-domain",
///     profileName: "existing-cdn-frontdoor-profile",
///     resourceGroupName: "existing-resource-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_custom_domain(name="existing-cdn-frontdoor-custom-domain",
///     profile_name="existing-cdn-frontdoor-profile",
///     resource_group_name="existing-resource-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorCustomDomain.Invoke(new()
///     {
///         Name = "existing-cdn-frontdoor-custom-domain",
///         ProfileName = "existing-cdn-frontdoor-profile",
///         ResourceGroupName = "existing-resource-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorCustomDomain(ctx, &cdn.LookupFrontdoorCustomDomainArgs{
/// 			Name:              "existing-cdn-frontdoor-custom-domain",
/// 			ProfileName:       "existing-cdn-frontdoor-profile",
/// 			ResourceGroupName: "existing-resource-group",
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
/// data "azure_cdn_getfrontdoorcustomdomain" "example" {
///   name                = "existing-cdn-frontdoor-custom-domain"
///   profile_name        = "existing-cdn-frontdoor-profile"
///   resource_group_name = "existing-resource-group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorCustomDomainArgs;
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
///         final var example = CdnFunctions.getFrontdoorCustomDomain(GetFrontdoorCustomDomainArgs.builder()
///             .name("existing-cdn-frontdoor-custom-domain")
///             .profileName("existing-cdn-frontdoor-profile")
///             .resourceGroupName("existing-resource-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorCustomDomain
///       arguments:
///         name: existing-cdn-frontdoor-custom-domain
///         profileName: existing-cdn-frontdoor-profile
///         resourceGroupName: existing-resource-group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_custom_domain_get_frontdoor_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorCustomDomainResult> getFrontdoorCustomDomain(
  GetFrontdoorCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorCustomDomain:getFrontdoorCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorCustomDomainResult.fromMap(result);
}

pulumi.Output<GetFrontdoorCustomDomainResult> getFrontdoorCustomDomainOutput(
  GetFrontdoorCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorCustomDomain:getFrontdoorCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorCustomDomainResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorEndpoint({
///     name: "existing-endpoint",
///     profileName: "existing-cdn-profile",
///     resourceGroupName: "existing-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_endpoint(name="existing-endpoint",
///     profile_name="existing-cdn-profile",
///     resource_group_name="existing-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorEndpoint.Invoke(new()
///     {
///         Name = "existing-endpoint",
///         ProfileName = "existing-cdn-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorEndpoint(ctx, &cdn.LookupFrontdoorEndpointArgs{
/// 			Name:              "existing-endpoint",
/// 			ProfileName:       "existing-cdn-profile",
/// 			ResourceGroupName: "existing-resources",
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
/// data "azure_cdn_getfrontdoorendpoint" "example" {
///   name                = "existing-endpoint"
///   profile_name        = "existing-cdn-profile"
///   resource_group_name = "existing-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorEndpointArgs;
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
///         final var example = CdnFunctions.getFrontdoorEndpoint(GetFrontdoorEndpointArgs.builder()
///             .name("existing-endpoint")
///             .profileName("existing-cdn-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorEndpoint
///       arguments:
///         name: existing-endpoint
///         profileName: existing-cdn-profile
///         resourceGroupName: existing-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_endpoint_get_frontdoor_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorEndpointResult> getFrontdoorEndpoint(
  GetFrontdoorEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorEndpoint:getFrontdoorEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorEndpointResult.fromMap(result);
}

pulumi.Output<GetFrontdoorEndpointResult> getFrontdoorEndpointOutput(
  GetFrontdoorEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorEndpoint:getFrontdoorEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorEndpointResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Firewall Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorFirewallPolicy({
///     name: "examplecdnfdwafpolicy",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_firewall_policy(name="examplecdnfdwafpolicy",
///     resource_group_name=example_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorFirewallPolicy.Invoke(new()
///     {
///         Name = "examplecdnfdwafpolicy",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorFirewallPolicy(ctx, &cdn.LookupFrontdoorFirewallPolicyArgs{
/// 			Name:              "examplecdnfdwafpolicy",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
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
/// data "azure_cdn_getfrontdoorfirewallpolicy" "example" {
///   name                = "examplecdnfdwafpolicy"
///   resource_group_name = exampleAzurermResourceGroup.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorFirewallPolicyArgs;
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
///         final var example = CdnFunctions.getFrontdoorFirewallPolicy(GetFrontdoorFirewallPolicyArgs.builder()
///             .name("examplecdnfdwafpolicy")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorFirewallPolicy
///       arguments:
///         name: examplecdnfdwafpolicy
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_firewall_policy_get_frontdoor_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorFirewallPolicyResult> getFrontdoorFirewallPolicy(
  GetFrontdoorFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorFirewallPolicy:getFrontdoorFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorFirewallPolicyResult.fromMap(result);
}

pulumi.Output<GetFrontdoorFirewallPolicyResult> getFrontdoorFirewallPolicyOutput(
  GetFrontdoorFirewallPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorFirewallPolicy:getFrontdoorFirewallPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorFirewallPolicyResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Origin Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorOriginGroup({
///     name: "example-origin-group",
///     profileName: "example-profile",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_origin_group(name="example-origin-group",
///     profile_name="example-profile",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorOriginGroup.Invoke(new()
///     {
///         Name = "example-origin-group",
///         ProfileName = "example-profile",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorOriginGroup(ctx, &cdn.LookupFrontdoorOriginGroupArgs{
/// 			Name:              "example-origin-group",
/// 			ProfileName:       "example-profile",
/// 			ResourceGroupName: "example-resources",
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
/// data "azure_cdn_getfrontdoororigingroup" "example" {
///   name                = "example-origin-group"
///   profile_name        = "example-profile"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorOriginGroupArgs;
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
///         final var example = CdnFunctions.getFrontdoorOriginGroup(GetFrontdoorOriginGroupArgs.builder()
///             .name("example-origin-group")
///             .profileName("example-profile")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorOriginGroup
///       arguments:
///         name: example-origin-group
///         profileName: example-profile
///         resourceGroupName: example-resources
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorOriginGroupResult> getFrontdoorOriginGroup(
  GetFrontdoorOriginGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorOriginGroup:getFrontdoorOriginGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorOriginGroupResult.fromMap(result);
}

pulumi.Output<GetFrontdoorOriginGroupResult> getFrontdoorOriginGroupOutput(
  GetFrontdoorOriginGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorOriginGroup:getFrontdoorOriginGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorOriginGroupResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorProfile({
///     name: "existing-cdn-profile",
///     resourceGroupName: "existing-resources",
/// });
/// export const frontDoorId = example.then(example => example.id);
/// export const logScrubbingMatchVariable = example.then(example => example.logScrubbingRules?.[0]?.matchVariable);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_profile(name="existing-cdn-profile",
///     resource_group_name="existing-resources")
/// pulumi.export("frontDoorId", example.id)
/// pulumi.export("logScrubbingMatchVariable", example.log_scrubbing_rules[0].match_variable)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorProfile.Invoke(new()
///     {
///         Name = "existing-cdn-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["frontDoorId"] = example.Apply(getFrontdoorProfileResult => getFrontdoorProfileResult.Id),
///         ["logScrubbingMatchVariable"] = example.Apply(getFrontdoorProfileResult => getFrontdoorProfileResult.LogScrubbingRules[0]?.MatchVariable),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cdn.LookupFrontdoorProfile(ctx, &cdn.LookupFrontdoorProfileArgs{
/// 			Name:              "existing-cdn-profile",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("frontDoorId", example.Id)
/// 		ctx.Export("logScrubbingMatchVariable", example.LogScrubbingRules[0].MatchVariable)
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
/// data "azure_cdn_getfrontdoorprofile" "example" {
///   name                = "existing-cdn-profile"
///   resource_group_name = "existing-resources"
/// }
///
/// output "frontDoorId" {
///   value = data.azure_cdn_getfrontdoorprofile.example.id
/// }
/// output "logScrubbingMatchVariable" {
///   value = data.azure_cdn_getfrontdoorprofile.example.log_scrubbing_rules[0].match_variable
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorProfileArgs;
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
///         final var example = CdnFunctions.getFrontdoorProfile(GetFrontdoorProfileArgs.builder()
///             .name("existing-cdn-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         ctx.export("frontDoorId", example.id());
///         ctx.export("logScrubbingMatchVariable", example.logScrubbingRules()[0].matchVariable());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorProfile
///       arguments:
///         name: existing-cdn-profile
///         resourceGroupName: existing-resources
/// outputs:
///   frontDoorId: ${example.id}
///   logScrubbingMatchVariable: ${example.logScrubbingRules[0].matchVariable}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_profile_get_frontdoor_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorProfileResult> getFrontdoorProfile(
  GetFrontdoorProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorProfile:getFrontdoorProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorProfileResult.fromMap(result);
}

pulumi.Output<GetFrontdoorProfileResult> getFrontdoorProfileOutput(
  GetFrontdoorProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorProfile:getFrontdoorProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorProfileResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Rule Set.
///
/// &gt; **Note:** This data source can only read Rule Sets that were not provisioned in batch mode. Use the `azure.cdn.FrontdoorBatchRuleSet` data source for Rule Sets that were provisioned in batch mode.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorRuleSet({
///     name: "existing-rule-set",
///     profileName: "existing-profile",
///     resourceGroupName: "existing-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_rule_set(name="existing-rule-set",
///     profile_name="existing-profile",
///     resource_group_name="existing-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorRuleSet.Invoke(new()
///     {
///         Name = "existing-rule-set",
///         ProfileName = "existing-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorRuleSet(ctx, &cdn.LookupFrontdoorRuleSetArgs{
/// 			Name:              "existing-rule-set",
/// 			ProfileName:       "existing-profile",
/// 			ResourceGroupName: "existing-resources",
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
/// data "azure_cdn_getfrontdoorruleset" "example" {
///   name                = "existing-rule-set"
///   profile_name        = "existing-profile"
///   resource_group_name = "existing-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorRuleSetArgs;
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
///         final var example = CdnFunctions.getFrontdoorRuleSet(GetFrontdoorRuleSetArgs.builder()
///             .name("existing-rule-set")
///             .profileName("existing-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorRuleSet
///       arguments:
///         name: existing-rule-set
///         profileName: existing-profile
///         resourceGroupName: existing-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_rule_set_get_frontdoor_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorRuleSetResult> getFrontdoorRuleSet(
  GetFrontdoorRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorRuleSet:getFrontdoorRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorRuleSetResult.fromMap(result);
}

pulumi.Output<GetFrontdoorRuleSetResult> getFrontdoorRuleSetOutput(
  GetFrontdoorRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorRuleSet:getFrontdoorRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorRuleSetResult.fromMap);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Secret.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorSecret({
///     name: "example-secret",
///     profileName: "example-profile",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_secret(name="example-secret",
///     profile_name="example-profile",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorSecret.Invoke(new()
///     {
///         Name = "example-secret",
///         ProfileName = "example-profile",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorSecret(ctx, &cdn.LookupFrontdoorSecretArgs{
/// 			Name:              "example-secret",
/// 			ProfileName:       "example-profile",
/// 			ResourceGroupName: "example-resources",
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
/// data "azure_cdn_getfrontdoorsecret" "example" {
///   name                = "example-secret"
///   profile_name        = "example-profile"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorSecretArgs;
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
///         final var example = CdnFunctions.getFrontdoorSecret(GetFrontdoorSecretArgs.builder()
///             .name("example-secret")
///             .profileName("example-profile")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorSecret
///       arguments:
///         name: example-secret
///         profileName: example-profile
///         resourceGroupName: example-resources
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_secret_get_frontdoor_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorSecretResult> getFrontdoorSecret(
  GetFrontdoorSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorSecret:getFrontdoorSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorSecretResult.fromMap(result);
}

pulumi.Output<GetFrontdoorSecretResult> getFrontdoorSecretOutput(
  GetFrontdoorSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorSecret:getFrontdoorSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorSecretResult.fromMap);
}

/// Gets information about an existing Front Door (standard/premium) Security Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-frontdoor-profile",
///     resourceGroupName: exampleResourceGroup.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorFirewallPolicy = new azure.cdn.FrontdoorFirewallPolicy("example", {
///     name: "examplecdnfrontdoorfirewallpolicy",
///     resourceGroupName: exampleResourceGroup.name,
///     skuName: exampleFrontdoorProfile.skuName,
///     enabled: true,
///     mode: "Prevention",
///     redirectUrl: "https://www.example.com",
///     customRules: [{
///         name: "Rule1",
///         enabled: true,
///         priority: 1,
///         rateLimitDurationInMinutes: 1,
///         rateLimitThreshold: 10,
///         type: "MatchRule",
///         action: "Block",
///         matchConditions: [{
///             matchVariable: "RemoteAddr",
///             operator: "IPMatch",
///             negationCondition: false,
///             matchValues: ["192.168.1.0/24"],
///         }],
///     }],
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "example-frontdoor.com",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleFrontdoorCustomDomain = new azure.cdn.FrontdoorCustomDomain("example", {
///     name: "example-custom-domain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: "www.example-frontdoor.com",
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumTlsVersion: "TLS12",
///     },
/// });
/// const exampleFrontdoorSecurityPolicy = new azure.cdn.FrontdoorSecurityPolicy("example", {
///     name: "example-security-policy",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     securityPolicies: {
///         firewall: {
///             cdnFrontdoorFirewallPolicyId: exampleFrontdoorFirewallPolicy.id,
///             association: {
///                 domains: [{
///                     cdnFrontdoorDomainId: exampleFrontdoorCustomDomain.id,
///                 }],
///                 patternsToMatch: "/*",
///             },
///         },
///     },
/// });
/// const example = azure.cdn.getFrontdoorSecurityPolicyOutput({
///     name: exampleFrontdoorSecurityPolicy.name,
///     profileName: exampleFrontdoorProfile.name,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-frontdoor-profile",
///     resource_group_name=example_resource_group.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_firewall_policy = azure.cdn.FrontdoorFirewallPolicy("example",
///     name="examplecdnfrontdoorfirewallpolicy",
///     resource_group_name=example_resource_group.name,
///     sku_name=example_frontdoor_profile.sku_name,
///     enabled=True,
///     mode="Prevention",
///     redirect_url="https://www.example.com",
///     custom_rules=[{
///         "name": "Rule1",
///         "enabled": True,
///         "priority": 1,
///         "rate_limit_duration_in_minutes": 1,
///         "rate_limit_threshold": 10,
///         "type": "MatchRule",
///         "action": "Block",
///         "match_conditions": [{
///             "match_variable": "RemoteAddr",
///             "operator": "IPMatch",
///             "negation_condition": False,
///             "match_values": ["192.168.1.0/24"],
///         }],
///     }])
/// example_zone = azure.dns.Zone("example",
///     name="example-frontdoor.com",
///     resource_group_name=example_resource_group.name)
/// example_frontdoor_custom_domain = azure.cdn.FrontdoorCustomDomain("example",
///     name="example-custom-domain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name="www.example-frontdoor.com",
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_tls_version": "TLS12",
///     })
/// example_frontdoor_security_policy = azure.cdn.FrontdoorSecurityPolicy("example",
///     name="example-security-policy",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     security_policies={
///         "firewall": {
///             "cdn_frontdoor_firewall_policy_id": example_frontdoor_firewall_policy.id,
///             "association": {
///                 "domains": [{
///                     "cdn_frontdoor_domain_id": example_frontdoor_custom_domain.id,
///                 }],
///                 "patterns_to_match": "/*",
///             },
///         },
///     })
/// example = azure.cdn.get_frontdoor_security_policy_output(name=example_frontdoor_security_policy.name,
///     profile_name=example_frontdoor_profile.name,
///     resource_group_name=example_resource_group.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-frontdoor-profile",
///         ResourceGroupName = exampleResourceGroup.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorFirewallPolicy = new Azure.Cdn.FrontdoorFirewallPolicy("example", new()
///     {
///         Name = "examplecdnfrontdoorfirewallpolicy",
///         ResourceGroupName = exampleResourceGroup.Name,
///         SkuName = exampleFrontdoorProfile.SkuName,
///         Enabled = true,
///         Mode = "Prevention",
///         RedirectUrl = "https://www.example.com",
///         CustomRules = new[]
///         {
///             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleArgs
///             {
///                 Name = "Rule1",
///                 Enabled = true,
///                 Priority = 1,
///                 RateLimitDurationInMinutes = 1,
///                 RateLimitThreshold = 10,
///                 Type = "MatchRule",
///                 Action = "Block",
///                 MatchConditions = new[]
///                 {
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "RemoteAddr",
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "example-frontdoor.com",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleFrontdoorCustomDomain = new Azure.Cdn.FrontdoorCustomDomain("example", new()
///     {
///         Name = "example-custom-domain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = "www.example-frontdoor.com",
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumTlsVersion = "TLS12",
///         },
///     });
///
///     var exampleFrontdoorSecurityPolicy = new Azure.Cdn.FrontdoorSecurityPolicy("example", new()
///     {
///         Name = "example-security-policy",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         SecurityPolicies = new Azure.Cdn.Inputs.FrontdoorSecurityPolicySecurityPoliciesArgs
///         {
///             Firewall = new Azure.Cdn.Inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallArgs
///             {
///                 CdnFrontdoorFirewallPolicyId = exampleFrontdoorFirewallPolicy.Id,
///                 Association = new Azure.Cdn.Inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs
///                 {
///                     Domains = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs
///                         {
///                             CdnFrontdoorDomainId = exampleFrontdoorCustomDomain.Id,
///                         },
///                     },
///                     PatternsToMatch = "/*",
///                 },
///             },
///         },
///     });
///
///     var example = Azure.Cdn.GetFrontdoorSecurityPolicy.Invoke(new()
///     {
///         Name = exampleFrontdoorSecurityPolicy.Name,
///         ProfileName = exampleFrontdoorProfile.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-frontdoor-profile"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorFirewallPolicy, err := cdn.NewFrontdoorFirewallPolicy(ctx, "example", &cdn.FrontdoorFirewallPolicyArgs{
/// 			Name:              pulumi.String("examplecdnfrontdoorfirewallpolicy"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			SkuName:           exampleFrontdoorProfile.SkuName,
/// 			Enabled:           pulumi.Bool(true),
/// 			Mode:              pulumi.String("Prevention"),
/// 			RedirectUrl:       pulumi.String("https://www.example.com"),
/// 			CustomRules: cdn.FrontdoorFirewallPolicyCustomRuleArray{
/// 				&cdn.FrontdoorFirewallPolicyCustomRuleArgs{
/// 					Name:                       pulumi.String("Rule1"),
/// 					Enabled:                    pulumi.Bool(true),
/// 					Priority:                   pulumi.Int(1),
/// 					RateLimitDurationInMinutes: pulumi.Int(1),
/// 					RateLimitThreshold:         pulumi.Int(10),
/// 					Type:                       pulumi.String("MatchRule"),
/// 					Action:                     pulumi.String("Block"),
/// 					MatchConditions: cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArray{
/// 						&cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("RemoteAddr"),
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("example-frontdoor.com"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorCustomDomain, err := cdn.NewFrontdoorCustomDomain(ctx, "example", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("example-custom-domain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			DnsZoneId:             exampleZone.ID().ToIDOutput().ToStringOutput(),
/// 			HostName:              pulumi.String("www.example-frontdoor.com"),
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType:   pulumi.String("ManagedCertificate"),
/// 				MinimumTlsVersion: pulumi.String("TLS12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorSecurityPolicy, err := cdn.NewFrontdoorSecurityPolicy(ctx, "example", &cdn.FrontdoorSecurityPolicyArgs{
/// 			Name:                  pulumi.String("example-security-policy"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			SecurityPolicies: &cdn.FrontdoorSecurityPolicySecurityPoliciesArgs{
/// 				Firewall: &cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallArgs{
/// 					CdnFrontdoorFirewallPolicyId: exampleFrontdoorFirewallPolicy.ID().ToIDOutput().ToStringOutput(),
/// 					Association: &cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs{
/// 						Domains: cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArray{
/// 							&cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs{
/// 								CdnFrontdoorDomainId: exampleFrontdoorCustomDomain.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 						},
/// 						PatternsToMatch: pulumi.String("/*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = cdn.LookupFrontdoorSecurityPolicyOutput(ctx, cdn.GetFrontdoorSecurityPolicyOutputArgs{
/// 			Name:              exampleFrontdoorSecurityPolicy.Name,
/// 			ProfileName:       exampleFrontdoorProfile.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
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
/// data "azure_cdn_getfrontdoorsecuritypolicy" "example" {
///   name                = azure_cdn_frontdoorsecuritypolicy.example.name
///   profile_name        = azure_cdn_frontdoorprofile.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-cdn-frontdoor"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-frontdoor-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoorfirewallpolicy" "example" {
///   name                = "examplecdnfrontdoorfirewallpolicy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = azure_cdn_frontdoorprofile.example.sku_name
///   enabled             = true
///   mode                = "Prevention"
///   redirect_url        = "https://www.example.com"
///   custom_rules {
///     name                           = "Rule1"
///     enabled                        = true
///     priority                       = 1
///     rate_limit_duration_in_minutes = 1
///     rate_limit_threshold           = 10
///     type                           = "MatchRule"
///     action                         = "Block"
///     match_conditions {
///       match_variable     = "RemoteAddr"
///       operator           = "IPMatch"
///       negation_condition = false
///       match_values       = ["192.168.1.0/24"]
///     }
///   }
/// }
/// resource "azure_dns_zone" "example" {
///   name                = "example-frontdoor.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_cdn_frontdoorcustomdomain" "example" {
///   name                     = "example-custom-domain"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   dns_zone_id              = azure_dns_zone.example.id
///   host_name                = "www.example-frontdoor.com"
///   tls = {
///     certificate_type    = "ManagedCertificate"
///     minimum_tls_version = "TLS12"
///   }
/// }
/// resource "azure_cdn_frontdoorsecuritypolicy" "example" {
///   name                     = "example-security-policy"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   security_policies = {
///     firewall = {
///       cdn_frontdoor_firewall_policy_id = azure_cdn_frontdoorfirewallpolicy.example.id
///       association = {
///         domains = [{
///           "cdnFrontdoorDomainId" = azure_cdn_frontdoorcustomdomain.example.id
///         }]
///         patterns_to_match = "/*"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicy;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicyArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyCustomRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs;
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomain;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorCustomDomainTlsArgs;
/// import com.pulumi.azure.cdn.FrontdoorSecurityPolicy;
/// import com.pulumi.azure.cdn.FrontdoorSecurityPolicyArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorSecurityPolicyArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-frontdoor-profile")
///             .resourceGroupName(exampleResourceGroup.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorFirewallPolicy = new FrontdoorFirewallPolicy("exampleFrontdoorFirewallPolicy", FrontdoorFirewallPolicyArgs.builder()
///             .name("examplecdnfrontdoorfirewallpolicy")
///             .resourceGroupName(exampleResourceGroup.name())
///             .skuName(exampleFrontdoorProfile.skuName())
///             .enabled(true)
///             .mode("Prevention")
///             .redirectUrl("https://www.example.com")
///             .customRules(FrontdoorFirewallPolicyCustomRuleArgs.builder()
///                 .name("Rule1")
///                 .enabled(true)
///                 .priority(1)
///                 .rateLimitDurationInMinutes(1)
///                 .rateLimitThreshold(10)
///                 .type("MatchRule")
///                 .action("Block")
///                 .matchConditions(FrontdoorFirewallPolicyCustomRuleMatchConditionArgs.builder()
///                     .matchVariable("RemoteAddr")
///                     .operator("IPMatch")
///                     .negationCondition(false)
///                     .matchValues("192.168.1.0/24")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example-frontdoor.com")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleFrontdoorCustomDomain = new FrontdoorCustomDomain("exampleFrontdoorCustomDomain", FrontdoorCustomDomainArgs.builder()
///             .name("example-custom-domain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName("www.example-frontdoor.com")
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumTlsVersion("TLS12")
///                 .build())
///             .build());
///
///         var exampleFrontdoorSecurityPolicy = new FrontdoorSecurityPolicy("exampleFrontdoorSecurityPolicy", FrontdoorSecurityPolicyArgs.builder()
///             .name("example-security-policy")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .securityPolicies(FrontdoorSecurityPolicySecurityPoliciesArgs.builder()
///                 .firewall(FrontdoorSecurityPolicySecurityPoliciesFirewallArgs.builder()
///                     .cdnFrontdoorFirewallPolicyId(exampleFrontdoorFirewallPolicy.id())
///                     .association(FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs.builder()
///                         .domains(FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs.builder()
///                             .cdnFrontdoorDomainId(exampleFrontdoorCustomDomain.id())
///                             .build())
///                         .patternsToMatch("/*")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var example = CdnFunctions.getFrontdoorSecurityPolicy(GetFrontdoorSecurityPolicyArgs.builder()
///             .name(exampleFrontdoorSecurityPolicy.name())
///             .profileName(exampleFrontdoorProfile.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-frontdoor-profile
///       resourceGroupName: ${exampleResourceGroup.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorFirewallPolicy:
///     type: azure:cdn:FrontdoorFirewallPolicy
///     name: example
///     properties:
///       name: examplecdnfrontdoorfirewallpolicy
///       resourceGroupName: ${exampleResourceGroup.name}
///       skuName: ${exampleFrontdoorProfile.skuName}
///       enabled: true
///       mode: Prevention
///       redirectUrl: https://www.example.com
///       customRules:
///         - name: Rule1
///           enabled: true
///           priority: 1
///           rateLimitDurationInMinutes: 1
///           rateLimitThreshold: 10
///           type: MatchRule
///           action: Block
///           matchConditions:
///             - matchVariable: RemoteAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 192.168.1.0/24
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: example-frontdoor.com
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleFrontdoorCustomDomain:
///     type: azure:cdn:FrontdoorCustomDomain
///     name: example
///     properties:
///       name: example-custom-domain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName: www.example-frontdoor.com
///       tls:
///         certificateType: ManagedCertificate
///         minimumTlsVersion: TLS12
///   exampleFrontdoorSecurityPolicy:
///     type: azure:cdn:FrontdoorSecurityPolicy
///     name: example
///     properties:
///       name: example-security-policy
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       securityPolicies:
///         firewall:
///           cdnFrontdoorFirewallPolicyId: ${exampleFrontdoorFirewallPolicy.id}
///           association:
///             domains:
///               - cdnFrontdoorDomainId: ${exampleFrontdoorCustomDomain.id}
///             patternsToMatch: /*
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorSecurityPolicy
///       arguments:
///         name: ${exampleFrontdoorSecurityPolicy.name}
///         profileName: ${exampleFrontdoorProfile.name}
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_security_policy_get_frontdoor_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorSecurityPolicyResult> getFrontdoorSecurityPolicy(
  GetFrontdoorSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorSecurityPolicy:getFrontdoorSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorSecurityPolicyResult.fromMap(result);
}

pulumi.Output<GetFrontdoorSecurityPolicyResult> getFrontdoorSecurityPolicyOutput(
  GetFrontdoorSecurityPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorSecurityPolicy:getFrontdoorSecurityPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFrontdoorSecurityPolicyResult.fromMap);
}

/// Use this data source to access information about an existing CDN Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getProfile({
///     name: "myfirstcdnprofile",
///     resourceGroupName: "example-resources",
/// });
/// export const cdnProfileId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_profile(name="myfirstcdnprofile",
///     resource_group_name="example-resources")
/// pulumi.export("cdnProfileId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetProfile.Invoke(new()
///     {
///         Name = "myfirstcdnprofile",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cdnProfileId"] = example.Apply(getProfileResult => getProfileResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cdn.LookupProfile(ctx, &cdn.LookupProfileArgs{
/// 			Name:              "myfirstcdnprofile",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cdnProfileId", example.Id)
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
/// data "azure_cdn_getprofile" "example" {
///   name                = "myfirstcdnprofile"
///   resource_group_name = "example-resources"
/// }
///
/// output "cdnProfileId" {
///   value = data.azure_cdn_getprofile.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetProfileArgs;
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
///         final var example = CdnFunctions.getProfile(GetProfileArgs.builder()
///             .name("myfirstcdnprofile")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("cdnProfileId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getProfile
///       arguments:
///         name: myfirstcdnprofile
///         resourceGroupName: example-resources
/// outputs:
///   cdnProfileId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_profile_get_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  GetProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getProfile:getProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}

pulumi.Output<GetProfileResult> getProfileOutput(
  GetProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cdn/getProfile:getProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProfileResult.fromMap);
}
