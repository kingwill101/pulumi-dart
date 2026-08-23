import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_args.dart';
import 'frontdoor_custom_domain_state.dart';
import 'frontdoor_custom_domain_tls.dart';

/// Manages a Front Door (standard/premium) Custom Domain.
///
/// &gt; **Note:** If you are using Terraform to manage your DNS Auth and DNS CNAME records for your Custom Domain you will need to add configuration blocks for both the `azure.dns.TxtRecord` (see the `Example DNS Auth TXT Record Usage` below) and the `azure.dns.CNameRecord` (see the `Example CNAME Record Usage` below) to your configuration file.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "fabrikam.com",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-cdn-frontdoor-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorEndpoint = new azure.cdn.FrontdoorEndpoint("example", {
///     name: "example-cdn-frontdoor-endpoint",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-cdn-frontdoor-origin-group",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     loadBalancing: {},
/// });
/// const exampleFrontdoorOrigin = new azure.cdn.FrontdoorOrigin("example", {
///     name: "example-cdn-frontdoor-origin",
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     hostName: "contoso.fabrikam.com",
///     certificateNameCheckEnabled: false,
/// });
/// const exampleFrontdoorCustomDomain = new azure.cdn.FrontdoorCustomDomain("example", {
///     name: "example-cdn-frontdoor-custom-domain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: exampleFrontdoorOrigin.hostName,
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumVersion: "TLS12",
///     },
/// });
/// const exampleFrontdoorRoute = new azure.cdn.FrontdoorRoute("example", {
///     name: "example-cdn-frontdoor-route",
///     cdnFrontdoorEndpointId: exampleFrontdoorEndpoint.id,
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     cdnFrontdoorOriginIds: [exampleFrontdoorOrigin.id],
///     cdnFrontdoorCustomDomainIds: [exampleFrontdoorCustomDomain.id],
///     patternsToMatches: ["/*"],
///     supportedProtocols: [
///         "Http",
///         "Https",
///     ],
/// });
/// const exampleFrontdoorFirewallPolicy = new azure.cdn.FrontdoorFirewallPolicy("example", {
///     name: "examplecdnfrontdoorfirewallpolicy",
///     resourceGroupName: example.name,
///     skuName: exampleFrontdoorProfile.skuName,
///     mode: "Prevention",
/// });
/// const exampleFrontdoorSecurityPolicy = new azure.cdn.FrontdoorSecurityPolicy("example", {
///     name: "example-cdn-frontdoor-security-policy",
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
///     name="example-resource-group",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="fabrikam.com",
///     resource_group_name=example.name)
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-cdn-frontdoor-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_endpoint = azure.cdn.FrontdoorEndpoint("example",
///     name="example-cdn-frontdoor-endpoint",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id)
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-cdn-frontdoor-origin-group",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     load_balancing={})
/// example_frontdoor_origin = azure.cdn.FrontdoorOrigin("example",
///     name="example-cdn-frontdoor-origin",
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     host_name="contoso.fabrikam.com",
///     certificate_name_check_enabled=False)
/// example_frontdoor_custom_domain = azure.cdn.FrontdoorCustomDomain("example",
///     name="example-cdn-frontdoor-custom-domain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name=example_frontdoor_origin.host_name,
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_version": "TLS12",
///     })
/// example_frontdoor_route = azure.cdn.FrontdoorRoute("example",
///     name="example-cdn-frontdoor-route",
///     cdn_frontdoor_endpoint_id=example_frontdoor_endpoint.id,
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     cdn_frontdoor_origin_ids=[example_frontdoor_origin.id],
///     cdn_frontdoor_custom_domain_ids=[example_frontdoor_custom_domain.id],
///     patterns_to_matches=["/*"],
///     supported_protocols=[
///         "Http",
///         "Https",
///     ])
/// example_frontdoor_firewall_policy = azure.cdn.FrontdoorFirewallPolicy("example",
///     name="examplecdnfrontdoorfirewallpolicy",
///     resource_group_name=example.name,
///     sku_name=example_frontdoor_profile.sku_name,
///     mode="Prevention")
/// example_frontdoor_security_policy = azure.cdn.FrontdoorSecurityPolicy("example",
///     name="example-cdn-frontdoor-security-policy",
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "fabrikam.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-cdn-frontdoor-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorEndpoint = new Azure.Cdn.FrontdoorEndpoint("example", new()
///     {
///         Name = "example-cdn-frontdoor-endpoint",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-cdn-frontdoor-origin-group",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         LoadBalancing = null,
///     });
///
///     var exampleFrontdoorOrigin = new Azure.Cdn.FrontdoorOrigin("example", new()
///     {
///         Name = "example-cdn-frontdoor-origin",
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         HostName = "contoso.fabrikam.com",
///         CertificateNameCheckEnabled = false,
///     });
///
///     var exampleFrontdoorCustomDomain = new Azure.Cdn.FrontdoorCustomDomain("example", new()
///     {
///         Name = "example-cdn-frontdoor-custom-domain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = exampleFrontdoorOrigin.HostName,
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumVersion = "TLS12",
///         },
///     });
///
///     var exampleFrontdoorRoute = new Azure.Cdn.FrontdoorRoute("example", new()
///     {
///         Name = "example-cdn-frontdoor-route",
///         CdnFrontdoorEndpointId = exampleFrontdoorEndpoint.Id,
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         CdnFrontdoorOriginIds = new[]
///         {
///             exampleFrontdoorOrigin.Id,
///         },
///         CdnFrontdoorCustomDomainIds = new[]
///         {
///             exampleFrontdoorCustomDomain.Id,
///         },
///         PatternsToMatches = new[]
///         {
///             "/*",
///         },
///         SupportedProtocols = new[]
///         {
///             "Http",
///             "Https",
///         },
///     });
///
///     var exampleFrontdoorFirewallPolicy = new Azure.Cdn.FrontdoorFirewallPolicy("example", new()
///     {
///         Name = "examplecdnfrontdoorfirewallpolicy",
///         ResourceGroupName = example.Name,
///         SkuName = exampleFrontdoorProfile.SkuName,
///         Mode = "Prevention",
///     });
///
///     var exampleFrontdoorSecurityPolicy = new Azure.Cdn.FrontdoorSecurityPolicy("example", new()
///     {
///         Name = "example-cdn-frontdoor-security-policy",
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
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("fabrikam.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-cdn-frontdoor-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorEndpoint, err := cdn.NewFrontdoorEndpoint(ctx, "example", &cdn.FrontdoorEndpointArgs{
/// 			Name:                  pulumi.String("example-cdn-frontdoor-endpoint"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                  pulumi.String("example-cdn-frontdoor-origin-group"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			LoadBalancing:         &cdn.FrontdoorOriginGroupLoadBalancingArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOrigin, err := cdn.NewFrontdoorOrigin(ctx, "example", &cdn.FrontdoorOriginArgs{
/// 			Name:                        pulumi.String("example-cdn-frontdoor-origin"),
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID(),
/// 			HostName:                    pulumi.String("contoso.fabrikam.com"),
/// 			CertificateNameCheckEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorCustomDomain, err := cdn.NewFrontdoorCustomDomain(ctx, "example", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("example-cdn-frontdoor-custom-domain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			DnsZoneId:             exampleZone.ID(),
/// 			HostName:              exampleFrontdoorOrigin.HostName,
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType: pulumi.String("ManagedCertificate"),
/// 				MinimumVersion:  pulumi.String("TLS12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorRoute(ctx, "example", &cdn.FrontdoorRouteArgs{
/// 			Name:                      pulumi.String("example-cdn-frontdoor-route"),
/// 			CdnFrontdoorEndpointId:    exampleFrontdoorEndpoint.ID(),
/// 			CdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.ID(),
/// 			CdnFrontdoorOriginIds: pulumi.StringArray{
/// 				exampleFrontdoorOrigin.ID(),
/// 			},
/// 			CdnFrontdoorCustomDomainIds: pulumi.StringArray{
/// 				exampleFrontdoorCustomDomain.ID(),
/// 			},
/// 			PatternsToMatches: pulumi.StringArray{
/// 				pulumi.String("/*"),
/// 			},
/// 			SupportedProtocols: pulumi.StringArray{
/// 				pulumi.String("Http"),
/// 				pulumi.String("Https"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorFirewallPolicy, err := cdn.NewFrontdoorFirewallPolicy(ctx, "example", &cdn.FrontdoorFirewallPolicyArgs{
/// 			Name:              pulumi.String("examplecdnfrontdoorfirewallpolicy"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           exampleFrontdoorProfile.SkuName,
/// 			Mode:              pulumi.String("Prevention"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorSecurityPolicy(ctx, "example", &cdn.FrontdoorSecurityPolicyArgs{
/// 			Name:                  pulumi.String("example-cdn-frontdoor-security-policy"),
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
///   name     = "example-resource-group"
///   location = "West Europe"
/// }
/// resource "azure_dns_zone" "example" {
///   name                = "fabrikam.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-cdn-frontdoor-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoorendpoint" "example" {
///   name                     = "example-cdn-frontdoor-endpoint"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                     = "example-cdn-frontdoor-origin-group"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   load_balancing           = {}
/// }
/// resource "azure_cdn_frontdoororigin" "example" {
///   name                           = "example-cdn-frontdoor-origin"
///   cdn_frontdoor_origin_group_id  = azure_cdn_frontdoororigingroup.example.id
///   host_name                      = "contoso.fabrikam.com"
///   certificate_name_check_enabled = false
/// }
/// resource "azure_cdn_frontdoorcustomdomain" "example" {
///   name                     = "example-cdn-frontdoor-custom-domain"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   dns_zone_id              = azure_dns_zone.example.id
///   host_name                = azure_cdn_frontdoororigin.example.host_name
///   tls = {
///     certificate_type = "ManagedCertificate"
///     minimum_version  = "TLS12"
///   }
/// }
/// resource "azure_cdn_frontdoorroute" "example" {
///   name                            = "example-cdn-frontdoor-route"
///   cdn_frontdoor_endpoint_id       = azure_cdn_frontdoorendpoint.example.id
///   cdn_frontdoor_origin_group_id   = azure_cdn_frontdoororigingroup.example.id
///   cdn_frontdoor_origin_ids        = [azure_cdn_frontdoororigin.example.id]
///   cdn_frontdoor_custom_domain_ids = [azure_cdn_frontdoorcustomdomain.example.id]
///   patterns_to_matches             = ["/*"]
///   supported_protocols             = ["Http", "Https"]
/// }
/// resource "azure_cdn_frontdoorfirewallpolicy" "example" {
///   name                = "examplecdnfrontdoorfirewallpolicy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = azure_cdn_frontdoorprofile.example.sku_name
///   mode                = "Prevention"
/// }
/// resource "azure_cdn_frontdoorsecuritypolicy" "example" {
///   name                     = "example-cdn-frontdoor-security-policy"
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
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorEndpoint;
/// import com.pulumi.azure.cdn.FrontdoorEndpointArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomain;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorCustomDomainTlsArgs;
/// import com.pulumi.azure.cdn.FrontdoorRoute;
/// import com.pulumi.azure.cdn.FrontdoorRouteArgs;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicy;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicyArgs;
/// import com.pulumi.azure.cdn.FrontdoorSecurityPolicy;
/// import com.pulumi.azure.cdn.FrontdoorSecurityPolicyArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomainArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("fabrikam.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-cdn-frontdoor-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorEndpoint = new FrontdoorEndpoint("exampleFrontdoorEndpoint", FrontdoorEndpointArgs.builder()
///             .name("example-cdn-frontdoor-endpoint")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-cdn-frontdoor-origin-group")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFrontdoorOrigin = new FrontdoorOrigin("exampleFrontdoorOrigin", FrontdoorOriginArgs.builder()
///             .name("example-cdn-frontdoor-origin")
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .hostName("contoso.fabrikam.com")
///             .certificateNameCheckEnabled(false)
///             .build());
///
///         var exampleFrontdoorCustomDomain = new FrontdoorCustomDomain("exampleFrontdoorCustomDomain", FrontdoorCustomDomainArgs.builder()
///             .name("example-cdn-frontdoor-custom-domain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName(exampleFrontdoorOrigin.hostName())
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumVersion("TLS12")
///                 .build())
///             .build());
///
///         var exampleFrontdoorRoute = new FrontdoorRoute("exampleFrontdoorRoute", FrontdoorRouteArgs.builder()
///             .name("example-cdn-frontdoor-route")
///             .cdnFrontdoorEndpointId(exampleFrontdoorEndpoint.id())
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .cdnFrontdoorOriginIds(exampleFrontdoorOrigin.id())
///             .cdnFrontdoorCustomDomainIds(exampleFrontdoorCustomDomain.id())
///             .patternsToMatches("/*")
///             .supportedProtocols(
///                 "Http",
///                 "Https")
///             .build());
///
///         var exampleFrontdoorFirewallPolicy = new FrontdoorFirewallPolicy("exampleFrontdoorFirewallPolicy", FrontdoorFirewallPolicyArgs.builder()
///             .name("examplecdnfrontdoorfirewallpolicy")
///             .resourceGroupName(example.name())
///             .skuName(exampleFrontdoorProfile.skuName())
///             .mode("Prevention")
///             .build());
///
///         var exampleFrontdoorSecurityPolicy = new FrontdoorSecurityPolicy("exampleFrontdoorSecurityPolicy", FrontdoorSecurityPolicyArgs.builder()
///             .name("example-cdn-frontdoor-security-policy")
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
///       name: example-resource-group
///       location: West Europe
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: fabrikam.com
///       resourceGroupName: ${example.name}
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-cdn-frontdoor-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorEndpoint:
///     type: azure:cdn:FrontdoorEndpoint
///     name: example
///     properties:
///       name: example-cdn-frontdoor-endpoint
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-cdn-frontdoor-origin-group
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       loadBalancing: {}
///   exampleFrontdoorOrigin:
///     type: azure:cdn:FrontdoorOrigin
///     name: example
///     properties:
///       name: example-cdn-frontdoor-origin
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       hostName: contoso.fabrikam.com
///       certificateNameCheckEnabled: false
///   exampleFrontdoorCustomDomain:
///     type: azure:cdn:FrontdoorCustomDomain
///     name: example
///     properties:
///       name: example-cdn-frontdoor-custom-domain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName: ${exampleFrontdoorOrigin.hostName}
///       tls:
///         certificateType: ManagedCertificate
///         minimumVersion: TLS12
///   exampleFrontdoorRoute:
///     type: azure:cdn:FrontdoorRoute
///     name: example
///     properties:
///       name: example-cdn-frontdoor-route
///       cdnFrontdoorEndpointId: ${exampleFrontdoorEndpoint.id}
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       cdnFrontdoorOriginIds:
///         - ${exampleFrontdoorOrigin.id}
///       cdnFrontdoorCustomDomainIds:
///         - ${exampleFrontdoorCustomDomain.id}
///       patternsToMatches:
///         - /*
///       supportedProtocols:
///         - Http
///         - Https
///   exampleFrontdoorFirewallPolicy:
///     type: azure:cdn:FrontdoorFirewallPolicy
///     name: example
///     properties:
///       name: examplecdnfrontdoorfirewallpolicy
///       resourceGroupName: ${example.name}
///       skuName: ${exampleFrontdoorProfile.skuName}
///       mode: Prevention
///   exampleFrontdoorSecurityPolicy:
///     type: azure:cdn:FrontdoorSecurityPolicy
///     name: example
///     properties:
///       name: example-cdn-frontdoor-security-policy
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
/// ## Example DNS Auth TXT Record Usage
///
/// The name of your DNS TXT record should be in the format of `_dnsauth.&lt;your_subdomain&gt;`. So, for example, if we use the `hostName` in the example usage above you would create a DNS TXT record with the name of `_dnsauth.contoso` which contains the value of the Front Door Custom Domains `validationToken` field. See the [product documentation](https://learn.microsoft.com/azure/frontdoor/standard-premium/how-to-add-custom-domain) for more information.
///
/// &gt; **Note:** Domain ownership validation is performed asynchronously by the Azure Front Door service (the domain typically transitions through states like `Submitting` and `Pending` before becoming `Approved`). If validation appears to be taking longer than expected, refer to the Azure Front Door documentation on [domain validation](https://learn.microsoft.com/azure/frontdoor/domain#domain-validation) and [domain validation states](https://learn.microsoft.com/azure/frontdoor/domain#domain-validation).
///
/// &gt; **Note:** Azure Front Door custom domain operations are currently gated by an internal service-side validation and backend synchronization process. While that process is running, the service can reject otherwise valid follow-up write operations until the custom domain reaches an approved state, which can make create, update, and delete operations take significantly longer than expected.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.dns.TxtRecord("example", {
///     name: std.split({
///         separator: ".",
///         text: exampleAzurermCdnFrontdoorCustomDomain.hostName,
///     }).then(invoke => std.join({
///         separator: ".",
///         input: [
///             "_dnsauth",
///             invoke.result?.[0],
///         ],
///     })).then(invoke => invoke.result),
///     zoneName: exampleAzurermDnsZone.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     ttl: 3600,
///     records: [{
///         value: exampleAzurermCdnFrontdoorCustomDomain.validationToken,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.dns.TxtRecord("example",
///     name=std.join(separator=".",
///         input=[
///             "_dnsauth",
///             std.split(separator=".",
///                 text=example_azurerm_cdn_frontdoor_custom_domain["hostName"]).result[0],
///         ]).result,
///     zone_name=example_azurerm_dns_zone["name"],
///     resource_group_name=example_azurerm_resource_group["name"],
///     ttl=3600,
///     records=[{
///         "value": example_azurerm_cdn_frontdoor_custom_domain["validationToken"],
///     }])
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
///     var example = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = Std.Split.Invoke(new()
///         {
///             Separator = ".",
///             Text = exampleAzurermCdnFrontdoorCustomDomain.HostName,
///         }).Apply(invoke => Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 "_dnsauth",
///                 invoke.Result[0],
///             },
///         })).Apply(invoke => invoke.Result),
///         ZoneName = exampleAzurermDnsZone.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Ttl = 3600,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = exampleAzurermCdnFrontdoorCustomDomain.ValidationToken,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: ".",
/// 			Input: []interface{}{
/// 				"_dnsauth",
/// 				std.Split(ctx, &std.SplitArgs{
/// 					Separator: ".",
/// 					Text:      exampleAzurermCdnFrontdoorCustomDomain.HostName,
/// 				}, nil).Result[0],
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name:              pulumi.String(invokeJoin.Result),
/// 			ZoneName:          pulumi.Any(exampleAzurermDnsZone.Name),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Ttl:               pulumi.Int(3600),
/// 			Records: dns.TxtRecordRecordArray{
/// 				&dns.TxtRecordRecordArgs{
/// 					Value: pulumi.Any(exampleAzurermCdnFrontdoorCustomDomain.ValidationToken),
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
/// resource "azure_dns_txtrecord" "example" {
///   name                = join(".", ["_dnsauth", split(".", exampleAzurermCdnFrontdoorCustomDomain.hostName)[0]])
///   zone_name           = exampleAzurermDnsZone.name
///   resource_group_name = exampleAzurermResourceGroup.name
///   ttl                 = 3600
///   records {
///     value = exampleAzurermCdnFrontdoorCustomDomain.validationToken
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var example = new TxtRecord("example", TxtRecordArgs.builder()
///             .name(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     "_dnsauth",
///                     StdFunctions.split(SplitArgs.builder()
///                         .separator(".")
///                         .text(exampleAzurermCdnFrontdoorCustomDomain.hostName())
///                         .build()).result()[0])
///                 .build()).result())
///             .zoneName(exampleAzurermDnsZone.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .ttl(3600)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleAzurermCdnFrontdoorCustomDomain.validationToken())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:dns:TxtRecord
///     properties:
///       name:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - _dnsauth
///               - fn::invoke:
///                   function: std:split
///                   arguments:
///                     separator: .
///                     text: ${exampleAzurermCdnFrontdoorCustomDomain.hostName}
///                   return: result[0]
///           return: result
///       zoneName: ${exampleAzurermDnsZone.name}
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       ttl: 3600
///       records:
///         - value: ${exampleAzurermCdnFrontdoorCustomDomain.validationToken}
/// ```
///
///
/// ## Example CNAME Record Usage
///
/// &gt; **Note:** When managing the CNAME record using Terraform, you may need to ensure your Custom Domain is associated with a Front Door Route (and any applicable Security Policy) before creating the CNAME record. This example uses `dependsOn` to enforce that ordering.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.dns.CNameRecord("example", {
///     name: std.split({
///         separator: ".",
///         text: exampleAzurermCdnFrontdoorCustomDomain.hostName,
///     }).then(invoke => invoke.result?.[0]),
///     zoneName: exampleAzurermDnsZone.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     ttl: 3600,
///     record: exampleAzurermCdnFrontdoorEndpoint.hostName,
/// }, {
///     dependsOn: [
///         exampleAzurermCdnFrontdoorRoute,
///         exampleAzurermCdnFrontdoorSecurityPolicy,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.dns.CNameRecord("example",
///     name=std.split(separator=".",
///         text=example_azurerm_cdn_frontdoor_custom_domain["hostName"]).result[0],
///     zone_name=example_azurerm_dns_zone["name"],
///     resource_group_name=example_azurerm_resource_group["name"],
///     ttl=3600,
///     record=example_azurerm_cdn_frontdoor_endpoint["hostName"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_azurerm_cdn_frontdoor_route,
///             example_azurerm_cdn_frontdoor_security_policy,
///         ]))
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
///     var example = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = Std.Split.Invoke(new()
///         {
///             Separator = ".",
///             Text = exampleAzurermCdnFrontdoorCustomDomain.HostName,
///         }).Apply(invoke => invoke.Result[0]),
///         ZoneName = exampleAzurermDnsZone.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Ttl = 3600,
///         Record = exampleAzurermCdnFrontdoorEndpoint.HostName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAzurermCdnFrontdoorRoute,
///             exampleAzurermCdnFrontdoorSecurityPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// 			Separator: ".",
/// 			Text:      exampleAzurermCdnFrontdoorCustomDomain.HostName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String(invokeSplit.Result[0]),
/// 			ZoneName:          pulumi.Any(exampleAzurermDnsZone.Name),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Ttl:               pulumi.Int(3600),
/// 			Record:            pulumi.Any(exampleAzurermCdnFrontdoorEndpoint.HostName),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAzurermCdnFrontdoorRoute,
/// 			exampleAzurermCdnFrontdoorSecurityPolicy,
/// 		}))
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_dns_cnamerecord" "example" {
///   depends_on          = [exampleAzurermCdnFrontdoorRoute, exampleAzurermCdnFrontdoorSecurityPolicy]
///   name                = split(".", exampleAzurermCdnFrontdoorCustomDomain.hostName)[0]
///   zone_name           = exampleAzurermDnsZone.name
///   resource_group_name = exampleAzurermResourceGroup.name
///   ttl                 = 3600
///   record              = exampleAzurermCdnFrontdoorEndpoint.hostName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new CNameRecord("example", CNameRecordArgs.builder()
///             .name(StdFunctions.split(SplitArgs.builder()
///                 .separator(".")
///                 .text(exampleAzurermCdnFrontdoorCustomDomain.hostName())
///                 .build()).result()[0])
///             .zoneName(exampleAzurermDnsZone.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .ttl(3600)
///             .record(exampleAzurermCdnFrontdoorEndpoint.hostName())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAzurermCdnFrontdoorRoute,
///                     exampleAzurermCdnFrontdoorSecurityPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:dns:CNameRecord
///     properties:
///       name:
///         fn::invoke:
///           function: std:split
///           arguments:
///             separator: .
///             text: ${exampleAzurermCdnFrontdoorCustomDomain.hostName}
///           return: result[0]
///       zoneName: ${exampleAzurermDnsZone.name}
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       ttl: 3600
///       record: ${exampleAzurermCdnFrontdoorEndpoint.hostName}
///     options:
///       dependsOn:
///         - ${exampleAzurermCdnFrontdoorRoute}
///         - ${exampleAzurermCdnFrontdoorSecurityPolicy}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-04-15
///
/// ## Import
///
/// A Front Door Custom Domain can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/customDomains/customDomain1
/// ```
class FrontdoorCustomDomain extends pulumi.CustomResource {
  /// The ID of the Front Door Profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain.
  ///
  /// &gt; **Note:** If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  ///
  /// &lt;!-- * `preValidatedCdnFrontdoorCustomDomainId` - (Optional) The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door.
  ///
  /// &gt; **Note:** Currently `preValidatedCdnFrontdoorCustomDomainId` only supports domains validated by Static Web App. --&gt;
  late final pulumi.Output<String?> dnsZoneId;
  /// The date and time that the token expires.
  late final pulumi.Output<String> expirationDate;
  /// The host name of the domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `hostName` field must be the FQDN of your domain (e.g. `contoso.fabrikam.com`).
  late final pulumi.Output<String> hostName;
  /// The name which should be used for this Front Door Custom Domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number, and contain only letters, numbers, and hyphens.
  late final pulumi.Output<String> name;
  /// A `tls` block as defined below.
  late final pulumi.Output<FrontdoorCustomDomainTls> tls;
  /// Challenge used for DNS TXT record or file based validation.
  late final pulumi.Output<String> validationToken;

  /// Creates a new [FrontdoorCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorCustomDomain]. {@macro pulumi_cdn_frontdoor_custom_domain_frontdoor_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorCustomDomain(
    String name, {
    FrontdoorCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    dnsZoneId = registerOutput<String?>('dnsZoneId');
    expirationDate = registerOutput<String>('expirationDate');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tls = registerOutput<FrontdoorCustomDomainTls>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorCustomDomainTls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationToken = registerOutput<String>('validationToken');
  }

  /// Gets an existing [FrontdoorCustomDomain] resource's state with the given [name] and [id].
  static FrontdoorCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorCustomDomainState? state,
  }) {
    return FrontdoorCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    dnsZoneId = registerOutput<String?>('dnsZoneId');
    expirationDate = registerOutput<String>('expirationDate');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tls = registerOutput<FrontdoorCustomDomainTls>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorCustomDomainTls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationToken = registerOutput<String>('validationToken');
  }
}
