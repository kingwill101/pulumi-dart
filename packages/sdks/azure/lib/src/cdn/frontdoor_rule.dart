import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions.dart';
import 'frontdoor_rule_args.dart';
import 'frontdoor_rule_conditions.dart';
import 'frontdoor_rule_state.dart';

/// Manages a Front Door (standard/premium) Rule.
///
/// !&gt; **Note:** The Rules resource **must** include a `depends_on` meta-argument which references the `azure.cdn.FrontdoorOrigin` and the `azure.cdn.FrontdoorOriginGroup`.
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
///     skuName: "Premium_AzureFrontDoor",
/// });
/// const exampleFrontdoorEndpoint = new azure.cdn.FrontdoorEndpoint("example", {
///     name: "example-endpoint",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     tags: {
///         endpoint: "contoso.com",
///     },
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-originGroup",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     sessionAffinityEnabled: true,
///     restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10,
///     healthProbe: {
///         intervalInSeconds: 240,
///         path: "/healthProbe",
///         protocol: "Https",
///         requestType: "GET",
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
///     hostName: exampleFrontdoorEndpoint.hostName,
///     httpPort: 80,
///     httpsPort: 443,
///     originHostHeader: "contoso.com",
///     priority: 1,
///     weight: 500,
/// });
/// const exampleFrontdoorRuleSet = new azure.cdn.FrontdoorRuleSet("example", {
///     name: "exampleruleset",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
/// });
/// const exampleFrontdoorRule = new azure.cdn.FrontdoorRule("example", {
///     name: "examplerule",
///     cdnFrontdoorRuleSetId: exampleFrontdoorRuleSet.id,
///     order: 1,
///     behaviorOnMatch: "Continue",
///     actions: {
///         routeConfigurationOverrideAction: {
///             cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///             forwardingProtocol: "HttpsOnly",
///             queryStringCachingBehavior: "IncludeSpecifiedQueryStrings",
///             queryStringParameters: [
///                 "foo",
///                 "clientIp={client_ip}",
///             ],
///             compressionEnabled: true,
///             cacheBehavior: "OverrideIfOriginMissing",
///             cacheDuration: "365.23:59:59",
///         },
///         urlRedirectAction: {
///             redirectType: "PermanentRedirect",
///             redirectProtocol: "MatchRequest",
///             queryString: "clientIp={client_ip}",
///             destinationPath: "/exampleredirection",
///             destinationHostname: "contoso.com",
///             destinationFragment: "UrlRedirect",
///         },
///     },
///     conditions: {
///         hostNameConditions: [{
///             operator: "Equal",
///             negateCondition: false,
///             matchValues: [
///                 "www.contoso.com",
///                 "images.contoso.com",
///                 "video.contoso.com",
///             ],
///             transforms: [
///                 "Lowercase",
///                 "Trim",
///             ],
///         }],
///         isDeviceConditions: [{
///             operator: "Equal",
///             negateCondition: false,
///             matchValues: "Mobile",
///         }],
///         postArgsConditions: [{
///             postArgsName: "customerName",
///             operator: "BeginsWith",
///             matchValues: [
///                 "J",
///                 "K",
///             ],
///             transforms: ["Uppercase"],
///         }],
///         requestMethodConditions: [{
///             operator: "Equal",
///             negateCondition: false,
///             matchValues: ["DELETE"],
///         }],
///         urlFilenameConditions: [{
///             operator: "Equal",
///             negateCondition: false,
///             matchValues: ["media.mp4"],
///             transforms: [
///                 "Lowercase",
///                 "RemoveNulls",
///                 "Trim",
///             ],
///         }],
///     },
/// }, {
///     dependsOn: [
///         exampleFrontdoorOriginGroup,
///         exampleFrontdoorOrigin,
///     ],
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
///     sku_name="Premium_AzureFrontDoor")
/// example_frontdoor_endpoint = azure.cdn.FrontdoorEndpoint("example",
///     name="example-endpoint",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     tags={
///         "endpoint": "contoso.com",
///     })
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-originGroup",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     session_affinity_enabled=True,
///     restore_traffic_time_to_healed_or_new_endpoint_in_minutes=10,
///     health_probe={
///         "interval_in_seconds": 240,
///         "path": "/healthProbe",
///         "protocol": "Https",
///         "request_type": "GET",
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
///     host_name=example_frontdoor_endpoint.host_name,
///     http_port=80,
///     https_port=443,
///     origin_host_header="contoso.com",
///     priority=1,
///     weight=500)
/// example_frontdoor_rule_set = azure.cdn.FrontdoorRuleSet("example",
///     name="exampleruleset",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id)
/// example_frontdoor_rule = azure.cdn.FrontdoorRule("example",
///     name="examplerule",
///     cdn_frontdoor_rule_set_id=example_frontdoor_rule_set.id,
///     order=1,
///     behavior_on_match="Continue",
///     actions={
///         "route_configuration_override_action": {
///             "cdn_frontdoor_origin_group_id": example_frontdoor_origin_group.id,
///             "forwarding_protocol": "HttpsOnly",
///             "query_string_caching_behavior": "IncludeSpecifiedQueryStrings",
///             "query_string_parameters": [
///                 "foo",
///                 "clientIp={client_ip}",
///             ],
///             "compression_enabled": True,
///             "cache_behavior": "OverrideIfOriginMissing",
///             "cache_duration": "365.23:59:59",
///         },
///         "url_redirect_action": {
///             "redirect_type": "PermanentRedirect",
///             "redirect_protocol": "MatchRequest",
///             "query_string": "clientIp={client_ip}",
///             "destination_path": "/exampleredirection",
///             "destination_hostname": "contoso.com",
///             "destination_fragment": "UrlRedirect",
///         },
///     },
///     conditions={
///         "host_name_conditions": [{
///             "operator": "Equal",
///             "negate_condition": False,
///             "match_values": [
///                 "www.contoso.com",
///                 "images.contoso.com",
///                 "video.contoso.com",
///             ],
///             "transforms": [
///                 "Lowercase",
///                 "Trim",
///             ],
///         }],
///         "is_device_conditions": [{
///             "operator": "Equal",
///             "negate_condition": False,
///             "match_values": "Mobile",
///         }],
///         "post_args_conditions": [{
///             "post_args_name": "customerName",
///             "operator": "BeginsWith",
///             "match_values": [
///                 "J",
///                 "K",
///             ],
///             "transforms": ["Uppercase"],
///         }],
///         "request_method_conditions": [{
///             "operator": "Equal",
///             "negate_condition": False,
///             "match_values": ["DELETE"],
///         }],
///         "url_filename_conditions": [{
///             "operator": "Equal",
///             "negate_condition": False,
///             "match_values": ["media.mp4"],
///             "transforms": [
///                 "Lowercase",
///                 "RemoveNulls",
///                 "Trim",
///             ],
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_frontdoor_origin_group,
///             example_frontdoor_origin,
///         ]))
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
///         SkuName = "Premium_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorEndpoint = new Azure.Cdn.FrontdoorEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         Tags =
///         {
///             { "endpoint", "contoso.com" },
///         },
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-originGroup",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         SessionAffinityEnabled = true,
///         RestoreTrafficTimeToHealedOrNewEndpointInMinutes = 10,
///         HealthProbe = new Azure.Cdn.Inputs.FrontdoorOriginGroupHealthProbeArgs
///         {
///             IntervalInSeconds = 240,
///             Path = "/healthProbe",
///             Protocol = "Https",
///             RequestType = "GET",
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
///         HostName = exampleFrontdoorEndpoint.HostName,
///         HttpPort = 80,
///         HttpsPort = 443,
///         OriginHostHeader = "contoso.com",
///         Priority = 1,
///         Weight = 500,
///     });
///
///     var exampleFrontdoorRuleSet = new Azure.Cdn.FrontdoorRuleSet("example", new()
///     {
///         Name = "exampleruleset",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///     });
///
///     var exampleFrontdoorRule = new Azure.Cdn.FrontdoorRule("example", new()
///     {
///         Name = "examplerule",
///         CdnFrontdoorRuleSetId = exampleFrontdoorRuleSet.Id,
///         Order = 1,
///         BehaviorOnMatch = "Continue",
///         Actions = new Azure.Cdn.Inputs.FrontdoorRuleActionsArgs
///         {
///             RouteConfigurationOverrideAction = new Azure.Cdn.Inputs.FrontdoorRuleActionsRouteConfigurationOverrideActionArgs
///             {
///                 CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///                 ForwardingProtocol = "HttpsOnly",
///                 QueryStringCachingBehavior = "IncludeSpecifiedQueryStrings",
///                 QueryStringParameters = new[]
///                 {
///                     "foo",
///                     "clientIp={client_ip}",
///                 },
///                 CompressionEnabled = true,
///                 CacheBehavior = "OverrideIfOriginMissing",
///                 CacheDuration = "365.23:59:59",
///             },
///             UrlRedirectAction = new Azure.Cdn.Inputs.FrontdoorRuleActionsUrlRedirectActionArgs
///             {
///                 RedirectType = "PermanentRedirect",
///                 RedirectProtocol = "MatchRequest",
///                 QueryString = "clientIp={client_ip}",
///                 DestinationPath = "/exampleredirection",
///                 DestinationHostname = "contoso.com",
///                 DestinationFragment = "UrlRedirect",
///             },
///         },
///         Conditions = new Azure.Cdn.Inputs.FrontdoorRuleConditionsArgs
///         {
///             HostNameConditions = new[]
///             {
///                 new Azure.Cdn.Inputs.FrontdoorRuleConditionsHostNameConditionArgs
///                 {
///                     Operator = "Equal",
///                     NegateCondition = false,
///                     MatchValues = new[]
///                     {
///                         "www.contoso.com",
///                         "images.contoso.com",
///                         "video.contoso.com",
///                     },
///                     Transforms = new[]
///                     {
///                         "Lowercase",
///                         "Trim",
///                     },
///                 },
///             },
///             IsDeviceConditions = new[]
///             {
///                 new Azure.Cdn.Inputs.FrontdoorRuleConditionsIsDeviceConditionArgs
///                 {
///                     Operator = "Equal",
///                     NegateCondition = false,
///                     MatchValues = "Mobile",
///                 },
///             },
///             PostArgsConditions = new[]
///             {
///                 new Azure.Cdn.Inputs.FrontdoorRuleConditionsPostArgsConditionArgs
///                 {
///                     PostArgsName = "customerName",
///                     Operator = "BeginsWith",
///                     MatchValues = new[]
///                     {
///                         "J",
///                         "K",
///                     },
///                     Transforms = new[]
///                     {
///                         "Uppercase",
///                     },
///                 },
///             },
///             RequestMethodConditions = new[]
///             {
///                 new Azure.Cdn.Inputs.FrontdoorRuleConditionsRequestMethodConditionArgs
///                 {
///                     Operator = "Equal",
///                     NegateCondition = false,
///                     MatchValues = new[]
///                     {
///                         "DELETE",
///                     },
///                 },
///             },
///             UrlFilenameConditions = new[]
///             {
///                 new Azure.Cdn.Inputs.FrontdoorRuleConditionsUrlFilenameConditionArgs
///                 {
///                     Operator = "Equal",
///                     NegateCondition = false,
///                     MatchValues = new[]
///                     {
///                         "media.mp4",
///                     },
///                     Transforms = new[]
///                     {
///                         "Lowercase",
///                         "RemoveNulls",
///                         "Trim",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleFrontdoorOriginGroup,
///             exampleFrontdoorOrigin,
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
/// 			SkuName:           pulumi.String("Premium_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorEndpoint, err := cdn.NewFrontdoorEndpoint(ctx, "example", &cdn.FrontdoorEndpointArgs{
/// 			Name:                  pulumi.String("example-endpoint"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"endpoint": pulumi.String("contoso.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                   pulumi.String("example-originGroup"),
/// 			CdnFrontdoorProfileId:  exampleFrontdoorProfile.ID(),
/// 			SessionAffinityEnabled: pulumi.Bool(true),
/// 			RestoreTrafficTimeToHealedOrNewEndpointInMinutes: pulumi.Int(10),
/// 			HealthProbe: &cdn.FrontdoorOriginGroupHealthProbeArgs{
/// 				IntervalInSeconds: pulumi.Int(240),
/// 				Path:              pulumi.String("/healthProbe"),
/// 				Protocol:          pulumi.String("Https"),
/// 				RequestType:       pulumi.String("GET"),
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
/// 			HostName:                    exampleFrontdoorEndpoint.HostName,
/// 			HttpPort:                    pulumi.Int(80),
/// 			HttpsPort:                   pulumi.Int(443),
/// 			OriginHostHeader:            pulumi.String("contoso.com"),
/// 			Priority:                    pulumi.Int(1),
/// 			Weight:                      pulumi.Int(500),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorRuleSet, err := cdn.NewFrontdoorRuleSet(ctx, "example", &cdn.FrontdoorRuleSetArgs{
/// 			Name:                  pulumi.String("exampleruleset"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorRule(ctx, "example", &cdn.FrontdoorRuleArgs{
/// 			Name:                  pulumi.String("examplerule"),
/// 			CdnFrontdoorRuleSetId: exampleFrontdoorRuleSet.ID(),
/// 			Order:                 pulumi.Int(1),
/// 			BehaviorOnMatch:       pulumi.String("Continue"),
/// 			Actions: &cdn.FrontdoorRuleActionsArgs{
/// 				RouteConfigurationOverrideAction: &cdn.FrontdoorRuleActionsRouteConfigurationOverrideActionArgs{
/// 					CdnFrontdoorOriginGroupId:  exampleFrontdoorOriginGroup.ID(),
/// 					ForwardingProtocol:         pulumi.String("HttpsOnly"),
/// 					QueryStringCachingBehavior: pulumi.String("IncludeSpecifiedQueryStrings"),
/// 					QueryStringParameters: pulumi.StringArray{
/// 						pulumi.String("foo"),
/// 						pulumi.String("clientIp={client_ip}"),
/// 					},
/// 					CompressionEnabled: pulumi.Bool(true),
/// 					CacheBehavior:      pulumi.String("OverrideIfOriginMissing"),
/// 					CacheDuration:      pulumi.String("365.23:59:59"),
/// 				},
/// 				UrlRedirectAction: &cdn.FrontdoorRuleActionsUrlRedirectActionArgs{
/// 					RedirectType:        pulumi.String("PermanentRedirect"),
/// 					RedirectProtocol:    pulumi.String("MatchRequest"),
/// 					QueryString:         pulumi.String("clientIp={client_ip}"),
/// 					DestinationPath:     pulumi.String("/exampleredirection"),
/// 					DestinationHostname: pulumi.String("contoso.com"),
/// 					DestinationFragment: pulumi.String("UrlRedirect"),
/// 				},
/// 			},
/// 			Conditions: &cdn.FrontdoorRuleConditionsArgs{
/// 				HostNameConditions: cdn.FrontdoorRuleConditionsHostNameConditionArray{
/// 					&cdn.FrontdoorRuleConditionsHostNameConditionArgs{
/// 						Operator:        pulumi.String("Equal"),
/// 						NegateCondition: pulumi.Bool(false),
/// 						MatchValues: pulumi.StringArray{
/// 							pulumi.String("www.contoso.com"),
/// 							pulumi.String("images.contoso.com"),
/// 							pulumi.String("video.contoso.com"),
/// 						},
/// 						Transforms: pulumi.StringArray{
/// 							pulumi.String("Lowercase"),
/// 							pulumi.String("Trim"),
/// 						},
/// 					},
/// 				},
/// 				IsDeviceConditions: cdn.FrontdoorRuleConditionsIsDeviceConditionArray{
/// 					&cdn.FrontdoorRuleConditionsIsDeviceConditionArgs{
/// 						Operator:        pulumi.String("Equal"),
/// 						NegateCondition: pulumi.Bool(false),
/// 						MatchValues:     pulumi.String("Mobile"),
/// 					},
/// 				},
/// 				PostArgsConditions: cdn.FrontdoorRuleConditionsPostArgsConditionArray{
/// 					&cdn.FrontdoorRuleConditionsPostArgsConditionArgs{
/// 						PostArgsName: pulumi.String("customerName"),
/// 						Operator:     pulumi.String("BeginsWith"),
/// 						MatchValues: pulumi.StringArray{
/// 							pulumi.String("J"),
/// 							pulumi.String("K"),
/// 						},
/// 						Transforms: pulumi.StringArray{
/// 							pulumi.String("Uppercase"),
/// 						},
/// 					},
/// 				},
/// 				RequestMethodConditions: cdn.FrontdoorRuleConditionsRequestMethodConditionArray{
/// 					&cdn.FrontdoorRuleConditionsRequestMethodConditionArgs{
/// 						Operator:        pulumi.String("Equal"),
/// 						NegateCondition: pulumi.Bool(false),
/// 						MatchValues: pulumi.StringArray{
/// 							pulumi.String("DELETE"),
/// 						},
/// 					},
/// 				},
/// 				UrlFilenameConditions: cdn.FrontdoorRuleConditionsUrlFilenameConditionArray{
/// 					&cdn.FrontdoorRuleConditionsUrlFilenameConditionArgs{
/// 						Operator:        pulumi.String("Equal"),
/// 						NegateCondition: pulumi.Bool(false),
/// 						MatchValues: pulumi.StringArray{
/// 							pulumi.String("media.mp4"),
/// 						},
/// 						Transforms: pulumi.StringArray{
/// 							pulumi.String("Lowercase"),
/// 							pulumi.String("RemoveNulls"),
/// 							pulumi.String("Trim"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleFrontdoorOriginGroup,
/// 			exampleFrontdoorOrigin,
/// 		}))
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
/// import com.pulumi.azure.cdn.FrontdoorEndpoint;
/// import com.pulumi.azure.cdn.FrontdoorEndpointArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupHealthProbeArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
/// import com.pulumi.azure.cdn.FrontdoorRuleSet;
/// import com.pulumi.azure.cdn.FrontdoorRuleSetArgs;
/// import com.pulumi.azure.cdn.FrontdoorRule;
/// import com.pulumi.azure.cdn.FrontdoorRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorRuleActionsArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorRuleActionsRouteConfigurationOverrideActionArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorRuleActionsUrlRedirectActionArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorRuleConditionsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .skuName("Premium_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorEndpoint = new FrontdoorEndpoint("exampleFrontdoorEndpoint", FrontdoorEndpointArgs.builder()
///             .name("example-endpoint")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .tags(Map.of("endpoint", "contoso.com"))
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-originGroup")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .sessionAffinityEnabled(true)
///             .restoreTrafficTimeToHealedOrNewEndpointInMinutes(10)
///             .healthProbe(FrontdoorOriginGroupHealthProbeArgs.builder()
///                 .intervalInSeconds(240)
///                 .path("/healthProbe")
///                 .protocol("Https")
///                 .requestType("GET")
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
///             .hostName(exampleFrontdoorEndpoint.hostName())
///             .httpPort(80)
///             .httpsPort(443)
///             .originHostHeader("contoso.com")
///             .priority(1)
///             .weight(500)
///             .build());
///
///         var exampleFrontdoorRuleSet = new FrontdoorRuleSet("exampleFrontdoorRuleSet", FrontdoorRuleSetArgs.builder()
///             .name("exampleruleset")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .build());
///
///         var exampleFrontdoorRule = new FrontdoorRule("exampleFrontdoorRule", FrontdoorRuleArgs.builder()
///             .name("examplerule")
///             .cdnFrontdoorRuleSetId(exampleFrontdoorRuleSet.id())
///             .order(1)
///             .behaviorOnMatch("Continue")
///             .actions(FrontdoorRuleActionsArgs.builder()
///                 .routeConfigurationOverrideAction(FrontdoorRuleActionsRouteConfigurationOverrideActionArgs.builder()
///                     .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///                     .forwardingProtocol("HttpsOnly")
///                     .queryStringCachingBehavior("IncludeSpecifiedQueryStrings")
///                     .queryStringParameters(
///                         "foo",
///                         "clientIp={client_ip}")
///                     .compressionEnabled(true)
///                     .cacheBehavior("OverrideIfOriginMissing")
///                     .cacheDuration("365.23:59:59")
///                     .build())
///                 .urlRedirectAction(FrontdoorRuleActionsUrlRedirectActionArgs.builder()
///                     .redirectType("PermanentRedirect")
///                     .redirectProtocol("MatchRequest")
///                     .queryString("clientIp={client_ip}")
///                     .destinationPath("/exampleredirection")
///                     .destinationHostname("contoso.com")
///                     .destinationFragment("UrlRedirect")
///                     .build())
///                 .build())
///             .conditions(FrontdoorRuleConditionsArgs.builder()
///                 .hostNameConditions(FrontdoorRuleConditionsHostNameConditionArgs.builder()
///                     .operator("Equal")
///                     .negateCondition(false)
///                     .matchValues(
///                         "www.contoso.com",
///                         "images.contoso.com",
///                         "video.contoso.com")
///                     .transforms(
///                         "Lowercase",
///                         "Trim")
///                     .build())
///                 .isDeviceConditions(FrontdoorRuleConditionsIsDeviceConditionArgs.builder()
///                     .operator("Equal")
///                     .negateCondition(false)
///                     .matchValues("Mobile")
///                     .build())
///                 .postArgsConditions(FrontdoorRuleConditionsPostArgsConditionArgs.builder()
///                     .postArgsName("customerName")
///                     .operator("BeginsWith")
///                     .matchValues(
///                         "J",
///                         "K")
///                     .transforms("Uppercase")
///                     .build())
///                 .requestMethodConditions(FrontdoorRuleConditionsRequestMethodConditionArgs.builder()
///                     .operator("Equal")
///                     .negateCondition(false)
///                     .matchValues("DELETE")
///                     .build())
///                 .urlFilenameConditions(FrontdoorRuleConditionsUrlFilenameConditionArgs.builder()
///                     .operator("Equal")
///                     .negateCondition(false)
///                     .matchValues("media.mp4")
///                     .transforms(
///                         "Lowercase",
///                         "RemoveNulls",
///                         "Trim")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleFrontdoorOriginGroup,
///                     exampleFrontdoorOrigin)
///                 .build());
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
///       skuName: Premium_AzureFrontDoor
///   exampleFrontdoorEndpoint:
///     type: azure:cdn:FrontdoorEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       tags:
///         endpoint: contoso.com
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-originGroup
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       sessionAffinityEnabled: true
///       restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10
///       healthProbe:
///         intervalInSeconds: 240
///         path: /healthProbe
///         protocol: Https
///         requestType: GET
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
///       hostName: ${exampleFrontdoorEndpoint.hostName}
///       httpPort: 80
///       httpsPort: 443
///       originHostHeader: contoso.com
///       priority: 1
///       weight: 500
///   exampleFrontdoorRuleSet:
///     type: azure:cdn:FrontdoorRuleSet
///     name: example
///     properties:
///       name: exampleruleset
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///   exampleFrontdoorRule:
///     type: azure:cdn:FrontdoorRule
///     name: example
///     properties:
///       name: examplerule
///       cdnFrontdoorRuleSetId: ${exampleFrontdoorRuleSet.id}
///       order: 1
///       behaviorOnMatch: Continue
///       actions:
///         routeConfigurationOverrideAction:
///           cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///           forwardingProtocol: HttpsOnly
///           queryStringCachingBehavior: IncludeSpecifiedQueryStrings
///           queryStringParameters:
///             - foo
///             - clientIp={client_ip}
///           compressionEnabled: true
///           cacheBehavior: OverrideIfOriginMissing
///           cacheDuration: 365.23:59:59
///         urlRedirectAction:
///           redirectType: PermanentRedirect
///           redirectProtocol: MatchRequest
///           queryString: clientIp={client_ip}
///           destinationPath: /exampleredirection
///           destinationHostname: contoso.com
///           destinationFragment: UrlRedirect
///       conditions:
///         hostNameConditions:
///           - operator: Equal
///             negateCondition: false
///             matchValues:
///               - www.contoso.com
///               - images.contoso.com
///               - video.contoso.com
///             transforms:
///               - Lowercase
///               - Trim
///         isDeviceConditions:
///           - operator: Equal
///             negateCondition: false
///             matchValues: Mobile
///         postArgsConditions:
///           - postArgsName: customerName
///             operator: BeginsWith
///             matchValues:
///               - J
///               - K
///             transforms:
///               - Uppercase
///         requestMethodConditions:
///           - operator: Equal
///             negateCondition: false
///             matchValues:
///               - DELETE
///         urlFilenameConditions:
///           - operator: Equal
///             negateCondition: false
///             matchValues:
///               - media.mp4
///             transforms:
///               - Lowercase
///               - RemoveNulls
///               - Trim
///     options:
///       dependsOn:
///         - ${exampleFrontdoorOriginGroup}
///         - ${exampleFrontdoorOrigin}
/// ```
///
///
/// ## Specifying IP Address Ranges
///
/// When specifying IP address ranges in the `socket_address_condition` and the `remote_address_condition` `match_values` use the following format:
///
/// Use `CIDR` notation when specifying IP address blocks. This means that the syntax for an IP address block is the base IP address followed by a forward slash and the prefix size For example:
///
/// * `IPv4` example: `5.5.5.64/26` matches any requests that arrive from addresses `5.5.5.64` through `5.5.5.127`.
/// * `IPv6` example: `1:2:3:/48` matches any requests that arrive from addresses `1:2:3:0:0:0:0:0` through `1:2:3:ffff:ffff:ffff:ffff:ffff`.
///
/// When you specify multiple IP addresses and IP address blocks, `OR` logic is applied.
///
/// * `IPv4` example: if you add two IP addresses `1.2.3.4` and `10.20.30.40`, the condition is matched for any requests that arrive from either address `1.2.3.4` or `10.20.30.40`.
/// * `IPv6` example: if you add two IP addresses `1:2:3:4:5:6:7:8` and `10:20:30:40:50:60:70:80`, the condition is matched for any requests that arrive from either address `1:2:3:4:5:6:7:8` or `10:20:30:40:50:60:70:80`.
///
/// ---
///
/// ## Action Server Variables
///
/// Rule Set server variables provide access to structured information about the request. You can use server variables to dynamically change the request/response headers or URL rewrite paths/query strings, for example, when a new page load or when a form is posted.
///
/// ### Supported Action Server Variables
///
/// | Variable name | Description |
/// |---------------|-------------|
/// | `socket_ip`      | The IP address of the direct connection to Front Door Profiles edge. If the client used an HTTP proxy or a load balancer to send the request, the value of `socket_ip` is the IP address of the proxy or load balancer. |
/// | `client_ip`      | The IP address of the client that made the original request. If there was an `X-Forwarded-For` header in the request, then the client IP address is picked from the header. |
/// | `client_port`    | The IP port of the client that made the request. |
/// | `hostname`       | The host name in the request from the client. |
/// | `geo_country`    | Indicates the requester's country/region of origin through its country/region code. |
/// | `http_method`    | The method used to make the URL request, such as `GET` or `POST`. |
/// | `http_version`   | The request protocol. Usually `HTTP/1.0`, `HTTP/1.1`, or `HTTP/2.0`. |
/// | `query_string`   | The list of variable/value pairs that follows the "?" in the requested URL. For example, in the request `http://contoso.com:8080/article.aspx?id=123&title=fabrikam`, the `query_string` value will be `id=123&title=fabrikam`. |
/// | `request_scheme` | The request scheme: `http` or `https`. |
/// | `request_uri`    | The full original request URI (with arguments). For example, in the request `http://contoso.com:8080/article.aspx?id=123&title=fabrikam`, the `request_uri` value will be `/article.aspx?id=123&title=fabrikam`. |
/// | `ssl_protocol`   | The protocol of an established TLS connection. |
/// | `server_port`    | The port of the server that accepted a request. |
/// | `url_path`       | Identifies the specific resource in the host that the web client wants to access. This is the part of the request URI without the arguments. For example, in the request `http://contoso.com:8080/article.aspx?id=123&title=fabrikam`, the `uri_path` value will be `/article.aspx`. |
///
/// ### Action Server Variable Format
///
/// Server variables can be specified using the following formats:
///
/// * `{variable}` - Include the entire server variable. For example, if the client IP address is `111.222.333.444` then the `{client_ip}` token would evaluate to `111.222.333.444`.
///
/// * `{variable:offset}` - Include the server variable after a specific offset, until the end of the variable. The offset is zero-based. For example, if the client IP address is `111.222.333.444` then the `{client_ip:3}` token would evaluate to `.222.333.444`.
///
/// * `{variable:offset:length}` - Include the server variable after a specific offset, up to the specified length. The offset is zero-based. For example, if the client IP address is `111.222.333.444` then the `{client_ip:4:3}` token would evaluate to `222`.
///
/// ### Action Server Variables Support
///
/// Action Server variables are supported on the following actions:
///
/// * `route_configuration_override_action`
/// * `request_header_action`
/// * `response_header_action`
/// * `url_redirect_action`
/// * `url_rewrite_action`
///
/// ---
///
/// ## Condition Operator list
///
/// For rules that accept values from the standard operator list, the following operators are valid:
///
/// | Operator                   | Description | Condition Value |
/// |----------------------------|-------------|-----------------|
/// | Any                        |Matches when there is any value, regardless of what it is. | Any |
/// | Equal                      | Matches when the value exactly matches the specified string. | Equal |
/// | Contains                   | Matches when the value contains the specified string. | Contains |
/// | Less Than                  | Matches when the length of the value is less than the specified integer. | LessThan |
/// | Greater Than               | Matches when the length of the value is greater than the specified integer. | GreaterThan |
/// | Less Than or Equal         | Matches when the length of the value is less than or equal to the specified integer. | LessThanOrEqual |
/// | Greater Than or Equal      | Matches when the length of the value is greater than or equal to the specified integer. | GreaterThanOrEqual |
/// | Begins With                | Matches when the value begins with the specified string. | BeginsWith |
/// | Ends With                  | Matches when the value ends with the specified string. | EndsWith |
/// | RegEx                      | Matches when the value matches the specified regular expression. See `Condition Regular Expressions` below for more details. | RegEx |
/// | Wildcard                   | Matches when the request path matches a wildcard expression. See `Condition Wildcard Expression` below for more details. | Wildcard |
/// | Not Any                    | Matches when there is no value. | Any and negateCondition = true |
/// | Not Equal                  | Matches when the value does not match the specified string. | Equal and negateCondition : true |
/// | Not Contains               | Matches when the value does not contain the specified string. | Contains and negateCondition = true |
/// | Not Less Than              | Matches when the length of the value is not less than the specified integer. | LessThan and negateCondition = true |
/// | Not Greater Than           | Matches when the length of the value is not greater than the specified integer. | GreaterThan and negateCondition = true |
/// | Not Less Than or Equal     | Matches when the length of the value is not less than or equal to the specified integer. | LessThanOrEqual and negateCondition = true |
/// | Not Greater Than or Equals | Matches when the length of the value is not greater than or equal to the specified integer. | GreaterThanOrEqual and negateCondition = true |
/// | Not Begins With            | Matches when the value does not begin with the specified string. | BeginsWith and negateCondition = true |
/// | Not Ends With              | Matches when the value does not end with the specified string. | EndsWith and negateCondition = true |
/// | Not RegEx                  | Matches when the value does not match the specified regular expression. See `Condition Regular Expressions` for more details. | RegEx and negateCondition = true |
/// | Not Wildcard               | Matches when the request path does not match a wildcard expression. See `Condition Wildcard Expression` below for more details. | Wildcard and negateCondition = true |
///
/// ---
///
/// ## Condition Regular Expressions
///
/// Regular expressions **don't** support the following operations:
///
/// * Backreferences and capturing subexpressions.
/// * Arbitrary zero-width assertions.
/// * Subroutine references and recursive patterns.
/// * Conditional patterns.
/// * Backtracking control verbs.
/// * The `\C` single-byte directive.
/// * The `\R` newline match directive.
/// * The `\K` start of match reset directive.
/// * Callouts and embedded code.
/// * Atomic grouping and possessive quantifiers.
///
/// ## Condition Wildcard Expression
///
/// A wildcard expression can include the * character to match zero or more characters within the path. For example, the wildcard expression `files/customer*/file.pdf` matches the paths `files/customer1/file.pdf`, `files/customer109/file.pdf`, and `files/customer/file.pdf`, but doesn't match `files/customer2/anotherfile.pdf`.
///
/// ---
///
/// ## Condition Transform List
///
/// For rules that can transform strings, the following transforms are valid:
///
/// | Transform   | Description |
/// |-------------|-------------|
/// | Lowercase   | Converts the string to the lowercase representation. |
/// | Uppercase   | Converts the string to the uppercase representation. |
/// | Trim        | Trims leading and trailing whitespace from the string. |
/// | RemoveNulls | Removes null values from the string. |
/// | URLEncode   | URL-encodes the string. |
/// | URLDecode   | URL-decodes the string. |
///
/// ---
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2024-09-01
///
/// ## Import
///
/// Front Door Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorRule:FrontdoorRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1/rules/rule1
/// ```
class FrontdoorRule extends pulumi.CustomResource {
  /// An `actions` block as defined below.
  late final pulumi.Output<FrontdoorRuleActions> actions;

