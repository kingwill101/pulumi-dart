import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_args.dart';
import 'frontdoor_batch_rule_set_rule.dart';
import 'frontdoor_batch_rule_set_state.dart';

/// Manages a Front Door (standard/premium) Batch Rule Set.
///
/// &gt; **Note:** This resource creates the Front Door Rule Set in batch mode and manages the full ordered batch rule collection for it. Any change to the configured `rule` blocks sends the desired final ordered rule list to the Resource Provider in a single request.
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
/// const exampleFrontdoorBatchRuleSet = new azure.cdn.FrontdoorBatchRuleSet("example", {
///     name: "examplebatchruleset",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     rules: [{
///         name: "examplebatchrule",
///         order: 1,
///         behaviourOnMatch: "Continue",
///         actions: {
///             routeConfigurationOverride: {
///                 originGroup: {
///                     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///                     forwardingProtocol: "HttpsOnly",
///                 },
///                 caching: {
///                     behaviour: "OverrideIfOriginMissing",
///                     duration: "365.23:59:59",
///                     compressionEnabled: true,
///                     queryStringBehaviour: "IncludeSpecifiedQueryStrings",
///                     queryStringParameters: [
///                         "foo",
///                         "clientIp={client_ip}",
///                     ],
///                 },
///             },
///         },
///         conditions: {
///             hostNames: [{
///                 operator: "Equal",
///                 values: [
///                     "www.contoso.com",
///                     "images.contoso.com",
///                     "video.contoso.com",
///                 ],
///                 transforms: [
///                     "Lowercase",
///                     "Trim",
///                 ],
///             }],
///             deviceTypes: [{
///                 operator: "Equal",
///                 values: "Mobile",
///             }],
///             postArguments: [{
///                 name: "customerName",
///                 operator: "BeginsWith",
///                 values: [
///                     "J",
///                     "K",
///                 ],
///                 transforms: ["Uppercase"],
///             }],
///             requestMethods: [{
///                 operator: "Equal",
///                 values: ["DELETE"],
///             }],
///             requestFilenames: [{
///                 operator: "Equal",
///                 values: ["media.mp4"],
///                 transforms: [
///                     "Lowercase",
///                     "RemoveNulls",
///                     "Trim",
///                 ],
///             }],
///         },
///     }],
/// });
/// const exampleFrontdoorRoute = new azure.cdn.FrontdoorRoute("example", {
///     name: "example-cdn-frontdoor-route",
///     cdnFrontdoorEndpointId: exampleFrontdoorEndpoint.id,
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     cdnFrontdoorOriginIds: [exampleFrontdoorOrigin.id],
///     cdnFrontdoorRuleSetIds: [exampleFrontdoorBatchRuleSet.id],
///     patternsToMatches: ["/*"],
///     supportedProtocols: [
///         "Http",
///         "Https",
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
/// example_frontdoor_batch_rule_set = azure.cdn.FrontdoorBatchRuleSet("example",
///     name="examplebatchruleset",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     rules=[{
///         "name": "examplebatchrule",
///         "order": 1,
///         "behaviour_on_match": "Continue",
///         "actions": {
///             "route_configuration_override": {
///                 "origin_group": {
///                     "cdn_frontdoor_origin_group_id": example_frontdoor_origin_group.id,
///                     "forwarding_protocol": "HttpsOnly",
///                 },
///                 "caching": {
///                     "behaviour": "OverrideIfOriginMissing",
///                     "duration": "365.23:59:59",
///                     "compression_enabled": True,
///                     "query_string_behaviour": "IncludeSpecifiedQueryStrings",
///                     "query_string_parameters": [
///                         "foo",
///                         "clientIp={client_ip}",
///                     ],
///                 },
///             },
///         },
///         "conditions": {
///             "host_names": [{
///                 "operator": "Equal",
///                 "values": [
///                     "www.contoso.com",
///                     "images.contoso.com",
///                     "video.contoso.com",
///                 ],
///                 "transforms": [
///                     "Lowercase",
///                     "Trim",
///                 ],
///             }],
///             "device_types": [{
///                 "operator": "Equal",
///                 "values": "Mobile",
///             }],
///             "post_arguments": [{
///                 "name": "customerName",
///                 "operator": "BeginsWith",
///                 "values": [
///                     "J",
///                     "K",
///                 ],
///                 "transforms": ["Uppercase"],
///             }],
///             "request_methods": [{
///                 "operator": "Equal",
///                 "values": ["DELETE"],
///             }],
///             "request_filenames": [{
///                 "operator": "Equal",
///                 "values": ["media.mp4"],
///                 "transforms": [
///                     "Lowercase",
///                     "RemoveNulls",
///                     "Trim",
///                 ],
///             }],
///         },
///     }])
/// example_frontdoor_route = azure.cdn.FrontdoorRoute("example",
///     name="example-cdn-frontdoor-route",
///     cdn_frontdoor_endpoint_id=example_frontdoor_endpoint.id,
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     cdn_frontdoor_origin_ids=[example_frontdoor_origin.id],
///     cdn_frontdoor_rule_set_ids=[example_frontdoor_batch_rule_set.id],
///     patterns_to_matches=["/*"],
///     supported_protocols=[
///         "Http",
///         "Https",
///     ])
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
///     var exampleFrontdoorBatchRuleSet = new Azure.Cdn.FrontdoorBatchRuleSet("example", new()
///     {
///         Name = "examplebatchruleset",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         Rules = new[]
///         {
///             new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleArgs
///             {
///                 Name = "examplebatchrule",
///                 Order = 1,
///                 BehaviourOnMatch = "Continue",
///                 Actions = new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleActionsArgs
///                 {
///                     RouteConfigurationOverride = new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideArgs
///                     {
///                         OriginGroup = new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroupArgs
///                         {
///                             CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///                             ForwardingProtocol = "HttpsOnly",
///                         },
///                         Caching = new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCachingArgs
///                         {
///                             Behaviour = "OverrideIfOriginMissing",
///                             Duration = "365.23:59:59",
///                             CompressionEnabled = true,
///                             QueryStringBehaviour = "IncludeSpecifiedQueryStrings",
///                             QueryStringParameters = new[]
///                             {
///                                 "foo",
///                                 "clientIp={client_ip}",
///                             },
///                         },
///                     },
///                 },
///                 Conditions = new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsArgs
///                 {
///                     HostNames = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsHostNameArgs
///                         {
///                             Operator = "Equal",
///                             Values = new[]
///                             {
///                                 "www.contoso.com",
///                                 "images.contoso.com",
///                                 "video.contoso.com",
///                             },
///                             Transforms = new[]
///                             {
///                                 "Lowercase",
///                                 "Trim",
///                             },
///                         },
///                     },
///                     DeviceTypes = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsDeviceTypeArgs
///                         {
///                             Operator = "Equal",
///                             Values = "Mobile",
///                         },
///                     },
///                     PostArguments = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsPostArgumentArgs
///                         {
///                             Name = "customerName",
///                             Operator = "BeginsWith",
///                             Values = new[]
///                             {
///                                 "J",
///                                 "K",
///                             },
///                             Transforms = new[]
///                             {
///                                 "Uppercase",
///                             },
///                         },
///                     },
///                     RequestMethods = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsRequestMethodArgs
///                         {
///                             Operator = "Equal",
///                             Values = new[]
///                             {
///                                 "DELETE",
///                             },
///                         },
///                     },
///                     RequestFilenames = new[]
///                     {
///                         new Azure.Cdn.Inputs.FrontdoorBatchRuleSetRuleConditionsRequestFilenameArgs
///                         {
///                             Operator = "Equal",
///                             Values = new[]
///                             {
///                                 "media.mp4",
///                             },
///                             Transforms = new[]
///                             {
///                                 "Lowercase",
///                                 "RemoveNulls",
///                                 "Trim",
///                             },
///                         },
///                     },
///                 },
///             },
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
///         CdnFrontdoorRuleSetIds = new[]
///         {
///             exampleFrontdoorBatchRuleSet.Id,
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
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"endpoint": pulumi.String("contoso.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                   pulumi.String("example-originGroup"),
/// 			CdnFrontdoorProfileId:  exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
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
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
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
/// 		exampleFrontdoorBatchRuleSet, err := cdn.NewFrontdoorBatchRuleSet(ctx, "example", &cdn.FrontdoorBatchRuleSetArgs{
/// 			Name:                  pulumi.String("examplebatchruleset"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			Rules: cdn.FrontdoorBatchRuleSetRuleArray{
/// 				&cdn.FrontdoorBatchRuleSetRuleArgs{
/// 					Name:             pulumi.String("examplebatchrule"),
/// 					Order:            pulumi.Int(1),
/// 					BehaviourOnMatch: pulumi.String("Continue"),
/// 					Actions: &cdn.FrontdoorBatchRuleSetRuleActionsArgs{
/// 						RouteConfigurationOverride: &cdn.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideArgs{
/// 							OriginGroup: &cdn.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroupArgs{
/// 								CdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 								ForwardingProtocol:        pulumi.String("HttpsOnly"),
/// 							},
/// 							Caching: &cdn.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCachingArgs{
/// 								Behaviour:            pulumi.String("OverrideIfOriginMissing"),
/// 								Duration:             pulumi.String("365.23:59:59"),
/// 								CompressionEnabled:   pulumi.Bool(true),
/// 								QueryStringBehaviour: pulumi.String("IncludeSpecifiedQueryStrings"),
/// 								QueryStringParameters: pulumi.StringArray{
/// 									pulumi.String("foo"),
/// 									pulumi.String("clientIp={client_ip}"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Conditions: &cdn.FrontdoorBatchRuleSetRuleConditionsArgs{
/// 						HostNames: cdn.FrontdoorBatchRuleSetRuleConditionsHostNameArray{
/// 							&cdn.FrontdoorBatchRuleSetRuleConditionsHostNameArgs{
/// 								Operator: pulumi.String("Equal"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("www.contoso.com"),
/// 									pulumi.String("images.contoso.com"),
/// 									pulumi.String("video.contoso.com"),
/// 								},
/// 								Transforms: pulumi.StringArray{
/// 									pulumi.String("Lowercase"),
/// 									pulumi.String("Trim"),
/// 								},
/// 							},
/// 						},
/// 						DeviceTypes: cdn.FrontdoorBatchRuleSetRuleConditionsDeviceTypeArray{
/// 							&cdn.FrontdoorBatchRuleSetRuleConditionsDeviceTypeArgs{
/// 								Operator: pulumi.String("Equal"),
/// 								Values:   pulumi.String("Mobile"),
/// 							},
/// 						},
/// 						PostArguments: cdn.FrontdoorBatchRuleSetRuleConditionsPostArgumentArray{
/// 							&cdn.FrontdoorBatchRuleSetRuleConditionsPostArgumentArgs{
/// 								Name:     pulumi.String("customerName"),
/// 								Operator: pulumi.String("BeginsWith"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("J"),
/// 									pulumi.String("K"),
/// 								},
/// 								Transforms: pulumi.StringArray{
/// 									pulumi.String("Uppercase"),
/// 								},
/// 							},
/// 						},
/// 						RequestMethods: cdn.FrontdoorBatchRuleSetRuleConditionsRequestMethodArray{
/// 							&cdn.FrontdoorBatchRuleSetRuleConditionsRequestMethodArgs{
/// 								Operator: pulumi.String("Equal"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("DELETE"),
/// 								},
/// 							},
/// 						},
/// 						RequestFilenames: cdn.FrontdoorBatchRuleSetRuleConditionsRequestFilenameArray{
/// 							&cdn.FrontdoorBatchRuleSetRuleConditionsRequestFilenameArgs{
/// 								Operator: pulumi.String("Equal"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("media.mp4"),
/// 								},
/// 								Transforms: pulumi.StringArray{
/// 									pulumi.String("Lowercase"),
/// 									pulumi.String("RemoveNulls"),
/// 									pulumi.String("Trim"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorRoute(ctx, "example", &cdn.FrontdoorRouteArgs{
/// 			Name:                      pulumi.String("example-cdn-frontdoor-route"),
/// 			CdnFrontdoorEndpointId:    exampleFrontdoorEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			CdnFrontdoorOriginIds: pulumi.StringArray{
/// 				exampleFrontdoorOrigin.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			CdnFrontdoorRuleSetIds: pulumi.StringArray{
/// 				exampleFrontdoorBatchRuleSet.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example-cdn-frontdoor"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Premium_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoorendpoint" "example" {
///   name                     = "example-endpoint"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   tags = {
///     "endpoint" = "contoso.com"
///   }
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                                                      = "example-originGroup"
///   cdn_frontdoor_profile_id                                  = azure_cdn_frontdoorprofile.example.id
///   session_affinity_enabled                                  = true
///   restore_traffic_time_to_healed_or_new_endpoint_in_minutes = 10
///   health_probe = {
///     interval_in_seconds = 240
///     path                = "/healthProbe"
///     protocol            = "Https"
///     request_type        = "GET"
///   }
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
///   host_name                      = azure_cdn_frontdoorendpoint.example.host_name
///   http_port                      = 80
///   https_port                     = 443
///   origin_host_header             = "contoso.com"
///   priority                       = 1
///   weight                         = 500
/// }
/// resource "azure_cdn_frontdoorbatchruleset" "example" {
///   name                     = "examplebatchruleset"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   rules {
///     name               = "examplebatchrule"
///     order              = 1
///     behaviour_on_match = "Continue"
///     actions = {
///       route_configuration_override = {
///         origin_group = {
///           cdn_frontdoor_origin_group_id = azure_cdn_frontdoororigingroup.example.id
///           forwarding_protocol           = "HttpsOnly"
///         }
///         caching = {
///           behaviour               = "OverrideIfOriginMissing"
///           duration                = "365.23:59:59"
///           compression_enabled     = true
///           query_string_behaviour  = "IncludeSpecifiedQueryStrings"
///           query_string_parameters = ["foo", "clientIp={client_ip}"]
///         }
///       }
///     }
///     conditions = {
///       host_names = [{
///         "operator"   = "Equal"
///         "values"     = ["www.contoso.com", "images.contoso.com", "video.contoso.com"]
///         "transforms" = ["Lowercase", "Trim"]
///       }]
///       device_types = [{
///         "operator" = "Equal"
///         "values"   = "Mobile"
///       }]
///       post_arguments = [{
///         "name"       = "customerName"
///         "operator"   = "BeginsWith"
///         "values"     = ["J", "K"]
///         "transforms" = ["Uppercase"]
///       }]
///       request_methods = [{
///         "operator" = "Equal"
///         "values"   = ["DELETE"]
///       }]
///       request_filenames = [{
///         "operator"   = "Equal"
///         "values"     = ["media.mp4"]
///         "transforms" = ["Lowercase", "RemoveNulls", "Trim"]
///       }]
///     }
///   }
/// }
/// resource "azure_cdn_frontdoorroute" "example" {
///   name                          = "example-cdn-frontdoor-route"
///   cdn_frontdoor_endpoint_id     = azure_cdn_frontdoorendpoint.example.id
///   cdn_frontdoor_origin_group_id = azure_cdn_frontdoororigingroup.example.id
///   cdn_frontdoor_origin_ids      = [azure_cdn_frontdoororigin.example.id]
///   cdn_frontdoor_rule_set_ids    = [azure_cdn_frontdoorbatchruleset.example.id]
///   patterns_to_matches           = ["/*"]
///   supported_protocols           = ["Http", "Https"]
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
/// import com.pulumi.azure.cdn.FrontdoorBatchRuleSet;
/// import com.pulumi.azure.cdn.FrontdoorBatchRuleSetArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleActionsArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCachingArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsHostNameArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsDeviceTypeArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsPostArgumentArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsRequestMethodArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorBatchRuleSetRuleConditionsRequestFilenameArgs;
/// import com.pulumi.azure.cdn.FrontdoorRoute;
/// import com.pulumi.azure.cdn.FrontdoorRouteArgs;
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
///         var exampleFrontdoorBatchRuleSet = new FrontdoorBatchRuleSet("exampleFrontdoorBatchRuleSet", FrontdoorBatchRuleSetArgs.builder()
///             .name("examplebatchruleset")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .rules(FrontdoorBatchRuleSetRuleArgs.builder()
///                 .name("examplebatchrule")
///                 .order(1)
///                 .behaviourOnMatch("Continue")
///                 .actions(FrontdoorBatchRuleSetRuleActionsArgs.builder()
///                     .routeConfigurationOverride(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideArgs.builder()
///                         .originGroup(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroupArgs.builder()
///                             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///                             .forwardingProtocol("HttpsOnly")
///                             .build())
///                         .caching(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCachingArgs.builder()
///                             .behaviour("OverrideIfOriginMissing")
///                             .duration("365.23:59:59")
///                             .compressionEnabled(true)
///                             .queryStringBehaviour("IncludeSpecifiedQueryStrings")
///                             .queryStringParameters(
///                                 "foo",
///                                 "clientIp={client_ip}")
///                             .build())
///                         .build())
///                     .build())
///                 .conditions(FrontdoorBatchRuleSetRuleConditionsArgs.builder()
///                     .hostNames(FrontdoorBatchRuleSetRuleConditionsHostNameArgs.builder()
///                         .operator("Equal")
///                         .values(
///                             "www.contoso.com",
///                             "images.contoso.com",
///                             "video.contoso.com")
///                         .transforms(
///                             "Lowercase",
///                             "Trim")
///                         .build())
///                     .deviceTypes(FrontdoorBatchRuleSetRuleConditionsDeviceTypeArgs.builder()
///                         .operator("Equal")
///                         .values("Mobile")
///                         .build())
///                     .postArguments(FrontdoorBatchRuleSetRuleConditionsPostArgumentArgs.builder()
///                         .name("customerName")
///                         .operator("BeginsWith")
///                         .values(
///                             "J",
///                             "K")
///                         .transforms("Uppercase")
///                         .build())
///                     .requestMethods(FrontdoorBatchRuleSetRuleConditionsRequestMethodArgs.builder()
///                         .operator("Equal")
///                         .values("DELETE")
///                         .build())
///                     .requestFilenames(FrontdoorBatchRuleSetRuleConditionsRequestFilenameArgs.builder()
///                         .operator("Equal")
///                         .values("media.mp4")
///                         .transforms(
///                             "Lowercase",
///                             "RemoveNulls",
///                             "Trim")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFrontdoorRoute = new FrontdoorRoute("exampleFrontdoorRoute", FrontdoorRouteArgs.builder()
///             .name("example-cdn-frontdoor-route")
///             .cdnFrontdoorEndpointId(exampleFrontdoorEndpoint.id())
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .cdnFrontdoorOriginIds(exampleFrontdoorOrigin.id())
///             .cdnFrontdoorRuleSetIds(exampleFrontdoorBatchRuleSet.id())
///             .patternsToMatches("/*")
///             .supportedProtocols(
///                 "Http",
///                 "Https")
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
///   exampleFrontdoorBatchRuleSet:
///     type: azure:cdn:FrontdoorBatchRuleSet
///     name: example
///     properties:
///       name: examplebatchruleset
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       rules:
///         - name: examplebatchrule
///           order: 1
///           behaviourOnMatch: Continue
///           actions:
///             routeConfigurationOverride:
///               originGroup:
///                 cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///                 forwardingProtocol: HttpsOnly
///               caching:
///                 behaviour: OverrideIfOriginMissing
///                 duration: 365.23:59:59
///                 compressionEnabled: true
///                 queryStringBehaviour: IncludeSpecifiedQueryStrings
///                 queryStringParameters:
///                   - foo
///                   - clientIp={client_ip}
///           conditions:
///             hostNames:
///               - operator: Equal
///                 values:
///                   - www.contoso.com
///                   - images.contoso.com
///                   - video.contoso.com
///                 transforms:
///                   - Lowercase
///                   - Trim
///             deviceTypes:
///               - operator: Equal
///                 values: Mobile
///             postArguments:
///               - name: customerName
///                 operator: BeginsWith
///                 values:
///                   - J
///                   - K
///                 transforms:
///                   - Uppercase
///             requestMethods:
///               - operator: Equal
///                 values:
///                   - DELETE
///             requestFilenames:
///               - operator: Equal
///                 values:
///                   - media.mp4
///                 transforms:
///                   - Lowercase
///                   - RemoveNulls
///                   - Trim
///   exampleFrontdoorRoute:
///     type: azure:cdn:FrontdoorRoute
///     name: example
///     properties:
///       name: example-cdn-frontdoor-route
///       cdnFrontdoorEndpointId: ${exampleFrontdoorEndpoint.id}
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       cdnFrontdoorOriginIds:
///         - ${exampleFrontdoorOrigin.id}
///       cdnFrontdoorRuleSetIds:
///         - ${exampleFrontdoorBatchRuleSet.id}
///       patternsToMatches:
///         - /*
///       supportedProtocols:
///         - Http
///         - Https
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
///
/// ## Import
///
/// A Front Door Batch Rule Set can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorBatchRuleSet:FrontdoorBatchRuleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1
/// ```
///
/// &gt; **Note:** Only Rule Sets that were provisioned in batch mode can be managed by this resource. Importing a Rule Set that was not provisioned in batch mode returns an error - use `azure.cdn.FrontdoorRuleSet` instead.
class FrontdoorBatchRuleSet extends pulumi.CustomResource {
  /// The resource ID of the Front Door Profile where this Front Door Batch Rule Set should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Batch Rule Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `rule` blocks as defined below. The configured blocks represent the complete set of rules managed for this Front Door Batch Rule Set. The final rule ordering is determined by each block's `order` value. A maximum of `100` `rule` blocks may be defined.
  ///
  /// &gt; **Note:** The `rule` blocks must be declared in ascending `order`, gaps between different rules are allowed. To insert, remove, or move a rule, update the full `rule` collection in the same ascending order that you want Terraform to store.
  ///
  /// &gt; **Note:** Each `rule` block must use a unique `name` value and a unique `order` value.
  ///
  /// &gt; **Note:** Each `rule` that enables caching (using the `route_configuration_override.caching` block with a `behaviour` other than `Disabled`) consumes two of the `100` available rule slots. The plan fails if the effective number of rule slots exceeds this service-side quota.
  late final pulumi.Output<List<FrontdoorBatchRuleSetRule>> rules;

  /// Creates a new [FrontdoorBatchRuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorBatchRuleSet]. {@macro pulumi_cdn_frontdoor_batch_rule_set_frontdoor_batch_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorBatchRuleSet(
    String name, {
    FrontdoorBatchRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorBatchRuleSet:FrontdoorBatchRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<FrontdoorBatchRuleSetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBatchRuleSetRule>(guardedValue, (value) => FrontdoorBatchRuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [FrontdoorBatchRuleSet] resource's state with the given [name] and [id].
  static FrontdoorBatchRuleSet get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorBatchRuleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrontdoorBatchRuleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrontdoorBatchRuleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorBatchRuleSet:FrontdoorBatchRuleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<FrontdoorBatchRuleSetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBatchRuleSetRule>(guardedValue, (value) => FrontdoorBatchRuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [FrontdoorBatchRuleSet] resource.
  FrontdoorBatchRuleSet.reference(String urn)
    : super(
        'azure:cdn/frontdoorBatchRuleSet:FrontdoorBatchRuleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<FrontdoorBatchRuleSetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBatchRuleSetRule>(guardedValue, (value) => FrontdoorBatchRuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
