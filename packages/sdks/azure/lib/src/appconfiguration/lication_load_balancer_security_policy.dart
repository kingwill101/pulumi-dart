import 'package:pulumi/pulumi.dart' as pulumi;
import 'lication_load_balancer_security_policy_args.dart';
import 'lication_load_balancer_security_policy_state.dart';

/// Manages an Application Load Balancer Security Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleLicationLoadBalancer = new azure.appconfiguration.LicationLoadBalancer("example", {
///     name: "example-alb",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePolicy = new azure.waf.Policy("example", {
///     name: "example-wafpolicy",
///     resourceGroupName: example.name,
///     location: example.location,
///     managedRules: {
///         managedRuleSets: [{
///             type: "Microsoft_DefaultRuleSet",
///             version: "2.1",
///         }],
///     },
///     policySettings: {
///         enabled: true,
///         mode: "Detection",
///     },
/// });
/// const exampleLicationLoadBalancerSecurityPolicy = new azure.appconfiguration.LicationLoadBalancerSecurityPolicy("example", {
///     name: "example-albsp",
///     applicationLoadBalancerId: exampleLicationLoadBalancer.id,
///     location: example.location,
///     webApplicationFirewallPolicyId: examplePolicy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_lication_load_balancer = azure.appconfiguration.LicationLoadBalancer("example",
///     name="example-alb",
///     location=example.location,
///     resource_group_name=example.name)
/// example_policy = azure.waf.Policy("example",
///     name="example-wafpolicy",
///     resource_group_name=example.name,
///     location=example.location,
///     managed_rules={
///         "managed_rule_sets": [{
///             "type": "Microsoft_DefaultRuleSet",
///             "version": "2.1",
///         }],
///     },
///     policy_settings={
///         "enabled": True,
///         "mode": "Detection",
///     })
/// example_lication_load_balancer_security_policy = azure.appconfiguration.LicationLoadBalancerSecurityPolicy("example",
///     name="example-albsp",
///     application_load_balancer_id=example_lication_load_balancer.id,
///     location=example.location,
///     web_application_firewall_policy_id=example_policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleLicationLoadBalancer = new Azure.AppConfiguration.LicationLoadBalancer("example", new()
///     {
///         Name = "example-alb",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePolicy = new Azure.Waf.Policy("example", new()
///     {
///         Name = "example-wafpolicy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ManagedRules = new Azure.Waf.Inputs.PolicyManagedRulesArgs
///         {
///             ManagedRuleSets = new[]
///             {
///                 new Azure.Waf.Inputs.PolicyManagedRulesManagedRuleSetArgs
///                 {
///                     Type = "Microsoft_DefaultRuleSet",
///                     Version = "2.1",
///                 },
///             },
///         },
///         PolicySettings = new Azure.Waf.Inputs.PolicyPolicySettingsArgs
///         {
///             Enabled = true,
///             Mode = "Detection",
///         },
///     });
///
///     var exampleLicationLoadBalancerSecurityPolicy = new Azure.AppConfiguration.LicationLoadBalancerSecurityPolicy("example", new()
///     {
///         Name = "example-albsp",
///         ApplicationLoadBalancerId = exampleLicationLoadBalancer.Id,
///         Location = example.Location,
///         WebApplicationFirewallPolicyId = examplePolicy.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLicationLoadBalancer, err := appconfiguration.NewLicationLoadBalancer(ctx, "example", &appconfiguration.LicationLoadBalancerArgs{
/// 			Name:              pulumi.String("example-alb"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePolicy, err := waf.NewPolicy(ctx, "example", &waf.PolicyArgs{
/// 			Name:              pulumi.String("example-wafpolicy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ManagedRules: &waf.PolicyManagedRulesArgs{
/// 				ManagedRuleSets: waf.PolicyManagedRulesManagedRuleSetArray{
/// 					&waf.PolicyManagedRulesManagedRuleSetArgs{
/// 						Type:    pulumi.String("Microsoft_DefaultRuleSet"),
/// 						Version: pulumi.String("2.1"),
/// 					},
/// 				},
/// 			},
/// 			PolicySettings: &waf.PolicyPolicySettingsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Mode:    pulumi.String("Detection"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewLicationLoadBalancerSecurityPolicy(ctx, "example", &appconfiguration.LicationLoadBalancerSecurityPolicyArgs{
/// 			Name:                           pulumi.String("example-albsp"),
/// 			ApplicationLoadBalancerId:      exampleLicationLoadBalancer.ID().ToIDOutput().ToStringOutput(),
/// 			Location:                       example.Location,
/// 			WebApplicationFirewallPolicyId: examplePolicy.ID().ToIDOutput().ToStringOutput(),
/// 		})
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_appconfiguration_licationloadbalancer" "example" {
///   name                = "example-alb"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_waf_policy" "example" {
///   name                = "example-wafpolicy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   managed_rules = {
///     managed_rule_sets = [{
///       "type"    = "Microsoft_DefaultRuleSet"
///       "version" = "2.1"
///     }]
///   }
///   policy_settings = {
///     enabled = true
///     mode    = "Detection"
///   }
/// }
/// resource "azure_appconfiguration_licationloadbalancersecuritypolicy" "example" {
///   name                               = "example-albsp"
///   application_load_balancer_id       = azure_appconfiguration_licationloadbalancer.example.id
///   location                           = azure_core_resourcegroup.example.location
///   web_application_firewall_policy_id = azure_waf_policy.example.id
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
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancer;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerArgs;
/// import com.pulumi.azure.waf.Policy;
/// import com.pulumi.azure.waf.PolicyArgs;
/// import com.pulumi.azure.waf.inputs.PolicyManagedRulesArgs;
/// import com.pulumi.azure.waf.inputs.PolicyManagedRulesManagedRuleSetArgs;
/// import com.pulumi.azure.waf.inputs.PolicyPolicySettingsArgs;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerSecurityPolicy;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerSecurityPolicyArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleLicationLoadBalancer = new LicationLoadBalancer("exampleLicationLoadBalancer", LicationLoadBalancerArgs.builder()
///             .name("example-alb")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("example-wafpolicy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .managedRules(PolicyManagedRulesArgs.builder()
///                 .managedRuleSets(PolicyManagedRulesManagedRuleSetArgs.builder()
///                     .type("Microsoft_DefaultRuleSet")
///                     .version("2.1")
///                     .build())
///                 .build())
///             .policySettings(PolicyPolicySettingsArgs.builder()
///                 .enabled(true)
///                 .mode("Detection")
///                 .build())
///             .build());
///
///         var exampleLicationLoadBalancerSecurityPolicy = new LicationLoadBalancerSecurityPolicy("exampleLicationLoadBalancerSecurityPolicy", LicationLoadBalancerSecurityPolicyArgs.builder()
///             .name("example-albsp")
///             .applicationLoadBalancerId(exampleLicationLoadBalancer.id())
///             .location(example.location())
///             .webApplicationFirewallPolicyId(examplePolicy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: West Europe
///   exampleLicationLoadBalancer:
///     type: azure:appconfiguration:LicationLoadBalancer
///     name: example
///     properties:
///       name: example-alb
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePolicy:
///     type: azure:waf:Policy
///     name: example
///     properties:
///       name: example-wafpolicy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       managedRules:
///         managedRuleSets:
///           - type: Microsoft_DefaultRuleSet
///             version: '2.1'
///       policySettings:
///         enabled: true
///         mode: Detection
///   exampleLicationLoadBalancerSecurityPolicy:
///     type: azure:appconfiguration:LicationLoadBalancerSecurityPolicy
///     name: example
///     properties:
///       name: example-albsp
///       applicationLoadBalancerId: ${exampleLicationLoadBalancer.id}
///       location: ${example.location}
///       webApplicationFirewallPolicyId: ${examplePolicy.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceNetworking` - 2025-01-01
///
/// ## Import
///
/// Application Load Balancer Security Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/licationLoadBalancerSecurityPolicy:LicationLoadBalancerSecurityPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ServiceNetworking/trafficControllers/alb/securityPolicies/sp1
/// ```
class LicationLoadBalancerSecurityPolicy extends pulumi.CustomResource {
  /// The ID of the Application Load Balancer. Changing this forces a new Application Gateway for Containers Security Policy to be created.
  late final pulumi.Output<String> applicationLoadBalancerId;
  /// The Azure Region where the Application Load Balancer Security Policy should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Application Load Balancer Security Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags which should be assigned to the Application Load Balancer Security Policy.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Web Application Firewall Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  late final pulumi.Output<String> webApplicationFirewallPolicyId;

