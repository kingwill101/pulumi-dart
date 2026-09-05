import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_adaptive_routing.dart';
import 'load_balancer_args.dart';
import 'load_balancer_location_strategy.dart';
import 'load_balancer_random_steering.dart';
import 'load_balancer_rule.dart';
import 'load_balancer_session_affinity_attributes.dart';
import 'load_balancer_state.dart';

/// Accepted Permissions
///
/// - `Load Balancers Read`
/// - `Load Balancers Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLoadBalancer = new cloudflare.LoadBalancer("example_load_balancer", {
///     defaultPools: [
///         "17b5962d775c646f3f9725cbc7a53df4",
///         "9290f38c5d07c2e2f4df57b1f61d4196",
///         "00920f38ce07c2e2f4df50b1f61d4194",
///     ],
///     fallbackPool: "fallback_pool",
///     name: "www.example.com",
///     zoneId: "zone_id",
///     adaptiveRouting: {
///         failoverAcrossPools: true,
///     },
///     countryPools: {
///         GB: ["abd90f38ced07c2e2f4df50b1f61d4194"],
///         US: [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "00920f38ce07c2e2f4df50b1f61d4194",
///         ],
///     },
///     description: "Load Balancer for www.example.com",
///     enabled: true,
///     locationStrategy: {
///         mode: "resolver_ip",
///         preferEcs: "always",
///     },
///     networks: ["string"],
///     popPools: {
///         LAX: [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "9290f38c5d07c2e2f4df57b1f61d4196",
///         ],
///         LHR: [
///             "abd90f38ced07c2e2f4df50b1f61d4194",
///             "f9138c5d07c2e2f4df57b1f61d4196",
///         ],
///         SJC: ["00920f38ce07c2e2f4df50b1f61d4194"],
///     },
///     proxied: true,
///     randomSteering: {
///         defaultWeight: 0.2,
///         poolWeights: {
///             "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///             de90f38ced07c2e2f4df50b1f61d4194: 0.3,
///         },
///     },
///     regionPools: {
///         ENAM: ["00920f38ce07c2e2f4df50b1f61d4194"],
///         WNAM: [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "9290f38c5d07c2e2f4df57b1f61d4196",
///         ],
///     },
///     rules: [{
///         condition: "http.request.uri.path contains \"/testing\"",
///         disabled: true,
///         fixedResponse: {
///             contentType: "application/json",
///             location: "www.example.com",
///             messageBody: "Testing Hello",
///             statusCode: 0,
///         },
///         name: "route the path /testing to testing datacenter.",
///         overrides: {
///             adaptiveRouting: {
///                 failoverAcrossPools: true,
///             },
///             countryPools: {
///                 GB: ["abd90f38ced07c2e2f4df50b1f61d4194"],
///                 US: [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "00920f38ce07c2e2f4df50b1f61d4194",
///                 ],
///             },
///             defaultPools: [
///                 "17b5962d775c646f3f9725cbc7a53df4",
///                 "9290f38c5d07c2e2f4df57b1f61d4196",
///                 "00920f38ce07c2e2f4df50b1f61d4194",
///             ],
///             fallbackPool: "fallback_pool",
///             locationStrategy: {
///                 mode: "resolver_ip",
///                 preferEcs: "always",
///             },
///             poolDefaultWeight: 0.2,
///             poolWeights: {
///                 "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///                 de90f38ced07c2e2f4df50b1f61d4194: 0.3,
///             },
///             pools: ["17b5962d775c646f3f9725cbc7a53df4"],
///             popPools: {
///                 LAX: [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196",
///                 ],
///                 LHR: [
///                     "abd90f38ced07c2e2f4df50b1f61d4194",
///                     "f9138c5d07c2e2f4df57b1f61d4196",
///                 ],
///                 SJC: ["00920f38ce07c2e2f4df50b1f61d4194"],
///             },
///             randomSteering: {
///                 defaultWeight: 0.2,
///                 poolWeights: {
///                     "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///                     de90f38ced07c2e2f4df50b1f61d4194: 0.3,
///                 },
///             },
///             regionPools: {
///                 ENAM: ["00920f38ce07c2e2f4df50b1f61d4194"],
///                 WNAM: [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196",
///                 ],
///             },
///             sessionAffinity: "cookie",
///             sessionAffinityAttributes: {
///                 drainDuration: 100,
///                 headers: ["x"],
///                 requireAllHeaders: true,
///                 samesite: "Auto",
///                 secure: "Auto",
///                 zeroDowntimeFailover: "sticky",
///             },
///             sessionAffinityTtl: 1800,
///             steeringPolicy: "dynamic_latency",
///             ttl: 30,
///         },
///         priority: 0,
///         terminates: true,
///     }],
///     sessionAffinity: "cookie",
///     sessionAffinityAttributes: {
///         drainDuration: 100,
///         headers: ["x"],
///         requireAllHeaders: true,
///         samesite: "Auto",
///         secure: "Auto",
///         zeroDowntimeFailover: "sticky",
///     },
///     sessionAffinityTtl: 1800,
///     steeringPolicy: "dynamic_latency",
///     ttl: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_load_balancer = cloudflare.LoadBalancer("example_load_balancer",
///     default_pools=[
///         "17b5962d775c646f3f9725cbc7a53df4",
///         "9290f38c5d07c2e2f4df57b1f61d4196",
///         "00920f38ce07c2e2f4df50b1f61d4194",
///     ],
///     fallback_pool="fallback_pool",
///     name="www.example.com",
///     zone_id="zone_id",
///     adaptive_routing={
///         "failover_across_pools": True,
///     },
///     country_pools={
///         "GB": ["abd90f38ced07c2e2f4df50b1f61d4194"],
///         "US": [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "00920f38ce07c2e2f4df50b1f61d4194",
///         ],
///     },
///     description="Load Balancer for www.example.com",
///     enabled=True,
///     location_strategy={
///         "mode": "resolver_ip",
///         "prefer_ecs": "always",
///     },
///     networks=["string"],
///     pop_pools={
///         "LAX": [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "9290f38c5d07c2e2f4df57b1f61d4196",
///         ],
///         "LHR": [
///             "abd90f38ced07c2e2f4df50b1f61d4194",
///             "f9138c5d07c2e2f4df57b1f61d4196",
///         ],
///         "SJC": ["00920f38ce07c2e2f4df50b1f61d4194"],
///     },
///     proxied=True,
///     random_steering={
///         "default_weight": 0.2,
///         "pool_weights": {
///             "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///             "de90f38ced07c2e2f4df50b1f61d4194": 0.3,
///         },
///     },
///     region_pools={
///         "ENAM": ["00920f38ce07c2e2f4df50b1f61d4194"],
///         "WNAM": [
///             "de90f38ced07c2e2f4df50b1f61d4194",
///             "9290f38c5d07c2e2f4df57b1f61d4196",
///         ],
///     },
///     rules=[{
///         "condition": "http.request.uri.path contains \"/testing\"",
///         "disabled": True,
///         "fixed_response": {
///             "content_type": "application/json",
///             "location": "www.example.com",
///             "message_body": "Testing Hello",
///             "status_code": 0,
///         },
///         "name": "route the path /testing to testing datacenter.",
///         "overrides": {
///             "adaptive_routing": {
///                 "failover_across_pools": True,
///             },
///             "country_pools": {
///                 "GB": ["abd90f38ced07c2e2f4df50b1f61d4194"],
///                 "US": [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "00920f38ce07c2e2f4df50b1f61d4194",
///                 ],
///             },
///             "default_pools": [
///                 "17b5962d775c646f3f9725cbc7a53df4",
///                 "9290f38c5d07c2e2f4df57b1f61d4196",
///                 "00920f38ce07c2e2f4df50b1f61d4194",
///             ],
///             "fallback_pool": "fallback_pool",
///             "location_strategy": {
///                 "mode": "resolver_ip",
///                 "prefer_ecs": "always",
///             },
///             "pool_default_weight": 0.2,
///             "pool_weights": {
///                 "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///                 "de90f38ced07c2e2f4df50b1f61d4194": 0.3,
///             },
///             "pools": ["17b5962d775c646f3f9725cbc7a53df4"],
///             "pop_pools": {
///                 "LAX": [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196",
///                 ],
///                 "LHR": [
///                     "abd90f38ced07c2e2f4df50b1f61d4194",
///                     "f9138c5d07c2e2f4df57b1f61d4196",
///                 ],
///                 "SJC": ["00920f38ce07c2e2f4df50b1f61d4194"],
///             },
///             "random_steering": {
///                 "default_weight": 0.2,
///                 "pool_weights": {
///                     "9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
///                     "de90f38ced07c2e2f4df50b1f61d4194": 0.3,
///                 },
///             },
///             "region_pools": {
///                 "ENAM": ["00920f38ce07c2e2f4df50b1f61d4194"],
///                 "WNAM": [
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196",
///                 ],
///             },
///             "session_affinity": "cookie",
///             "session_affinity_attributes": {
///                 "drain_duration": float(100),
///                 "headers": ["x"],
///                 "require_all_headers": True,
///                 "samesite": "Auto",
///                 "secure": "Auto",
///                 "zero_downtime_failover": "sticky",
///             },
///             "session_affinity_ttl": float(1800),
///             "steering_policy": "dynamic_latency",
///             "ttl": float(30),
///         },
///         "priority": 0,
///         "terminates": True,
///     }],
///     session_affinity="cookie",
///     session_affinity_attributes={
///         "drain_duration": float(100),
///         "headers": ["x"],
///         "require_all_headers": True,
///         "samesite": "Auto",
///         "secure": "Auto",
///         "zero_downtime_failover": "sticky",
///     },
///     session_affinity_ttl=float(1800),
///     steering_policy="dynamic_latency",
///     ttl=float(30))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLoadBalancer = new Cloudflare.LoadBalancer("example_load_balancer", new()
///     {
///         DefaultPools = new[]
///         {
///             "17b5962d775c646f3f9725cbc7a53df4",
///             "9290f38c5d07c2e2f4df57b1f61d4196",
///             "00920f38ce07c2e2f4df50b1f61d4194",
///         },
///         FallbackPool = "fallback_pool",
///         Name = "www.example.com",
///         ZoneId = "zone_id",
///         AdaptiveRouting = new Cloudflare.Inputs.LoadBalancerAdaptiveRoutingArgs
///         {
///             FailoverAcrossPools = true,
///         },
///         CountryPools =
///         {
///             { "GB", new[]
///             {
///                 "abd90f38ced07c2e2f4df50b1f61d4194",
///             } },
///             { "US", new[]
///             {
///                 "de90f38ced07c2e2f4df50b1f61d4194",
///                 "00920f38ce07c2e2f4df50b1f61d4194",
///             } },
///         },
///         Description = "Load Balancer for www.example.com",
///         Enabled = true,
///         LocationStrategy = new Cloudflare.Inputs.LoadBalancerLocationStrategyArgs
///         {
///             Mode = "resolver_ip",
///             PreferEcs = "always",
///         },
///         Networks = new[]
///         {
///             "string",
///         },
///         PopPools =
///         {
///             { "LAX", new[]
///             {
///                 "de90f38ced07c2e2f4df50b1f61d4194",
///                 "9290f38c5d07c2e2f4df57b1f61d4196",
///             } },
///             { "LHR", new[]
///             {
///                 "abd90f38ced07c2e2f4df50b1f61d4194",
///                 "f9138c5d07c2e2f4df57b1f61d4196",
///             } },
///             { "SJC", new[]
///             {
///                 "00920f38ce07c2e2f4df50b1f61d4194",
///             } },
///         },
///         Proxied = true,
///         RandomSteering = new Cloudflare.Inputs.LoadBalancerRandomSteeringArgs
///         {
///             DefaultWeight = 0.2,
///             PoolWeights =
///             {
///                 { "9290f38c5d07c2e2f4df57b1f61d4196", 0.5 },
///                 { "de90f38ced07c2e2f4df50b1f61d4194", 0.3 },
///             },
///         },
///         RegionPools =
///         {
///             { "ENAM", new[]
///             {
///                 "00920f38ce07c2e2f4df50b1f61d4194",
///             } },
///             { "WNAM", new[]
///             {
///                 "de90f38ced07c2e2f4df50b1f61d4194",
///                 "9290f38c5d07c2e2f4df57b1f61d4196",
///             } },
///         },
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.LoadBalancerRuleArgs
///             {
///                 Condition = "http.request.uri.path contains \"/testing\"",
///                 Disabled = true,
///                 FixedResponse = new Cloudflare.Inputs.LoadBalancerRuleFixedResponseArgs
///                 {
///                     ContentType = "application/json",
///                     Location = "www.example.com",
///                     MessageBody = "Testing Hello",
///                     StatusCode = 0,
///                 },
///                 Name = "route the path /testing to testing datacenter.",
///                 Overrides = new Cloudflare.Inputs.LoadBalancerRuleOverridesArgs
///                 {
///                     AdaptiveRouting = new Cloudflare.Inputs.LoadBalancerRuleOverridesAdaptiveRoutingArgs
///                     {
///                         FailoverAcrossPools = true,
///                     },
///                     CountryPools =
///                     {
///                         { "GB", new[]
///                         {
///                             "abd90f38ced07c2e2f4df50b1f61d4194",
///                         } },
///                         { "US", new[]
///                         {
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "00920f38ce07c2e2f4df50b1f61d4194",
///                         } },
///                     },
///                     DefaultPools = new[]
///                     {
///                         "17b5962d775c646f3f9725cbc7a53df4",
///                         "9290f38c5d07c2e2f4df57b1f61d4196",
///                         "00920f38ce07c2e2f4df50b1f61d4194",
///                     },
///                     FallbackPool = "fallback_pool",
///                     LocationStrategy = new Cloudflare.Inputs.LoadBalancerRuleOverridesLocationStrategyArgs
///                     {
///                         Mode = "resolver_ip",
///                         PreferEcs = "always",
///                     },
///                     PoolDefaultWeight = 0.2,
///                     PoolWeights =
///                     {
///                         { "9290f38c5d07c2e2f4df57b1f61d4196", 0.5 },
///                         { "de90f38ced07c2e2f4df50b1f61d4194", 0.3 },
///                     },
///                     Pools = new[]
///                     {
///                         "17b5962d775c646f3f9725cbc7a53df4",
///                     },
///                     PopPools =
///                     {
///                         { "LAX", new[]
///                         {
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "9290f38c5d07c2e2f4df57b1f61d4196",
///                         } },
///                         { "LHR", new[]
///                         {
///                             "abd90f38ced07c2e2f4df50b1f61d4194",
///                             "f9138c5d07c2e2f4df57b1f61d4196",
///                         } },
///                         { "SJC", new[]
///                         {
///                             "00920f38ce07c2e2f4df50b1f61d4194",
///                         } },
///                     },
///                     RandomSteering = new Cloudflare.Inputs.LoadBalancerRuleOverridesRandomSteeringArgs
///                     {
///                         DefaultWeight = 0.2,
///                         PoolWeights =
///                         {
///                             { "9290f38c5d07c2e2f4df57b1f61d4196", 0.5 },
///                             { "de90f38ced07c2e2f4df50b1f61d4194", 0.3 },
///                         },
///                     },
///                     RegionPools =
///                     {
///                         { "ENAM", new[]
///                         {
///                             "00920f38ce07c2e2f4df50b1f61d4194",
///                         } },
///                         { "WNAM", new[]
///                         {
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "9290f38c5d07c2e2f4df57b1f61d4196",
///                         } },
///                     },
///                     SessionAffinity = "cookie",
///                     SessionAffinityAttributes = new Cloudflare.Inputs.LoadBalancerRuleOverridesSessionAffinityAttributesArgs
///                     {
///                         DrainDuration = 100,
///                         Headers = new[]
///                         {
///                             "x",
///                         },
///                         RequireAllHeaders = true,
///                         Samesite = "Auto",
///                         Secure = "Auto",
///                         ZeroDowntimeFailover = "sticky",
///                     },
///                     SessionAffinityTtl = 1800,
///                     SteeringPolicy = "dynamic_latency",
///                     Ttl = 30,
///                 },
///                 Priority = 0,
///                 Terminates = true,
///             },
///         },
///         SessionAffinity = "cookie",
///         SessionAffinityAttributes = new Cloudflare.Inputs.LoadBalancerSessionAffinityAttributesArgs
///         {
///             DrainDuration = 100,
///             Headers = new[]
///             {
///                 "x",
///             },
///             RequireAllHeaders = true,
///             Samesite = "Auto",
///             Secure = "Auto",
///             ZeroDowntimeFailover = "sticky",
///         },
///         SessionAffinityTtl = 1800,
///         SteeringPolicy = "dynamic_latency",
///         Ttl = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewLoadBalancer(ctx, "example_load_balancer", &cloudflare.LoadBalancerArgs{
/// 			DefaultPools: pulumi.StringArray{
/// 				pulumi.String("17b5962d775c646f3f9725cbc7a53df4"),
/// 				pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 				pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 			},
/// 			FallbackPool: pulumi.String("fallback_pool"),
/// 			Name:         pulumi.String("www.example.com"),
/// 			ZoneId:       pulumi.String("zone_id"),
/// 			AdaptiveRouting: &cloudflare.LoadBalancerAdaptiveRoutingArgs{
/// 				FailoverAcrossPools: pulumi.Bool(true),
/// 			},
/// 			CountryPools: pulumi.StringArrayMap{
/// 				"GB": pulumi.StringArray{
/// 					pulumi.String("abd90f38ced07c2e2f4df50b1f61d4194"),
/// 				},
/// 				"US": pulumi.StringArray{
/// 					pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 					pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 				},
/// 			},
/// 			Description: pulumi.String("Load Balancer for www.example.com"),
/// 			Enabled:     pulumi.Bool(true),
/// 			LocationStrategy: &cloudflare.LoadBalancerLocationStrategyArgs{
/// 				Mode:      pulumi.String("resolver_ip"),
/// 				PreferEcs: pulumi.String("always"),
/// 			},
/// 			Networks: pulumi.StringArray{
/// 				pulumi.String("string"),
/// 			},
/// 			PopPools: pulumi.StringArrayMap{
/// 				"LAX": pulumi.StringArray{
/// 					pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 					pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 				},
/// 				"LHR": pulumi.StringArray{
/// 					pulumi.String("abd90f38ced07c2e2f4df50b1f61d4194"),
/// 					pulumi.String("f9138c5d07c2e2f4df57b1f61d4196"),
/// 				},
/// 				"SJC": pulumi.StringArray{
/// 					pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 				},
/// 			},
/// 			Proxied: pulumi.Bool(true),
/// 			RandomSteering: &cloudflare.LoadBalancerRandomSteeringArgs{
/// 				DefaultWeight: pulumi.Float64(0.2),
/// 				PoolWeights: pulumi.Float64Map{
/// 					"9290f38c5d07c2e2f4df57b1f61d4196": pulumi.Float64(0.5),
/// 					"de90f38ced07c2e2f4df50b1f61d4194": pulumi.Float64(0.3),
/// 				},
/// 			},
/// 			RegionPools: pulumi.StringArrayMap{
/// 				"ENAM": pulumi.StringArray{
/// 					pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 				},
/// 				"WNAM": pulumi.StringArray{
/// 					pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 					pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 				},
/// 			},
/// 			Rules: cloudflare.LoadBalancerRuleArray{
/// 				&cloudflare.LoadBalancerRuleArgs{
/// 					Condition: pulumi.String("http.request.uri.path contains \"/testing\""),
/// 					Disabled:  pulumi.Bool(true),
/// 					FixedResponse: &cloudflare.LoadBalancerRuleFixedResponseArgs{
/// 						ContentType: pulumi.String("application/json"),
/// 						Location:    pulumi.String("www.example.com"),
/// 						MessageBody: pulumi.String("Testing Hello"),
/// 						StatusCode:  pulumi.Int(0),
/// 					},
/// 					Name: pulumi.String("route the path /testing to testing datacenter."),
/// 					Overrides: &cloudflare.LoadBalancerRuleOverridesArgs{
/// 						AdaptiveRouting: &cloudflare.LoadBalancerRuleOverridesAdaptiveRoutingArgs{
/// 							FailoverAcrossPools: pulumi.Bool(true),
/// 						},
/// 						CountryPools: pulumi.StringArrayMap{
/// 							"GB": pulumi.StringArray{
/// 								pulumi.String("abd90f38ced07c2e2f4df50b1f61d4194"),
/// 							},
/// 							"US": pulumi.StringArray{
/// 								pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 								pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 							},
/// 						},
/// 						DefaultPools: pulumi.StringArray{
/// 							pulumi.String("17b5962d775c646f3f9725cbc7a53df4"),
/// 							pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 							pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 						},
/// 						FallbackPool: pulumi.String("fallback_pool"),
/// 						LocationStrategy: &cloudflare.LoadBalancerRuleOverridesLocationStrategyArgs{
/// 							Mode:      pulumi.String("resolver_ip"),
/// 							PreferEcs: pulumi.String("always"),
/// 						},
/// 						PoolDefaultWeight: 0.2,
/// 						PoolWeights: map[string]float64{
/// 							"9290f38c5d07c2e2f4df57b1f61d4196": 0.5,
/// 							"de90f38ced07c2e2f4df50b1f61d4194": 0.3,
/// 						},
/// 						Pools: []string{
/// 							"17b5962d775c646f3f9725cbc7a53df4",
/// 						},
/// 						PopPools: pulumi.StringArrayMap{
/// 							"LAX": pulumi.StringArray{
/// 								pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 								pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 							},
/// 							"LHR": pulumi.StringArray{
/// 								pulumi.String("abd90f38ced07c2e2f4df50b1f61d4194"),
/// 								pulumi.String("f9138c5d07c2e2f4df57b1f61d4196"),
/// 							},
/// 							"SJC": pulumi.StringArray{
/// 								pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 							},
/// 						},
/// 						RandomSteering: &cloudflare.LoadBalancerRuleOverridesRandomSteeringArgs{
/// 							DefaultWeight: pulumi.Float64(0.2),
/// 							PoolWeights: pulumi.Float64Map{
/// 								"9290f38c5d07c2e2f4df57b1f61d4196": pulumi.Float64(0.5),
/// 								"de90f38ced07c2e2f4df50b1f61d4194": pulumi.Float64(0.3),
/// 							},
/// 						},
/// 						RegionPools: pulumi.StringArrayMap{
/// 							"ENAM": pulumi.StringArray{
/// 								pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
/// 							},
/// 							"WNAM": pulumi.StringArray{
/// 								pulumi.String("de90f38ced07c2e2f4df50b1f61d4194"),
/// 								pulumi.String("9290f38c5d07c2e2f4df57b1f61d4196"),
/// 							},
/// 						},
/// 						SessionAffinity: pulumi.String("cookie"),
/// 						SessionAffinityAttributes: &cloudflare.LoadBalancerRuleOverridesSessionAffinityAttributesArgs{
/// 							DrainDuration: pulumi.Float64(100),
/// 							Headers: pulumi.StringArray{
/// 								pulumi.String("x"),
/// 							},
/// 							RequireAllHeaders:    pulumi.Bool(true),
/// 							Samesite:             pulumi.String("Auto"),
/// 							Secure:               pulumi.String("Auto"),
/// 							ZeroDowntimeFailover: pulumi.String("sticky"),
/// 						},
/// 						SessionAffinityTtl: pulumi.Float64(1800),
/// 						SteeringPolicy:     pulumi.String("dynamic_latency"),
/// 						Ttl:                pulumi.Float64(30),
/// 					},
/// 					Priority:   pulumi.Int(0),
/// 					Terminates: pulumi.Bool(true),
/// 				},
/// 			},
/// 			SessionAffinity: pulumi.String("cookie"),
/// 			SessionAffinityAttributes: &cloudflare.LoadBalancerSessionAffinityAttributesArgs{
/// 				DrainDuration: pulumi.Float64(100),
/// 				Headers: pulumi.StringArray{
/// 					pulumi.String("x"),
/// 				},
/// 				RequireAllHeaders:    pulumi.Bool(true),
/// 				Samesite:             pulumi.String("Auto"),
/// 				Secure:               pulumi.String("Auto"),
/// 				ZeroDowntimeFailover: pulumi.String("sticky"),
/// 			},
/// 			SessionAffinityTtl: pulumi.Float64(1800),
/// 			SteeringPolicy:     pulumi.String("dynamic_latency"),
/// 			Ttl:                pulumi.Float64(30),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_loadbalancer" "example_load_balancer" {
///   default_pools = ["17b5962d775c646f3f9725cbc7a53df4", "9290f38c5d07c2e2f4df57b1f61d4196", "00920f38ce07c2e2f4df50b1f61d4194"]
///   fallback_pool = "fallback_pool"
///   name          = "www.example.com"
///   zone_id       = "zone_id"
///   adaptive_routing = {
///     failover_across_pools = true
///   }
///   country_pools = {
///     "GB" = ["abd90f38ced07c2e2f4df50b1f61d4194"]
///     "US" = ["de90f38ced07c2e2f4df50b1f61d4194", "00920f38ce07c2e2f4df50b1f61d4194"]
///   }
///   description = "Load Balancer for www.example.com"
///   enabled     = true
///   location_strategy = {
///     mode       = "resolver_ip"
///     prefer_ecs = "always"
///   }
///   networks = ["string"]
///   pop_pools = {
///     "LAX" = ["de90f38ced07c2e2f4df50b1f61d4194", "9290f38c5d07c2e2f4df57b1f61d4196"]
///     "LHR" = ["abd90f38ced07c2e2f4df50b1f61d4194", "f9138c5d07c2e2f4df57b1f61d4196"]
///     "SJC" = ["00920f38ce07c2e2f4df50b1f61d4194"]
///   }
///   proxied = true
///   random_steering = {
///     default_weight = 0.2
///     pool_weights = {
///       "9290f38c5d07c2e2f4df57b1f61d4196" = 0.5
///       "de90f38ced07c2e2f4df50b1f61d4194" = 0.3
///     }
///   }
///   region_pools = {
///     "ENAM" = ["00920f38ce07c2e2f4df50b1f61d4194"]
///     "WNAM" = ["de90f38ced07c2e2f4df50b1f61d4194", "9290f38c5d07c2e2f4df57b1f61d4196"]
///   }
///   rules {
///     condition = "http.request.uri.path contains \"/testing\""
///     disabled  = true
///     fixed_response = {
///       content_type = "application/json"
///       location     = "www.example.com"
///       message_body = "Testing Hello"
///       status_code  = 0
///     }
///     name = "route the path /testing to testing datacenter."
///     overrides = {
///       adaptive_routing = {
///         failover_across_pools = true
///       }
///       country_pools = {
///         "GB" = ["abd90f38ced07c2e2f4df50b1f61d4194"]
///         "US" = ["de90f38ced07c2e2f4df50b1f61d4194", "00920f38ce07c2e2f4df50b1f61d4194"]
///       }
///       default_pools = ["17b5962d775c646f3f9725cbc7a53df4", "9290f38c5d07c2e2f4df57b1f61d4196", "00920f38ce07c2e2f4df50b1f61d4194"]
///       fallback_pool = "fallback_pool"
///       location_strategy = {
///         mode       = "resolver_ip"
///         prefer_ecs = "always"
///       }
///       pool_default_weight = 0.2
///       pool_weights = {
///         "9290f38c5d07c2e2f4df57b1f61d4196" = 0.5
///         "de90f38ced07c2e2f4df50b1f61d4194" = 0.3
///       }
///       pools = ["17b5962d775c646f3f9725cbc7a53df4"]
///       pop_pools = {
///         "LAX" = ["de90f38ced07c2e2f4df50b1f61d4194", "9290f38c5d07c2e2f4df57b1f61d4196"]
///         "LHR" = ["abd90f38ced07c2e2f4df50b1f61d4194", "f9138c5d07c2e2f4df57b1f61d4196"]
///         "SJC" = ["00920f38ce07c2e2f4df50b1f61d4194"]
///       }
///       random_steering = {
///         default_weight = 0.2
///         pool_weights = {
///           "9290f38c5d07c2e2f4df57b1f61d4196" = 0.5
///           "de90f38ced07c2e2f4df50b1f61d4194" = 0.3
///         }
///       }
///       region_pools = {
///         "ENAM" = ["00920f38ce07c2e2f4df50b1f61d4194"]
///         "WNAM" = ["de90f38ced07c2e2f4df50b1f61d4194", "9290f38c5d07c2e2f4df57b1f61d4196"]
///       }
///       session_affinity = "cookie"
///       session_affinity_attributes = {
///         drain_duration         = 100
///         headers                = ["x"]
///         require_all_headers    = true
///         samesite               = "Auto"
///         secure                 = "Auto"
///         zero_downtime_failover = "sticky"
///       }
///       session_affinity_ttl = 1800
///       steering_policy      = "dynamic_latency"
///       ttl                  = 30
///     }
///     priority   = 0
///     terminates = true
///   }
///   session_affinity = "cookie"
///   session_affinity_attributes = {
///     drain_duration         = 100
///     headers                = ["x"]
///     require_all_headers    = true
///     samesite               = "Auto"
///     secure                 = "Auto"
///     zero_downtime_failover = "sticky"
///   }
///   session_affinity_ttl = 1800
///   steering_policy      = "dynamic_latency"
///   ttl                  = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LoadBalancer;
/// import com.pulumi.cloudflare.LoadBalancerArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerAdaptiveRoutingArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerLocationStrategyArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRandomSteeringArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleFixedResponseArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleOverridesArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleOverridesAdaptiveRoutingArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleOverridesLocationStrategyArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleOverridesRandomSteeringArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerRuleOverridesSessionAffinityAttributesArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerSessionAffinityAttributesArgs;
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
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .defaultPools(
///                 "17b5962d775c646f3f9725cbc7a53df4",
///                 "9290f38c5d07c2e2f4df57b1f61d4196",
///                 "00920f38ce07c2e2f4df50b1f61d4194")
///             .fallbackPool("fallback_pool")
///             .name("www.example.com")
///             .zoneId("zone_id")
///             .adaptiveRouting(LoadBalancerAdaptiveRoutingArgs.builder()
///                 .failoverAcrossPools(true)
///                 .build())
///             .countryPools(Map.ofEntries(
///                 Map.entry("GB", Arrays.asList("abd90f38ced07c2e2f4df50b1f61d4194")),
///                 Map.entry("US", Arrays.asList(
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "00920f38ce07c2e2f4df50b1f61d4194"))
///             ))
///             .description("Load Balancer for www.example.com")
///             .enabled(true)
///             .locationStrategy(LoadBalancerLocationStrategyArgs.builder()
///                 .mode("resolver_ip")
///                 .preferEcs("always")
///                 .build())
///             .networks("string")
///             .popPools(Map.ofEntries(
///                 Map.entry("LAX", Arrays.asList(
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196")),
///                 Map.entry("LHR", Arrays.asList(
///                     "abd90f38ced07c2e2f4df50b1f61d4194",
///                     "f9138c5d07c2e2f4df57b1f61d4196")),
///                 Map.entry("SJC", Arrays.asList("00920f38ce07c2e2f4df50b1f61d4194"))
///             ))
///             .proxied(true)
///             .randomSteering(LoadBalancerRandomSteeringArgs.builder()
///                 .defaultWeight(0.2)
///                 .poolWeights(Map.ofEntries(
///                     Map.entry("9290f38c5d07c2e2f4df57b1f61d4196", 0.5),
///                     Map.entry("de90f38ced07c2e2f4df50b1f61d4194", 0.3)
///                 ))
///                 .build())
///             .regionPools(Map.ofEntries(
///                 Map.entry("ENAM", Arrays.asList("00920f38ce07c2e2f4df50b1f61d4194")),
///                 Map.entry("WNAM", Arrays.asList(
///                     "de90f38ced07c2e2f4df50b1f61d4194",
///                     "9290f38c5d07c2e2f4df57b1f61d4196"))
///             ))
///             .rules(LoadBalancerRuleArgs.builder()
///                 .condition("http.request.uri.path contains \"/testing\"")
///                 .disabled(true)
///                 .fixedResponse(LoadBalancerRuleFixedResponseArgs.builder()
///                     .contentType("application/json")
///                     .location("www.example.com")
///                     .messageBody("Testing Hello")
///                     .statusCode(0)
///                     .build())
///                 .name("route the path /testing to testing datacenter.")
///                 .overrides(LoadBalancerRuleOverridesArgs.builder()
///                     .adaptiveRouting(LoadBalancerRuleOverridesAdaptiveRoutingArgs.builder()
///                         .failoverAcrossPools(true)
///                         .build())
///                     .countryPools(Map.ofEntries(
///                         Map.entry("GB", Arrays.asList("abd90f38ced07c2e2f4df50b1f61d4194")),
///                         Map.entry("US", Arrays.asList(
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "00920f38ce07c2e2f4df50b1f61d4194"))
///                     ))
///                     .defaultPools(
///                         "17b5962d775c646f3f9725cbc7a53df4",
///                         "9290f38c5d07c2e2f4df57b1f61d4196",
///                         "00920f38ce07c2e2f4df50b1f61d4194")
///                     .fallbackPool("fallback_pool")
///                     .locationStrategy(LoadBalancerRuleOverridesLocationStrategyArgs.builder()
///                         .mode("resolver_ip")
///                         .preferEcs("always")
///                         .build())
///                     .poolDefaultWeight(0.2)
///                     .poolWeights(Map.ofEntries(
///                         Map.entry("9290f38c5d07c2e2f4df57b1f61d4196", 0.5),
///                         Map.entry("de90f38ced07c2e2f4df50b1f61d4194", 0.3)
///                     ))
///                     .pools(Arrays.asList("17b5962d775c646f3f9725cbc7a53df4"))
///                     .popPools(Map.ofEntries(
///                         Map.entry("LAX", Arrays.asList(
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "9290f38c5d07c2e2f4df57b1f61d4196")),
///                         Map.entry("LHR", Arrays.asList(
///                             "abd90f38ced07c2e2f4df50b1f61d4194",
///                             "f9138c5d07c2e2f4df57b1f61d4196")),
///                         Map.entry("SJC", Arrays.asList("00920f38ce07c2e2f4df50b1f61d4194"))
///                     ))
///                     .randomSteering(LoadBalancerRuleOverridesRandomSteeringArgs.builder()
///                         .defaultWeight(0.2)
///                         .poolWeights(Map.ofEntries(
///                             Map.entry("9290f38c5d07c2e2f4df57b1f61d4196", 0.5),
///                             Map.entry("de90f38ced07c2e2f4df50b1f61d4194", 0.3)
///                         ))
///                         .build())
///                     .regionPools(Map.ofEntries(
///                         Map.entry("ENAM", Arrays.asList("00920f38ce07c2e2f4df50b1f61d4194")),
///                         Map.entry("WNAM", Arrays.asList(
///                             "de90f38ced07c2e2f4df50b1f61d4194",
///                             "9290f38c5d07c2e2f4df57b1f61d4196"))
///                     ))
///                     .sessionAffinity("cookie")
///                     .sessionAffinityAttributes(LoadBalancerRuleOverridesSessionAffinityAttributesArgs.builder()
///                         .drainDuration(100.0)
///                         .headers("x")
///                         .requireAllHeaders(true)
///                         .samesite("Auto")
///                         .secure("Auto")
///                         .zeroDowntimeFailover("sticky")
///                         .build())
///                     .sessionAffinityTtl(1800.0)
///                     .steeringPolicy("dynamic_latency")
///                     .ttl(30.0)
///                     .build())
///                 .priority(0)
///                 .terminates(true)
///                 .build())
///             .sessionAffinity("cookie")
///             .sessionAffinityAttributes(LoadBalancerSessionAffinityAttributesArgs.builder()
///                 .drainDuration(100.0)
///                 .headers("x")
///                 .requireAllHeaders(true)
///                 .samesite("Auto")
///                 .secure("Auto")
///                 .zeroDowntimeFailover("sticky")
///                 .build())
///             .sessionAffinityTtl(1800.0)
///             .steeringPolicy("dynamic_latency")
///             .ttl(30.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLoadBalancer:
///     type: cloudflare:LoadBalancer
///     name: example_load_balancer
///     properties:
///       defaultPools:
///         - 17b5962d775c646f3f9725cbc7a53df4
///         - 9290f38c5d07c2e2f4df57b1f61d4196
///         - 00920f38ce07c2e2f4df50b1f61d4194
///       fallbackPool: fallback_pool
///       name: www.example.com
///       zoneId: zone_id
///       adaptiveRouting:
///         failoverAcrossPools: true
///       countryPools:
///         GB:
///           - abd90f38ced07c2e2f4df50b1f61d4194
///         US:
///           - de90f38ced07c2e2f4df50b1f61d4194
///           - 00920f38ce07c2e2f4df50b1f61d4194
///       description: Load Balancer for www.example.com
///       enabled: true
///       locationStrategy:
///         mode: resolver_ip
///         preferEcs: always
///       networks:
///         - string
///       popPools:
///         LAX:
///           - de90f38ced07c2e2f4df50b1f61d4194
///           - 9290f38c5d07c2e2f4df57b1f61d4196
///         LHR:
///           - abd90f38ced07c2e2f4df50b1f61d4194
///           - f9138c5d07c2e2f4df57b1f61d4196
///         SJC:
///           - 00920f38ce07c2e2f4df50b1f61d4194
///       proxied: true
///       randomSteering:
///         defaultWeight: 0.2
///         poolWeights:
///           9290f38c5d07c2e2f4df57b1f61d4196: 0.5
///           de90f38ced07c2e2f4df50b1f61d4194: 0.3
///       regionPools:
///         ENAM:
///           - 00920f38ce07c2e2f4df50b1f61d4194
///         WNAM:
///           - de90f38ced07c2e2f4df50b1f61d4194
///           - 9290f38c5d07c2e2f4df57b1f61d4196
///       rules:
///         - condition: http.request.uri.path contains "/testing"
///           disabled: true
///           fixedResponse:
///             contentType: application/json
///             location: www.example.com
///             messageBody: Testing Hello
///             statusCode: 0
///           name: route the path /testing to testing datacenter.
///           overrides:
///             adaptiveRouting:
///               failoverAcrossPools: true
///             countryPools:
///               GB:
///                 - abd90f38ced07c2e2f4df50b1f61d4194
///               US:
///                 - de90f38ced07c2e2f4df50b1f61d4194
///                 - 00920f38ce07c2e2f4df50b1f61d4194
///             defaultPools:
///               - 17b5962d775c646f3f9725cbc7a53df4
///               - 9290f38c5d07c2e2f4df57b1f61d4196
///               - 00920f38ce07c2e2f4df50b1f61d4194
///             fallbackPool: fallback_pool
///             locationStrategy:
///               mode: resolver_ip
///               preferEcs: always
///             poolDefaultWeight: 0.2
///             poolWeights:
///               9290f38c5d07c2e2f4df57b1f61d4196: 0.5
///               de90f38ced07c2e2f4df50b1f61d4194: 0.3
///             pools:
///               - 17b5962d775c646f3f9725cbc7a53df4
///             popPools:
///               LAX:
///                 - de90f38ced07c2e2f4df50b1f61d4194
///                 - 9290f38c5d07c2e2f4df57b1f61d4196
///               LHR:
///                 - abd90f38ced07c2e2f4df50b1f61d4194
///                 - f9138c5d07c2e2f4df57b1f61d4196
///               SJC:
///                 - 00920f38ce07c2e2f4df50b1f61d4194
///             randomSteering:
///               defaultWeight: 0.2
///               poolWeights:
///                 9290f38c5d07c2e2f4df57b1f61d4196: 0.5
///                 de90f38ced07c2e2f4df50b1f61d4194: 0.3
///             regionPools:
///               ENAM:
///                 - 00920f38ce07c2e2f4df50b1f61d4194
///               WNAM:
///                 - de90f38ced07c2e2f4df50b1f61d4194
///                 - 9290f38c5d07c2e2f4df57b1f61d4196
///             sessionAffinity: cookie
///             sessionAffinityAttributes:
///               drainDuration: 100
///               headers:
///                 - x
///               requireAllHeaders: true
///               samesite: Auto
///               secure: Auto
///               zeroDowntimeFailover: sticky
///             sessionAffinityTtl: 1800
///             steeringPolicy: dynamic_latency
///             ttl: 30
///           priority: 0
///           terminates: true
///       sessionAffinity: cookie
///       sessionAffinityAttributes:
///         drainDuration: 100
///         headers:
///           - x
///         requireAllHeaders: true
///         samesite: Auto
///         secure: Auto
///         zeroDowntimeFailover: sticky
///       sessionAffinityTtl: 1800
///       steeringPolicy: dynamic_latency
///       ttl: 30
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/loadBalancer:LoadBalancer example '<{accounts|zones}/{account_id|zone_id}>/<load_balancer_id>'
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  late final pulumi.Output<LoadBalancerAdaptiveRouting> adaptiveRouting;
  /// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  late final pulumi.Output<Map<String, List<String>>> countryPools;
  late final pulumi.Output<String> createdOn;
  /// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  late final pulumi.Output<List<String>> defaultPools;
  /// Object description.
  late final pulumi.Output<String> description;
  /// Whether to enable (the default) this load balancer.
  late final pulumi.Output<bool> enabled;
  /// The pool ID to use when all other pools are detected as unhealthy.
  late final pulumi.Output<String> fallbackPool;
  /// Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  late final pulumi.Output<LoadBalancerLocationStrategy> locationStrategy;
  late final pulumi.Output<String> modifiedOn;
  /// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
  late final pulumi.Output<String> name;
  /// List of networks where Load Balancer or Pool is enabled.
  late final pulumi.Output<List<String>> networks;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  late final pulumi.Output<Map<String, List<String>>> popPools;
  /// Whether the hostname should be gray clouded (false) or orange clouded (true).
  late final pulumi.Output<bool> proxied;
  /// Configures pool weights.
  late final pulumi.Output<LoadBalancerRandomSteering> randomSteering;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  late final pulumi.Output<Map<String, List<String>>> regionPools;
  /// BETA Field Not General Access: A list of rules for this load balancer to execute.
  late final pulumi.Output<List<LoadBalancerRule>> rules;
  /// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// Available values: "none", "cookie", "ipCookie", "header".
  late final pulumi.Output<String> sessionAffinity;
  /// Configures attributes for session affinity.
  late final pulumi.Output<LoadBalancerSessionAffinityAttributes> sessionAffinityAttributes;
  /// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  late final pulumi.Output<double> sessionAffinityTtl;
  /// Steering Policy for this load balancer.
  late final pulumi.Output<String> steeringPolicy;
  /// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  late final pulumi.Output<double> ttl;
  late final pulumi.Output<String> zoneId;
  late final pulumi.Output<String> zoneName;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_index_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    adaptiveRouting = registerOutput<LoadBalancerAdaptiveRouting>('adaptiveRouting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    countryPools = registerOutput<Map<String, List<String>>>('countryPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    createdOn = registerOutput<String>('createdOn');
    defaultPools = registerOutput<List<String>>('defaultPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    fallbackPool = registerOutput<String>('fallbackPool');
    locationStrategy = registerOutput<LoadBalancerLocationStrategy>('locationStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    popPools = registerOutput<Map<String, List<String>>>('popPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    proxied = registerOutput<bool>('proxied');
    randomSteering = registerOutput<LoadBalancerRandomSteering>('randomSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionPools = registerOutput<Map<String, List<String>>>('regionPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    rules = registerOutput<List<LoadBalancerRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerRule>(guardedValue, (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>())); });
    sessionAffinity = registerOutput<String>('sessionAffinity');
    sessionAffinityAttributes = registerOutput<LoadBalancerSessionAffinityAttributes>('sessionAffinityAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sessionAffinityTtl = registerOutput<double>('sessionAffinityTtl');
    steeringPolicy = registerOutput<String>('steeringPolicy');
    ttl = registerOutput<double>('ttl');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adaptiveRouting = registerOutput<LoadBalancerAdaptiveRouting>('adaptiveRouting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    countryPools = registerOutput<Map<String, List<String>>>('countryPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    createdOn = registerOutput<String>('createdOn');
    defaultPools = registerOutput<List<String>>('defaultPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    fallbackPool = registerOutput<String>('fallbackPool');
    locationStrategy = registerOutput<LoadBalancerLocationStrategy>('locationStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    popPools = registerOutput<Map<String, List<String>>>('popPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    proxied = registerOutput<bool>('proxied');
    randomSteering = registerOutput<LoadBalancerRandomSteering>('randomSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionPools = registerOutput<Map<String, List<String>>>('regionPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    rules = registerOutput<List<LoadBalancerRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerRule>(guardedValue, (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>())); });
    sessionAffinity = registerOutput<String>('sessionAffinity');
    sessionAffinityAttributes = registerOutput<LoadBalancerSessionAffinityAttributes>('sessionAffinityAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sessionAffinityTtl = registerOutput<double>('sessionAffinityTtl');
    steeringPolicy = registerOutput<String>('steeringPolicy');
    ttl = registerOutput<double>('ttl');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [LoadBalancer] resource.
  LoadBalancer.reference(String urn)
    : super(
        'cloudflare:index/loadBalancer:LoadBalancer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    adaptiveRouting = registerOutput<LoadBalancerAdaptiveRouting>('adaptiveRouting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    countryPools = registerOutput<Map<String, List<String>>>('countryPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    createdOn = registerOutput<String>('createdOn');
    defaultPools = registerOutput<List<String>>('defaultPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    fallbackPool = registerOutput<String>('fallbackPool');
    locationStrategy = registerOutput<LoadBalancerLocationStrategy>('locationStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    popPools = registerOutput<Map<String, List<String>>>('popPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    proxied = registerOutput<bool>('proxied');
    randomSteering = registerOutput<LoadBalancerRandomSteering>('randomSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionPools = registerOutput<Map<String, List<String>>>('regionPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    rules = registerOutput<List<LoadBalancerRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerRule>(guardedValue, (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>())); });
    sessionAffinity = registerOutput<String>('sessionAffinity');
    sessionAffinityAttributes = registerOutput<LoadBalancerSessionAffinityAttributes>('sessionAffinityAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sessionAffinityTtl = registerOutput<double>('sessionAffinityTtl');
    steeringPolicy = registerOutput<String>('steeringPolicy');
    ttl = registerOutput<double>('ttl');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }
}
