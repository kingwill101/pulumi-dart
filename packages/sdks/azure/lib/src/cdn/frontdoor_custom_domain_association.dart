import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_association_args.dart';
import 'frontdoor_custom_domain_association_state.dart';

/// Manages the association between a Front Door (standard/premium) Custom Domain and one or more Front Door (standard/premium) Routes.
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
///     name: "domain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-origin-group",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     sessionAffinityEnabled: true,
///     restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10,
///     healthProbe: {
///         intervalInSeconds: 240,
///         path: "/healthProbe",
///         protocol: "Https",
///         requestType: "HEAD",
///     },
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
/// const exampleFrontdoorCustomDomain = new azure.cdn.FrontdoorCustomDomain("example", {
///     name: "example-customDomain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: std.joinOutput({
///         separator: ".",
///         input: [
///             "contoso",
///             exampleZone.name,
///         ],
///     }).apply(invoke => invoke.result),
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
///     cdnFrontdoorCustomDomainIds: [exampleFrontdoorCustomDomain.id],
///     linkToDefaultDomain: false,
/// });
/// const exampleFrontdoorCustomDomainAssociation = new azure.cdn.FrontdoorCustomDomainAssociation("example", {
///     cdnFrontdoorCustomDomainId: exampleFrontdoorCustomDomain.id,
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
///     name="domain.com",
///     resource_group_name=example.name)
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-origin-group",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     session_affinity_enabled=True,
///     restore_traffic_time_to_healed_or_new_endpoint_in_minutes=10,
///     health_probe={
///         "interval_in_seconds": 240,
///         "path": "/healthProbe",
///         "protocol": "Https",
///         "request_type": "HEAD",
///     },
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
/// example_frontdoor_custom_domain = azure.cdn.FrontdoorCustomDomain("example",
///     name="example-customDomain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name=std.join_output(separator=".",
///         input=[
///             "contoso",
///             example_zone.name,
///         ]).apply(lambda invoke: invoke.result),
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
///     cdn_frontdoor_custom_domain_ids=[example_frontdoor_custom_domain.id],
///     link_to_default_domain=False)
/// example_frontdoor_custom_domain_association = azure.cdn.FrontdoorCustomDomainAssociation("example",
///     cdn_frontdoor_custom_domain_id=example_frontdoor_custom_domain.id,
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
///         Name = "domain.com",
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
///         Name = "example-origin-group",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         SessionAffinityEnabled = true,
///         RestoreTrafficTimeToHealedOrNewEndpointInMinutes = 10,
///         HealthProbe = new Azure.Cdn.Inputs.FrontdoorOriginGroupHealthProbeArgs
///         {
///             IntervalInSeconds = 240,
///             Path = "/healthProbe",
///             Protocol = "Https",
///             RequestType = "HEAD",
///         },
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
///     var exampleFrontdoorCustomDomain = new Azure.Cdn.FrontdoorCustomDomain("example", new()
///     {
///         Name = "example-customDomain",
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
///             exampleFrontdoorCustomDomain.Id,
///         },
///         LinkToDefaultDomain = false,
///     });
///
///     var exampleFrontdoorCustomDomainAssociation = new Azure.Cdn.FrontdoorCustomDomainAssociation("example", new()
///     {
///         CdnFrontdoorCustomDomainId = exampleFrontdoorCustomDomain.Id,
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
/// 			Name:              pulumi.String("domain.com"),
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
/// 			Name:                   pulumi.String("example-origin-group"),
/// 			CdnFrontdoorProfileId:  exampleFrontdoorProfile.ID(),
/// 			SessionAffinityEnabled: pulumi.Bool(true),
/// 			RestoreTrafficTimeToHealedOrNewEndpointInMinutes: pulumi.Int(10),
/// 			HealthProbe: &cdn.FrontdoorOriginGroupHealthProbeArgs{
/// 				IntervalInSeconds: pulumi.Int(240),
/// 				Path:              pulumi.String("/healthProbe"),
/// 				Protocol:          pulumi.String("Https"),
/// 				RequestType:       pulumi.String("HEAD"),
/// 			},
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
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID(),
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
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorRuleSet, err := cdn.NewFrontdoorRuleSet(ctx, "example", &cdn.FrontdoorRuleSetArgs{
/// 			Name:                  pulumi.String("ExampleRuleSet"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorCustomDomain, err := cdn.NewFrontdoorCustomDomain(ctx, "example", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("example-customDomain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			DnsZoneId:             exampleZone.ID(),
/// 			HostName: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("contoso"),
/// 					exampleZone.Name,
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// 			CdnFrontdoorEndpointId:    exampleFrontdoorEndpoint.ID(),
/// 			CdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.ID(),
/// 			CdnFrontdoorOriginIds: pulumi.StringArray{
/// 				exampleFrontdoorOrigin.ID(),
/// 			},
/// 			CdnFrontdoorRuleSetIds: pulumi.StringArray{
/// 				exampleFrontdoorRuleSet.ID(),
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
/// 				exampleFrontdoorCustomDomain.ID(),
/// 			},
/// 			LinkToDefaultDomain: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorCustomDomainAssociation(ctx, "example", &cdn.FrontdoorCustomDomainAssociationArgs{
/// 			CdnFrontdoorCustomDomainId: exampleFrontdoorCustomDomain.ID(),
/// 			CdnFrontdoorRouteIds: pulumi.StringArray{
/// 				exampleFrontdoorRoute.ID(),
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
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupHealthProbeArgs;
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
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainAssociation;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainAssociationArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("domain.com")
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
///             .name("example-origin-group")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .sessionAffinityEnabled(true)
///             .restoreTrafficTimeToHealedOrNewEndpointInMinutes(10)
///             .healthProbe(FrontdoorOriginGroupHealthProbeArgs.builder()
///                 .intervalInSeconds(240)
///                 .path("/healthProbe")
///                 .protocol("Https")
///                 .requestType("HEAD")
///                 .build())
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
///         var exampleFrontdoorCustomDomain = new FrontdoorCustomDomain("exampleFrontdoorCustomDomain", FrontdoorCustomDomainArgs.builder()
///             .name("example-customDomain")
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
///             .cdnFrontdoorCustomDomainIds(exampleFrontdoorCustomDomain.id())
///             .linkToDefaultDomain(false)
///             .build());
///
///         var exampleFrontdoorCustomDomainAssociation = new FrontdoorCustomDomainAssociation("exampleFrontdoorCustomDomainAssociation", FrontdoorCustomDomainAssociationArgs.builder()
///             .cdnFrontdoorCustomDomainId(exampleFrontdoorCustomDomain.id())
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
///       name: domain.com
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
///       name: example-origin-group
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       sessionAffinityEnabled: true
///       restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10
///       healthProbe:
///         intervalInSeconds: 240
///         path: /healthProbe
///         protocol: Https
///         requestType: HEAD
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
///         - ${exampleFrontdoorCustomDomain.id}
///       linkToDefaultDomain: false
///   exampleFrontdoorCustomDomain:
///     type: azure:cdn:FrontdoorCustomDomain
///     name: example
///     properties:
///       name: example-customDomain
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
///   exampleFrontdoorCustomDomainAssociation:
///     type: azure:cdn:FrontdoorCustomDomainAssociation
///     name: example
///     properties:
///       cdnFrontdoorCustomDomainId: ${exampleFrontdoorCustomDomain.id}
///       cdnFrontdoorRouteIds:
///         - ${exampleFrontdoorRoute.id}
/// ```
///
///
/// ## Import
///
/// Front Door Custom Domain Associations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorCustomDomainAssociation:FrontdoorCustomDomainAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/associations/assoc1
/// ```
class FrontdoorCustomDomainAssociation extends pulumi.CustomResource {
  /// The ID of the Front Door Custom Domain that should be managed by the association resource. Changing this forces a new association resource to be created.
  late final pulumi.Output<String> cdnFrontdoorCustomDomainId;
  /// One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with.
  ///
  /// &gt; **Note:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error `This resource is still associated with a route. Please delete the association with the route first before deleting this resource` when you attempt to `destroy`/`delete` your Front Door Custom Domain.
  late final pulumi.Output<List<String>> cdnFrontdoorRouteIds;

  /// Creates a new [FrontdoorCustomDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorCustomDomainAssociation]. {@macro pulumi_cdn_frontdoor_custom_domain_association_frontdoor_custom_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorCustomDomainAssociation(
    String name, {
    FrontdoorCustomDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorCustomDomainAssociation:FrontdoorCustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorCustomDomainId = registerOutput<String>('cdnFrontdoorCustomDomainId');
    cdnFrontdoorRouteIds = registerOutput<List<String>>('cdnFrontdoorRouteIds');
  }

  /// Gets an existing [FrontdoorCustomDomainAssociation] resource's state with the given [name] and [id].
  static FrontdoorCustomDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorCustomDomainAssociationState? state,
  }) {
    return FrontdoorCustomDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorCustomDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorCustomDomainAssociation:FrontdoorCustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorCustomDomainId = registerOutput<String>('cdnFrontdoorCustomDomainId');
    cdnFrontdoorRouteIds = registerOutput<List<String>>('cdnFrontdoorRouteIds');
  }
}