  /// Creates a new [LicationLoadBalancerSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicationLoadBalancerSecurityPolicy]. {@macro pulumi_appconfiguration_lication_load_balancer_security_policy_lication_load_balancer_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicationLoadBalancerSecurityPolicy(
    String name, {
    LicationLoadBalancerSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancerSecurityPolicy:LicationLoadBalancerSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webApplicationFirewallPolicyId = registerOutput<String>('webApplicationFirewallPolicyId');
  }

  /// Gets an existing [LicationLoadBalancerSecurityPolicy] resource's state with the given [name] and [id].
  static LicationLoadBalancerSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    LicationLoadBalancerSecurityPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LicationLoadBalancerSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LicationLoadBalancerSecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancerSecurityPolicy:LicationLoadBalancerSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webApplicationFirewallPolicyId = registerOutput<String>('webApplicationFirewallPolicyId');
  }

  /// Creates a typed reference to an existing [LicationLoadBalancerSecurityPolicy] resource.
  LicationLoadBalancerSecurityPolicy.reference(String urn)
    : super(
        'azure:appconfiguration/licationLoadBalancerSecurityPolicy:LicationLoadBalancerSecurityPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webApplicationFirewallPolicyId = registerOutput<String>('webApplicationFirewallPolicyId');
  }
}
