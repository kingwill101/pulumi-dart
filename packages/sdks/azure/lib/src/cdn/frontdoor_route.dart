import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_route_args.dart';
import 'frontdoor_route_cache.dart';
import 'frontdoor_route_state.dart';

/// Manages a Front Door (standard/premium) Route.
///
/// &gt; **Note:** The `azure.cdn.FrontdoorRoute` resource must **explicitly** reference its associated `azure.cdn.FrontdoorOrigin` resource(s). This can be achieved either by using a `dependsOn` meta-argument that points to the `azure.cdn.FrontdoorOrigin` resource(s), or by specifying the `azure.cdn.FrontdoorOrigin` IDs via the `cdnFrontdoorOriginIds` field.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "example.com",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-originGroup",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     loadBalancing: {
///         additionalLatencyInMilliseconds: 0,
///         sampleSize: 16,
///         successfulSamplesRequired: 3,
///     },
/// });
/// const exampleFrontdoorOrigin = new azure.cdn.FrontdoorOrigin("example", {
///     name: "example-origin",
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     enabled: true,
///     certificateNameCheckEnabled: false,
///     hostName: "contoso.com",
///     httpPort: 80,
///     httpsPort: 443,
///     originHostHeader: "www.contoso.com",
///     priority: 1,
///     weight: 1,
/// });
/// const exampleFrontdoorEndpoint = new azure.cdn.FrontdoorEndpoint("example", {
///     name: "example-endpoint",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
/// });
/// const exampleFrontdoorRuleSet = new azure.cdn.FrontdoorRuleSet("example", {
///     name: "ExampleRuleSet",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
/// });
/// const contoso = new azure.cdn.FrontdoorCustomDomain("contoso", {
///     name: "contoso-custom-domain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: std.joinOutput({
///         separator: ".",
///         input: [
///             "contoso",
///             exampleZone.name,
///         ],
///     }).result,
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumTlsVersion: "TLS12",
///     },
/// });
/// const fabrikam = new azure.cdn.FrontdoorCustomDomain("fabrikam", {
///     name: "fabrikam-custom-domain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: std.joinOutput({
///         separator: ".",
///         input: [
///             "fabrikam",
///             exampleZone.name,
///         ],
///     }).result,
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumTlsVersion: "TLS12",
///     },
/// });
/// const exampleFrontdoorRoute = new azure.cdn.FrontdoorRoute("example", {
///     name: "example-route",
///     cdnFrontdoorEndpointId: exampleFrontdoorEndpoint.id,
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     cdnFrontdoorOriginIds: [exampleFrontdoorOrigin.id],
///     cdnFrontdoorRuleSetIds: [exampleFrontdoorRuleSet.id],
///     enabled: true,
///     forwardingProtocol: "HttpsOnly",
///     httpsRedirectEnabled: true,
///     patternsToMatches: ["/*"],
///     supportedProtocols: [
///         "Http",
///         "Https",
///     ],
///     cdnFrontdoorCustomDomainIds: [
///         contoso.id,
///         fabrikam.id,
///     ],
///     linkToDefaultDomain: false,
///     cache: {
///         queryStringCachingBehavior: "IgnoreSpecifiedQueryStrings",
///         queryStrings: [
///             "account",
///             "settings",
///         ],
///         compressionEnabled: true,
///         contentTypesToCompresses: [
///             "text/html",
///             "text/javascript",
///             "text/xml",
///         ],
///     },
/// });
/// const contosoFrontdoorCustomDomainAssociation = new azure.cdn.FrontdoorCustomDomainAssociation("contoso", {
///     cdnFrontdoorCustomDomainId: contoso.id,
///     cdnFrontdoorRouteIds: [exampleFrontdoorRoute.id],
/// });
/// const fabrikamFrontdoorCustomDomainAssociation = new azure.cdn.FrontdoorCustomDomainAssociation("fabrikam", {
///     cdnFrontdoorCustomDomainId: fabrikam.id,
///     cdnFrontdoorRouteIds: [exampleFrontdoorRoute.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="example.com",
///     resource_group_name=example.name)
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-originGroup",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     load_balancing={
///         "additional_latency_in_milliseconds": 0,
///         "sample_size": 16,
///         "successful_samples_required": 3,
///     })
/// example_frontdoor_origin = azure.cdn.FrontdoorOrigin("example",
///     name="example-origin",
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     enabled=True,
///     certificate_name_check_enabled=False,
///     host_name="contoso.com",
///     http_port=80,
///     https_port=443,
///     origin_host_header="www.contoso.com",
///     priority=1,
///     weight=1)
/// example_frontdoor_endpoint = azure.cdn.FrontdoorEndpoint("example",
///     name="example-endpoint",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id)
/// example_frontdoor_rule_set = azure.cdn.FrontdoorRuleSet("example",
///     name="ExampleRuleSet",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id)
/// contoso = azure.cdn.FrontdoorCustomDomain("contoso",
///     name="contoso-custom-domain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name=std.join_output(separator=".",
///         input=[
///             "contoso",
///             example_zone.name,
///         ]).result,
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_tls_version": "TLS12",
///     })
/// fabrikam = azure.cdn.FrontdoorCustomDomain("fabrikam",
///     name="fabrikam-custom-domain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name=std.join_output(separator=".",
///         input=[
///             "fabrikam",
///             example_zone.name,
///         ]).result,
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_tls_version": "TLS12",
///     })
/// example_frontdoor_route = azure.cdn.FrontdoorRoute("example",
///     name="example-route",
///     cdn_frontdoor_endpoint_id=example_frontdoor_endpoint.id,
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     cdn_frontdoor_origin_ids=[example_frontdoor_origin.id],
///     cdn_frontdoor_rule_set_ids=[example_frontdoor_rule_set.id],
///     enabled=True,
///     forwarding_protocol="HttpsOnly",
///     https_redirect_enabled=True,
///     patterns_to_matches=["/*"],
///     supported_protocols=[
///         "Http",
///         "Https",
///     ],
///     cdn_frontdoor_custom_domain_ids=[
///         contoso.id,
///         fabrikam.id,
///     ],
///     link_to_default_domain=False,
///     cache={
///         "query_string_caching_behavior": "IgnoreSpecifiedQueryStrings",
///         "query_strings": [
///             "account",
///             "settings",
///         ],
///         "compression_enabled": True,
///         "content_types_to_compresses": [
///             "text/html",
///             "text/javascript",
///             "text/xml",
///         ],
///     })
/// contoso_frontdoor_custom_domain_association = azure.cdn.FrontdoorCustomDomainAssociation("contoso",
///     cdn_frontdoor_custom_domain_id=contoso.id,
///     cdn_frontdoor_route_ids=[example_frontdoor_route.id])
/// fabrikam_frontdoor_custom_domain_association = azure.cdn.FrontdoorCustomDomainAssociation("fabrikam",
///     cdn_frontdoor_custom_domain_id=fabrikam.id,
///     cdn_frontdoor_route_ids=[example_frontdoor_route.id])
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "example.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-originGroup",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         LoadBalancing = new Azure.Cdn.Inputs.FrontdoorOriginGroupLoadBalancingArgs
///         {
///             AdditionalLatencyInMilliseconds = 0,
///             SampleSize = 16,
///             SuccessfulSamplesRequired = 3,
///         },
///     });
///
///     var exampleFrontdoorOrigin = new Azure.Cdn.FrontdoorOrigin("example", new()
///     {
///         Name = "example-origin",
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         Enabled = true,
///         CertificateNameCheckEnabled = false,
///         HostName = "contoso.com",
///         HttpPort = 80,
///         HttpsPort = 443,
///         OriginHostHeader = "www.contoso.com",
///         Priority = 1,
///         Weight = 1,
///     });
///
///     var exampleFrontdoorEndpoint = new Azure.Cdn.FrontdoorEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///     });
///
///     var exampleFrontdoorRuleSet = new Azure.Cdn.FrontdoorRuleSet("example", new()
///     {
///         Name = "ExampleRuleSet",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///     });
///
///     var contoso = new Azure.Cdn.FrontdoorCustomDomain("contoso", new()
///     {
///         Name = "contoso-custom-domain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 "contoso",
///                 exampleZone.Name,
///             },
///         }).Apply(invoke => invoke.Result),
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumTlsVersion = "TLS12",
///         },
///     });
///
///     var fabrikam = new Azure.Cdn.FrontdoorCustomDomain("fabrikam", new()
///     {
///         Name = "fabrikam-custom-domain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 "fabrikam",
///                 exampleZone.Name,
///             },
///         }).Apply(invoke => invoke.Result),
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumTlsVersion = "TLS12",
///         },
///     });
///
///     var exampleFrontdoorRoute = new Azure.Cdn.FrontdoorRoute("example", new()
///     {
///         Name = "example-route",
///         CdnFrontdoorEndpointId = exampleFrontdoorEndpoint.Id,
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         CdnFrontdoorOriginIds = new[]
///         {
///             exampleFrontdoorOrigin.Id,
///         },
///         CdnFrontdoorRuleSetIds = new[]
///         {
///             exampleFrontdoorRuleSet.Id,
///         },
///         Enabled = true,
///         ForwardingProtocol = "HttpsOnly",
///         HttpsRedirectEnabled = true,
///         PatternsToMatches = new[]
///         {
///             "/*",
///         },
///         SupportedProtocols = new[]
///         {
///             "Http",
///             "Https",
///         },
///         CdnFrontdoorCustomDomainIds = new[]
///         {
///             contoso.Id,
///             fabrikam.Id,
///         },
///         LinkToDefaultDomain = false,
///         Cache = new Azure.Cdn.Inputs.FrontdoorRouteCacheArgs
///         {
///             QueryStringCachingBehavior = "IgnoreSpecifiedQueryStrings",
///             QueryStrings = new[]
///             {
///                 "account",
///                 "settings",
///             },
///             CompressionEnabled = true,
///             ContentTypesToCompresses = new[]
///             {
///                 "text/html",
///                 "text/javascript",
///                 "text/xml",
///             },
///         },
///     });
///
///     var contosoFrontdoorCustomDomainAssociation = new Azure.Cdn.FrontdoorCustomDomainAssociation("contoso", new()
///     {
///         CdnFrontdoorCustomDomainId = contoso.Id,
///         CdnFrontdoorRouteIds = new[]
///         {
///             exampleFrontdoorRoute.Id,
///         },
///     });
///
///     var fabrikamFrontdoorCustomDomainAssociation = new Azure.Cdn.FrontdoorCustomDomainAssociation("fabrikam", new()
///     {
///         CdnFrontdoorCustomDomainId = fabrikam.Id,
///         CdnFrontdoorRouteIds = new[]
///         {
///             exampleFrontdoorRoute.Id,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("example.com"),
/// 			ResourceGroupName: example.Name,
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
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                  pulumi.String("example-originGroup"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancing: &cdn.FrontdoorOriginGroupLoadBalancingArgs{
/// 				AdditionalLatencyInMilliseconds: pulumi.Int(0),
/// 				SampleSize:                      pulumi.Int(16),
/// 				SuccessfulSamplesRequired:       pulumi.Int(3),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOrigin, err := cdn.NewFrontdoorOrigin(ctx, "example", &cdn.FrontdoorOriginArgs{
/// 			Name:                        pulumi.String("example-origin"),
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Enabled:                     pulumi.Bool(true),
/// 			CertificateNameCheckEnabled: pulumi.Bool(false),
/// 			HostName:                    pulumi.String("contoso.com"),
/// 			HttpPort:                    pulumi.Int(80),
/// 			HttpsPort:                   pulumi.Int(443),
/// 			OriginHostHeader:            pulumi.String("www.contoso.com"),
/// 			Priority:                    pulumi.Int(1),
/// 			Weight:                      pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorEndpoint, err := cdn.NewFrontdoorEndpoint(ctx, "example", &cdn.FrontdoorEndpointArgs{
/// 			Name:                  pulumi.String("example-endpoint"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorRuleSet, err := cdn.NewFrontdoorRuleSet(ctx, "example", &cdn.FrontdoorRuleSetArgs{
/// 			Name:                  pulumi.String("ExampleRuleSet"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		contoso, err := cdn.NewFrontdoorCustomDomain(ctx, "contoso", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("contoso-custom-domain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			DnsZoneId:             exampleZone.ID().ToIDOutput().ToStringOutput(),
/// 			HostName: std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("contoso"),
/// 					exampleZone.Name,
/// 				},
/// 			}, nil).Result(),
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType:   pulumi.String("ManagedCertificate"),
/// 				MinimumTlsVersion: pulumi.String("TLS12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fabrikam, err := cdn.NewFrontdoorCustomDomain(ctx, "fabrikam", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("fabrikam-custom-domain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			DnsZoneId:             exampleZone.ID().ToIDOutput().ToStringOutput(),
/// 			HostName: std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("fabrikam"),
/// 					exampleZone.Name,
/// 				},
/// 			}, nil).Result(),
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType:   pulumi.String("ManagedCertificate"),
/// 				MinimumTlsVersion: pulumi.String("TLS12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorRoute, err := cdn.NewFrontdoorRoute(ctx, "example", &cdn.FrontdoorRouteArgs{
/// 			Name:                      pulumi.String("example-route"),
/// 			CdnFrontdoorEndpointId:    exampleFrontdoorEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorOriginIds: pulumi.StringArray{
/// 				exampleFrontdoorOrigin.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			CdnFrontdoorRuleSetIds: pulumi.StringArray{
/// 				exampleFrontdoorRuleSet.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Enabled:              pulumi.Bool(true),
/// 			ForwardingProtocol:   pulumi.String("HttpsOnly"),
/// 			HttpsRedirectEnabled: pulumi.Bool(true),
/// 			PatternsToMatches: pulumi.StringArray{
/// 				pulumi.String("/*"),
/// 			},
/// 			SupportedProtocols: pulumi.StringArray{
/// 				pulumi.String("Http"),
/// 				pulumi.String("Https"),
/// 			},
/// 			CdnFrontdoorCustomDomainIds: pulumi.StringArray{
/// 				contoso.ID().ToIDOutput().ToStringOutput(),
/// 				fabrikam.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			LinkToDefaultDomain: pulumi.Bool(false),
/// 			Cache: &cdn.FrontdoorRouteCacheArgs{
/// 				QueryStringCachingBehavior: pulumi.String("IgnoreSpecifiedQueryStrings"),
/// 				QueryStrings: pulumi.StringArray{
/// 					pulumi.String("account"),
/// 					pulumi.String("settings"),
/// 				},
/// 				CompressionEnabled: pulumi.Bool(true),
/// 				ContentTypesToCompresses: pulumi.StringArray{
/// 					pulumi.String("text/html"),
/// 					pulumi.String("text/javascript"),
/// 					pulumi.String("text/xml"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorCustomDomainAssociation(ctx, "contoso", &cdn.FrontdoorCustomDomainAssociationArgs{
/// 			CdnFrontdoorCustomDomainId: contoso.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorRouteIds: pulumi.StringArray{
/// 				exampleFrontdoorRoute.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorCustomDomainAssociation(ctx, "fabrikam", &cdn.FrontdoorCustomDomainAssociationArgs{
/// 			CdnFrontdoorCustomDomainId: fabrikam.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorRouteIds: pulumi.StringArray{
/// 				exampleFrontdoorRoute.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-cdn-frontdoor"
///   location = "West Europe"
/// }
/// resource "azure_dns_zone" "example" {
///   name                = "example.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                     = "example-originGroup"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   load_balancing = {
///     additional_latency_in_milliseconds = 0
///     sample_size                        = 16
///     successful_samples_required        = 3
///   }
/// }
/// resource "azure_cdn_frontdoororigin" "example" {
///   name                           = "example-origin"
///   cdn_frontdoor_origin_group_id  = azure_cdn_frontdoororigingroup.example.id
///   enabled                        = true
///   certificate_name_check_enabled = false
///   host_name                      = "contoso.com"
///   http_port                      = 80
///   https_port                     = 443
///   origin_host_header             = "www.contoso.com"
///   priority                       = 1
///   weight                         = 1
/// }
/// resource "azure_cdn_frontdoorendpoint" "example" {
///   name                     = "example-endpoint"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
/// }
/// resource "azure_cdn_frontdoorruleset" "example" {
///   name                     = "ExampleRuleSet"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
/// }
/// resource "azure_cdn_frontdoorcustomdomain" "contoso" {
///   name                     = "contoso-custom-domain"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   dns_zone_id              = azure_dns_zone.example.id
///   host_name                = join(".", ["contoso", azure_dns_zone.example.name])
///   tls = {
///     certificate_type    = "ManagedCertificate"
///     minimum_tls_version = "TLS12"
///   }
/// }
/// resource "azure_cdn_frontdoorcustomdomain" "fabrikam" {
///   name                     = "fabrikam-custom-domain"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   dns_zone_id              = azure_dns_zone.example.id
///   host_name                = join(".", ["fabrikam", azure_dns_zone.example.name])
///   tls = {
///     certificate_type    = "ManagedCertificate"
///     minimum_tls_version = "TLS12"
///   }
/// }
/// resource "azure_cdn_frontdoorroute" "example" {
///   name                            = "example-route"
///   cdn_frontdoor_endpoint_id       = azure_cdn_frontdoorendpoint.example.id
///   cdn_frontdoor_origin_group_id   = azure_cdn_frontdoororigingroup.example.id
///   cdn_frontdoor_origin_ids        = [azure_cdn_frontdoororigin.example.id]
///   cdn_frontdoor_rule_set_ids      = [azure_cdn_frontdoorruleset.example.id]
///   enabled                         = true
///   forwarding_protocol             = "HttpsOnly"
///   https_redirect_enabled          = true
///   patterns_to_matches             = ["/*"]
///   supported_protocols             = ["Http", "Https"]
///   cdn_frontdoor_custom_domain_ids = [azure_cdn_frontdoorcustomdomain.contoso.id, azure_cdn_frontdoorcustomdomain.fabrikam.id]
///   link_to_default_domain          = false
///   cache = {
///     query_string_caching_behavior = "IgnoreSpecifiedQueryStrings"
///     query_strings                 = ["account", "settings"]
///     compression_enabled           = true
///     content_types_to_compresses   = ["text/html", "text/javascript", "text/xml"]
///   }
/// }
/// resource "azure_cdn_frontdoorcustomdomainassociation" "contoso" {
///   cdn_frontdoor_custom_domain_id = azure_cdn_frontdoorcustomdomain.contoso.id
///   cdn_frontdoor_route_ids        = [azure_cdn_frontdoorroute.example.id]
/// }
/// resource "azure_cdn_frontdoorcustomdomainassociation" "fabrikam" {
///   cdn_frontdoor_custom_domain_id = azure_cdn_frontdoorcustomdomain.fabrikam.id
///   cdn_frontdoor_route_ids        = [azure_cdn_frontdoorroute.example.id]
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
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
/// import com.pulumi.azure.cdn.FrontdoorEndpoint;
/// import com.pulumi.azure.cdn.FrontdoorEndpointArgs;
/// import com.pulumi.azure.cdn.FrontdoorRuleSet;
/// import com.pulumi.azure.cdn.FrontdoorRuleSetArgs;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomain;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorCustomDomainTlsArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.azure.cdn.FrontdoorRoute;
/// import com.pulumi.azure.cdn.FrontdoorRouteArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorRouteCacheArgs;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainAssociation;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainAssociationArgs;
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
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-originGroup")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .additionalLatencyInMilliseconds(0)
///                 .sampleSize(16)
///                 .successfulSamplesRequired(3)
///                 .build())
///             .build());
///
///         var exampleFrontdoorOrigin = new FrontdoorOrigin("exampleFrontdoorOrigin", FrontdoorOriginArgs.builder()
///             .name("example-origin")
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .enabled(true)
///             .certificateNameCheckEnabled(false)
///             .hostName("contoso.com")
///             .httpPort(80)
///             .httpsPort(443)
///             .originHostHeader("www.contoso.com")
///             .priority(1)
///             .weight(1)
///             .build());
///
///         var exampleFrontdoorEndpoint = new FrontdoorEndpoint("exampleFrontdoorEndpoint", FrontdoorEndpointArgs.builder()
///             .name("example-endpoint")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .build());
///
///         var exampleFrontdoorRuleSet = new FrontdoorRuleSet("exampleFrontdoorRuleSet", FrontdoorRuleSetArgs.builder()
///             .name("ExampleRuleSet")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .build());
///
///         var contoso = new FrontdoorCustomDomain("contoso", FrontdoorCustomDomainArgs.builder()
///             .name("contoso-custom-domain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     "contoso",
///                     exampleZone.name())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumTlsVersion("TLS12")
///                 .build())
///             .build());
///
///         var fabrikam = new FrontdoorCustomDomain("fabrikam", FrontdoorCustomDomainArgs.builder()
///             .name("fabrikam-custom-domain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     "fabrikam",
///                     exampleZone.name())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumTlsVersion("TLS12")
///                 .build())
///             .build());
///
///         var exampleFrontdoorRoute = new FrontdoorRoute("exampleFrontdoorRoute", FrontdoorRouteArgs.builder()
///             .name("example-route")
///             .cdnFrontdoorEndpointId(exampleFrontdoorEndpoint.id())
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .cdnFrontdoorOriginIds(exampleFrontdoorOrigin.id())
///             .cdnFrontdoorRuleSetIds(exampleFrontdoorRuleSet.id())
///             .enabled(true)
///             .forwardingProtocol("HttpsOnly")
///             .httpsRedirectEnabled(true)
///             .patternsToMatches("/*")
///             .supportedProtocols(
///                 "Http",
///                 "Https")
///             .cdnFrontdoorCustomDomainIds(
///                 contoso.id(),
///                 fabrikam.id())
///             .linkToDefaultDomain(false)
///             .cache(FrontdoorRouteCacheArgs.builder()
///                 .queryStringCachingBehavior("IgnoreSpecifiedQueryStrings")
///                 .queryStrings(
///                     "account",
///                     "settings")
///                 .compressionEnabled(true)
///                 .contentTypesToCompresses(
///                     "text/html",
///                     "text/javascript",
///                     "text/xml")
///                 .build())
///             .build());
///
///         var contosoFrontdoorCustomDomainAssociation = new FrontdoorCustomDomainAssociation("contosoFrontdoorCustomDomainAssociation", FrontdoorCustomDomainAssociationArgs.builder()
///             .cdnFrontdoorCustomDomainId(contoso.id())
///             .cdnFrontdoorRouteIds(exampleFrontdoorRoute.id())
///             .build());
///
///         var fabrikamFrontdoorCustomDomainAssociation = new FrontdoorCustomDomainAssociation("fabrikamFrontdoorCustomDomainAssociation", FrontdoorCustomDomainAssociationArgs.builder()
///             .cdnFrontdoorCustomDomainId(fabrikam.id())
///             .cdnFrontdoorRouteIds(exampleFrontdoorRoute.id())
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
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: example.com
///       resourceGroupName: ${example.name}
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-originGroup
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       loadBalancing:
///         additionalLatencyInMilliseconds: 0
///         sampleSize: 16
///         successfulSamplesRequired: 3
///   exampleFrontdoorOrigin:
///     type: azure:cdn:FrontdoorOrigin
///     name: example
///     properties:
///       name: example-origin
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       enabled: true
///       certificateNameCheckEnabled: false
///       hostName: contoso.com
///       httpPort: 80
///       httpsPort: 443
///       originHostHeader: www.contoso.com
///       priority: 1
///       weight: 1
///   exampleFrontdoorEndpoint:
///     type: azure:cdn:FrontdoorEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///   exampleFrontdoorRuleSet:
///     type: azure:cdn:FrontdoorRuleSet
///     name: example
///     properties:
///       name: ExampleRuleSet
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///   contoso:
///     type: azure:cdn:FrontdoorCustomDomain
///     properties:
///       name: contoso-custom-domain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - contoso
///               - ${exampleZone.name}
///           return: result
///       tls:
///         certificateType: ManagedCertificate
///         minimumTlsVersion: TLS12
///   fabrikam:
///     type: azure:cdn:FrontdoorCustomDomain
///     properties:
///       name: fabrikam-custom-domain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - fabrikam
///               - ${exampleZone.name}
///           return: result
///       tls:
///         certificateType: ManagedCertificate
///         minimumTlsVersion: TLS12
///   exampleFrontdoorRoute:
///     type: azure:cdn:FrontdoorRoute
///     name: example
///     properties:
///       name: example-route
///       cdnFrontdoorEndpointId: ${exampleFrontdoorEndpoint.id}
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       cdnFrontdoorOriginIds:
///         - ${exampleFrontdoorOrigin.id}
///       cdnFrontdoorRuleSetIds:
///         - ${exampleFrontdoorRuleSet.id}
///       enabled: true
///       forwardingProtocol: HttpsOnly
///       httpsRedirectEnabled: true
///       patternsToMatches:
///         - /*
///       supportedProtocols:
///         - Http
///         - Https
///       cdnFrontdoorCustomDomainIds:
///         - ${contoso.id}
///         - ${fabrikam.id}
///       linkToDefaultDomain: false
///       cache:
///         queryStringCachingBehavior: IgnoreSpecifiedQueryStrings
///         queryStrings:
///           - account
///           - settings
///         compressionEnabled: true
///         contentTypesToCompresses:
///           - text/html
///           - text/javascript
///           - text/xml
///   contosoFrontdoorCustomDomainAssociation:
///     type: azure:cdn:FrontdoorCustomDomainAssociation
///     name: contoso
///     properties:
///       cdnFrontdoorCustomDomainId: ${contoso.id}
///       cdnFrontdoorRouteIds:
///         - ${exampleFrontdoorRoute.id}
///   fabrikamFrontdoorCustomDomainAssociation:
///     type: azure:cdn:FrontdoorCustomDomainAssociation
///     name: fabrikam
///     properties:
///       cdnFrontdoorCustomDomainId: ${fabrikam.id}
///       cdnFrontdoorRouteIds:
///         - ${exampleFrontdoorRoute.id}
/// ```
///
///
/// ## Import
///
/// Front Door Routes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorRoute:FrontdoorRoute example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/afdEndpoints/endpoint1/routes/route1
/// ```
class FrontdoorRoute extends pulumi.CustomResource {
  /// A `cache` block as defined below.
  ///
  /// &gt; **Note:** To disable caching, do not provide the `cache` block in the configuration file.
  late final pulumi.Output<FrontdoorRouteCache?> cache;
  /// The IDs of the Front Door Custom Domains which are associated with this Front Door Route.
  late final pulumi.Output<List<String>?> cdnFrontdoorCustomDomainIds;
  /// The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created.
  late final pulumi.Output<String> cdnFrontdoorEndpointId;
  /// The resource ID of the Front Door Origin Group where this Front Door Route should be created.
  late final pulumi.Output<String> cdnFrontdoorOriginGroupId;
  /// One or more Front Door Origin resource IDs for this Front Door Route.
  ///
  /// &gt; **Note:** The `cdnFrontdoorOriginIds` field is not transmitted to the Azure API; it is used exclusively by Terraform to determine correct resource provisioning and destruction order. If this field is omitted, a `dependsOn` meta-argument referencing the corresponding `azure.cdn.FrontdoorOrigin` resource(s) is required. When importing an existing `azure.cdn.FrontdoorRoute resource`, you must manually add either the `cdnFrontdoorOriginIds` field or the `dependsOn` meta-argument to the configuration post-import.
  late final pulumi.Output<List<String>?> cdnFrontdoorOriginIds;
  /// A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`).
  late final pulumi.Output<String?> cdnFrontdoorOriginPath;
  /// A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route.
  late final pulumi.Output<List<String>?> cdnFrontdoorRuleSetIds;
  /// Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`.
  late final pulumi.Output<String?> forwardingProtocol;
  /// Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** The `httpsRedirectEnabled` rule is the first rule that will be executed.
  late final pulumi.Output<bool?> httpsRedirectEnabled;
  /// Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> linkToDefaultDomain;
  /// The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created.
  late final pulumi.Output<String> name;
  /// The route patterns of the rule.
  late final pulumi.Output<List<String>> patternsToMatches;
  /// One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`.
  ///
  /// &gt; **Note:** If `httpsRedirectEnabled` is set to `true` the `supportedProtocols` field must contain both `Http` and `Https` values.
  late final pulumi.Output<List<String>> supportedProtocols;

  /// Creates a new [FrontdoorRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorRoute]. {@macro pulumi_cdn_frontdoor_route_frontdoor_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorRoute(
    String name, {
    FrontdoorRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorRoute:FrontdoorRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cache = registerOutput<FrontdoorRouteCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorRouteCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cdnFrontdoorCustomDomainIds = registerOutput<List<String>?>('cdnFrontdoorCustomDomainIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorEndpointId = registerOutput<String>('cdnFrontdoorEndpointId');
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    cdnFrontdoorOriginIds = registerOutput<List<String>?>('cdnFrontdoorOriginIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorOriginPath = registerOutput<String?>('cdnFrontdoorOriginPath');
    cdnFrontdoorRuleSetIds = registerOutput<List<String>?>('cdnFrontdoorRuleSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardingProtocol = registerOutput<String?>('forwardingProtocol');
    httpsRedirectEnabled = registerOutput<bool?>('httpsRedirectEnabled');
    linkToDefaultDomain = registerOutput<bool?>('linkToDefaultDomain');
    this.name = registerOutput<String>('name');
    patternsToMatches = registerOutput<List<String>>('patternsToMatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedProtocols = registerOutput<List<String>>('supportedProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [FrontdoorRoute] resource's state with the given [name] and [id].
  static FrontdoorRoute get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrontdoorRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrontdoorRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorRoute:FrontdoorRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cache = registerOutput<FrontdoorRouteCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorRouteCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cdnFrontdoorCustomDomainIds = registerOutput<List<String>?>('cdnFrontdoorCustomDomainIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorEndpointId = registerOutput<String>('cdnFrontdoorEndpointId');
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    cdnFrontdoorOriginIds = registerOutput<List<String>?>('cdnFrontdoorOriginIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorOriginPath = registerOutput<String?>('cdnFrontdoorOriginPath');
    cdnFrontdoorRuleSetIds = registerOutput<List<String>?>('cdnFrontdoorRuleSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardingProtocol = registerOutput<String?>('forwardingProtocol');
    httpsRedirectEnabled = registerOutput<bool?>('httpsRedirectEnabled');
    linkToDefaultDomain = registerOutput<bool?>('linkToDefaultDomain');
    this.name = registerOutput<String>('name');
    patternsToMatches = registerOutput<List<String>>('patternsToMatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedProtocols = registerOutput<List<String>>('supportedProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [FrontdoorRoute] resource.
  FrontdoorRoute.reference(String urn)
    : super(
        'azure:cdn/frontdoorRoute:FrontdoorRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cache = registerOutput<FrontdoorRouteCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorRouteCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cdnFrontdoorCustomDomainIds = registerOutput<List<String>?>('cdnFrontdoorCustomDomainIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorEndpointId = registerOutput<String>('cdnFrontdoorEndpointId');
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    cdnFrontdoorOriginIds = registerOutput<List<String>?>('cdnFrontdoorOriginIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cdnFrontdoorOriginPath = registerOutput<String?>('cdnFrontdoorOriginPath');
    cdnFrontdoorRuleSetIds = registerOutput<List<String>?>('cdnFrontdoorRuleSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardingProtocol = registerOutput<String?>('forwardingProtocol');
    httpsRedirectEnabled = registerOutput<bool?>('httpsRedirectEnabled');
    linkToDefaultDomain = registerOutput<bool?>('linkToDefaultDomain');
    this.name = registerOutput<String>('name');
    patternsToMatches = registerOutput<List<String>>('patternsToMatches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedProtocols = registerOutput<List<String>>('supportedProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
