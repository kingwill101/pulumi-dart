import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_args.dart';
import 'frontdoor_security_policy_security_policies.dart';
import 'frontdoor_security_policy_state.dart';

/// Manages a Front Door (standard/premium) Security Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorFirewallPolicy = new azure.cdn.FrontdoorFirewallPolicy("example", {
///     name: "exampleWAF",
///     resourceGroupName: example.name,
///     skuName: exampleFrontdoorProfile.skuName,
///     enabled: true,
///     mode: "Prevention",
///     redirectUrl: "https://www.contoso.com",
///     customBlockResponseStatusCode: 403,
///     customBlockResponseBody: "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
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
///             matchValues: [
///                 "192.168.1.0/24",
///                 "10.0.1.0/24",
///             ],
///         }],
///     }],
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "sub-domain.domain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorCustomDomain = new azure.cdn.FrontdoorCustomDomain("example", {
///     name: "example-customDomain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: "contoso.fabrikam.com",
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumTlsVersion: "TLS12",
///     },
/// });
/// const exampleFrontdoorSecurityPolicy = new azure.cdn.FrontdoorSecurityPolicy("example", {
///     name: "Example-Security-Policy",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_firewall_policy = azure.cdn.FrontdoorFirewallPolicy("example",
///     name="exampleWAF",
///     resource_group_name=example.name,
///     sku_name=example_frontdoor_profile.sku_name,
///     enabled=True,
///     mode="Prevention",
///     redirect_url="https://www.contoso.com",
///     custom_block_response_status_code=403,
///     custom_block_response_body="PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
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
///             "match_values": [
///                 "192.168.1.0/24",
///                 "10.0.1.0/24",
///             ],
///         }],
///     }])
/// example_zone = azure.dns.Zone("example",
///     name="sub-domain.domain.com",
///     resource_group_name=example.name)
/// example_frontdoor_custom_domain = azure.cdn.FrontdoorCustomDomain("example",
///     name="example-customDomain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name="contoso.fabrikam.com",
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_tls_version": "TLS12",
///     })
/// example_frontdoor_security_policy = azure.cdn.FrontdoorSecurityPolicy("example",
///     name="Example-Security-Policy",
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
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorFirewallPolicy = new Azure.Cdn.FrontdoorFirewallPolicy("example", new()
///     {
///         Name = "exampleWAF",
///         ResourceGroupName = example.Name,
///         SkuName = exampleFrontdoorProfile.SkuName,
///         Enabled = true,
///         Mode = "Prevention",
///         RedirectUrl = "https://www.contoso.com",
///         CustomBlockResponseStatusCode = 403,
///         CustomBlockResponseBody = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
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
///                             "10.0.1.0/24",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "sub-domain.domain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFrontdoorCustomDomain = new Azure.Cdn.FrontdoorCustomDomain("example", new()
///     {
///         Name = "example-customDomain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = "contoso.fabrikam.com",
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumTlsVersion = "TLS12",
///         },
///     });
///
///     var exampleFrontdoorSecurityPolicy = new Azure.Cdn.FrontdoorSecurityPolicy("example", new()
///     {
///         Name = "Example-Security-Policy",
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorFirewallPolicy, err := cdn.NewFrontdoorFirewallPolicy(ctx, "example", &cdn.FrontdoorFirewallPolicyArgs{
/// 			Name:                          pulumi.String("exampleWAF"),
/// 			ResourceGroupName:             example.Name,
/// 			SkuName:                       exampleFrontdoorProfile.SkuName,
/// 			Enabled:                       pulumi.Bool(true),
/// 			Mode:                          pulumi.String("Prevention"),
/// 			RedirectUrl:                   pulumi.String("https://www.contoso.com"),
/// 			CustomBlockResponseStatusCode: pulumi.Int(403),
/// 			CustomBlockResponseBody:       pulumi.String("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="),
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
/// 								pulumi.String("10.0.1.0/24"),
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
/// 			Name:              pulumi.String("sub-domain.domain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorCustomDomain, err := cdn.NewFrontdoorCustomDomain(ctx, "example", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("example-customDomain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			DnsZoneId:             exampleZone.ID(),
/// 			HostName:              pulumi.String("contoso.fabrikam.com"),
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType:   pulumi.String("ManagedCertificate"),
/// 				MinimumTlsVersion: pulumi.String("TLS12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorSecurityPolicy(ctx, "example", &cdn.FrontdoorSecurityPolicyArgs{
/// 			Name:                  pulumi.String("Example-Security-Policy"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			SecurityPolicies: &cdn.FrontdoorSecurityPolicySecurityPoliciesArgs{
/// 				Firewall: &cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallArgs{
/// 					CdnFrontdoorFirewallPolicyId: exampleFrontdoorFirewallPolicy.ID(),
/// 					Association: &cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs{
/// 						Domains: cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArray{
/// 							&cdn.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs{
/// 								CdnFrontdoorDomainId: exampleFrontdoorCustomDomain.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicy;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicyArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyCustomRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorFirewallPolicy = new FrontdoorFirewallPolicy("exampleFrontdoorFirewallPolicy", FrontdoorFirewallPolicyArgs.builder()
///             .name("exampleWAF")
///             .resourceGroupName(example.name())
///             .skuName(exampleFrontdoorProfile.skuName())
///             .enabled(true)
///             .mode("Prevention")
///             .redirectUrl("https://www.contoso.com")
///             .customBlockResponseStatusCode(403)
///             .customBlockResponseBody("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==")
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
///                     .matchValues(
///                         "192.168.1.0/24",
///                         "10.0.1.0/24")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("sub-domain.domain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFrontdoorCustomDomain = new FrontdoorCustomDomain("exampleFrontdoorCustomDomain", FrontdoorCustomDomainArgs.builder()
///             .name("example-customDomain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName("contoso.fabrikam.com")
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumTlsVersion("TLS12")
///                 .build())
///             .build());
///
///         var exampleFrontdoorSecurityPolicy = new FrontdoorSecurityPolicy("exampleFrontdoorSecurityPolicy", FrontdoorSecurityPolicyArgs.builder()
///             .name("Example-Security-Policy")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorFirewallPolicy:
///     type: azure:cdn:FrontdoorFirewallPolicy
///     name: example
///     properties:
///       name: exampleWAF
///       resourceGroupName: ${example.name}
///       skuName: ${exampleFrontdoorProfile.skuName}
///       enabled: true
///       mode: Prevention
///       redirectUrl: https://www.contoso.com
///       customBlockResponseStatusCode: 403
///       customBlockResponseBody: PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==
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
///                 - 10.0.1.0/24
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: sub-domain.domain.com
///       resourceGroupName: ${example.name}
///   exampleFrontdoorCustomDomain:
///     type: azure:cdn:FrontdoorCustomDomain
///     name: example
///     properties:
///       name: example-customDomain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName: contoso.fabrikam.com
///       tls:
///         certificateType: ManagedCertificate
///         minimumTlsVersion: TLS12
///   exampleFrontdoorSecurityPolicy:
///     type: azure:cdn:FrontdoorSecurityPolicy
///     name: example
///     properties:
///       name: Example-Security-Policy
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       securityPolicies:
///         firewall:
///           cdnFrontdoorFirewallPolicyId: ${exampleFrontdoorFirewallPolicy.id}
///           association:
///             domains:
///               - cdnFrontdoorDomainId: ${exampleFrontdoorCustomDomain.id}
///             patternsToMatch: /*
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2024-02-01
///
/// ## Import
///
/// Front Door Security Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorSecurityPolicy:FrontdoorSecurityPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/securityPolicies/policy1
/// ```
class FrontdoorSecurityPolicy extends pulumi.CustomResource {
  /// The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created.
  late final pulumi.Output<String> name;
  /// An `security_policies` block as defined below.
  late final pulumi.Output<FrontdoorSecurityPolicySecurityPolicies> securityPolicies;

  /// Creates a new [FrontdoorSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorSecurityPolicy]. {@macro pulumi_cdn_frontdoor_security_policy_frontdoor_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorSecurityPolicy(
    String name, {
    FrontdoorSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorSecurityPolicy:FrontdoorSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
    this.securityPolicies = registerOutput<FrontdoorSecurityPolicySecurityPolicies>('securityPolicies');
  }

  /// Gets an existing [FrontdoorSecurityPolicy] resource's state with the given [name] and [id].
  static FrontdoorSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorSecurityPolicyState? state,
  }) {
    return FrontdoorSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorSecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorSecurityPolicy:FrontdoorSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
    this.securityPolicies = registerOutput<FrontdoorSecurityPolicySecurityPolicies>('securityPolicies');
  }
}