  /// If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  late final pulumi.Output<String?> behaviorOnMatch;

  /// The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  late final pulumi.Output<String> cdnFrontdoorRuleSetId;

  /// The name of the Front Door Rule Set containing this Front Door Rule.
  late final pulumi.Output<String> cdnFrontdoorRuleSetName;

  /// A `conditions` block as defined below.
  late final pulumi.Output<FrontdoorRuleConditions?> conditions;

  /// The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  late final pulumi.Output<String> name;

  /// The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  ///
  /// &gt; **Note:** If the Front Door Rule has an order value of `0` they do not require any conditions and the actions will always be applied.
  late final pulumi.Output<int> order;

  /// Creates a new [FrontdoorRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorRule]. {@macro pulumi_cdn_frontdoor_rule_frontdoor_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorRule(
    String name, {
    FrontdoorRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorRule:FrontdoorRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<FrontdoorRuleActions>(
      'actions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorRuleActions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    behaviorOnMatch = registerOutput<String?>('behaviorOnMatch');
    cdnFrontdoorRuleSetId = registerOutput<String>('cdnFrontdoorRuleSetId');
    cdnFrontdoorRuleSetName = registerOutput<String>('cdnFrontdoorRuleSetName');
    conditions = registerOutput<FrontdoorRuleConditions?>(
      'conditions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorRuleConditions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
  }

  /// Gets an existing [FrontdoorRule] resource's state with the given [name] and [id].
  static FrontdoorRule get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorRuleState? state,
  }) {
    return FrontdoorRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorRule:FrontdoorRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<FrontdoorRuleActions>(
      'actions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorRuleActions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    behaviorOnMatch = registerOutput<String?>('behaviorOnMatch');
    cdnFrontdoorRuleSetId = registerOutput<String>('cdnFrontdoorRuleSetId');
    cdnFrontdoorRuleSetName = registerOutput<String>('cdnFrontdoorRuleSetName');
    conditions = registerOutput<FrontdoorRuleConditions?>(
      'conditions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FrontdoorRuleConditions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
  }
}
