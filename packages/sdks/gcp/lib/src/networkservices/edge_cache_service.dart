import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_args.dart';
import 'edge_cache_service_log_config.dart';
import 'edge_cache_service_routing.dart';
import 'edge_cache_service_state.dart';

/// EdgeCacheService defines the IP addresses, protocols, security policies, cache policies and routing configuration.
///
///
///
/// &gt; **Warning:** These resources require allow-listing to use, and are not openly available to all Cloud customers. Engage with your Cloud account team to discuss how to onboard.
///
/// ## Example Usage
///
/// ### Network Services Edge Cache Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dest = new gcp.storage.Bucket("dest", {
///     name: "my-bucket",
///     location: "US",
///     forceDestroy: true,
/// });
/// const instance = new gcp.networkservices.EdgeCacheOrigin("instance", {
///     name: "my-origin",
///     originAddress: dest.url,
///     description: "The default bucket for media edge test",
///     maxAttempts: 2,
///     timeout: {
///         connectTimeout: "10s",
///     },
/// });
/// const instanceEdgeCacheService = new gcp.networkservices.EdgeCacheService("instance", {
///     name: "my-service",
///     description: "some description",
///     routing: {
///         hostRules: [{
///             description: "host rule description",
///             hosts: ["sslcert.tf-test.club"],
///             pathMatcher: "routes",
///         }],
///         pathMatchers: [{
///             name: "routes",
///             routeRules: [{
///                 description: "a route rule to match against",
///                 priority: "1",
///                 matchRules: [{
///                     prefixMatch: "/",
///                 }],
///                 origin: instance.name,
///                 routeAction: {
///                     cdnPolicy: {
///                         cacheMode: "CACHE_ALL_STATIC",
///                         defaultTtl: "3600s",
///                     },
///                 },
///                 headerAction: {
///                     responseHeaderToAdds: [{
///                         headerName: "x-cache-status",
///                         headerValue: "{cdn_cache_status}",
///                     }],
///                 },
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dest = gcp.storage.Bucket("dest",
///     name="my-bucket",
///     location="US",
///     force_destroy=True)
/// instance = gcp.networkservices.EdgeCacheOrigin("instance",
///     name="my-origin",
///     origin_address=dest.url,
///     description="The default bucket for media edge test",
///     max_attempts=2,
///     timeout={
///         "connect_timeout": "10s",
///     })
/// instance_edge_cache_service = gcp.networkservices.EdgeCacheService("instance",
///     name="my-service",
///     description="some description",
///     routing={
///         "host_rules": [{
///             "description": "host rule description",
///             "hosts": ["sslcert.tf-test.club"],
///             "path_matcher": "routes",
///         }],
///         "path_matchers": [{
///             "name": "routes",
///             "route_rules": [{
///                 "description": "a route rule to match against",
///                 "priority": "1",
///                 "match_rules": [{
///                     "prefix_match": "/",
///                 }],
///                 "origin": instance.name,
///                 "route_action": {
///                     "cdn_policy": {
///                         "cache_mode": "CACHE_ALL_STATIC",
///                         "default_ttl": "3600s",
///                     },
///                 },
///                 "header_action": {
///                     "response_header_to_adds": [{
///                         "header_name": "x-cache-status",
///                         "header_value": "{cdn_cache_status}",
///                     }],
///                 },
///             }],
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dest = new Gcp.Storage.Bucket("dest", new()
///     {
///         Name = "my-bucket",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var instance = new Gcp.NetworkServices.EdgeCacheOrigin("instance", new()
///     {
///         Name = "my-origin",
///         OriginAddress = dest.Url,
///         Description = "The default bucket for media edge test",
///         MaxAttempts = 2,
///         Timeout = new Gcp.NetworkServices.Inputs.EdgeCacheOriginTimeoutArgs
///         {
///             ConnectTimeout = "10s",
///         },
///     });
///
///     var instanceEdgeCacheService = new Gcp.NetworkServices.EdgeCacheService("instance", new()
///     {
///         Name = "my-service",
///         Description = "some description",
///         Routing = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingArgs
///         {
///             HostRules = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingHostRuleArgs
///                 {
///                     Description = "host rule description",
///                     Hosts = new[]
///                     {
///                         "sslcert.tf-test.club",
///                     },
///                     PathMatcher = "routes",
///                 },
///             },
///             PathMatchers = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherArgs
///                 {
///                     Name = "routes",
///                     RouteRules = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a route rule to match against",
///                             Priority = "1",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PrefixMatch = "/",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     CacheMode = "CACHE_ALL_STATIC",
///                                     DefaultTtl = "3600s",
///                                 },
///                             },
///                             HeaderAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs
///                             {
///                                 ResponseHeaderToAdds = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs
///                                     {
///                                         HeaderName = "x-cache-status",
///                                         HeaderValue = "{cdn_cache_status}",
///                                     },
///                                 },
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dest, err := storage.NewBucket(ctx, "dest", &storage.BucketArgs{
/// 			Name:         pulumi.String("my-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := networkservices.NewEdgeCacheOrigin(ctx, "instance", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-origin"),
/// 			OriginAddress: dest.Url,
/// 			Description:   pulumi.String("The default bucket for media edge test"),
/// 			MaxAttempts:   pulumi.Int(2),
/// 			Timeout: &networkservices.EdgeCacheOriginTimeoutArgs{
/// 				ConnectTimeout: pulumi.String("10s"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheService(ctx, "instance", &networkservices.EdgeCacheServiceArgs{
/// 			Name:        pulumi.String("my-service"),
/// 			Description: pulumi.String("some description"),
/// 			Routing: &networkservices.EdgeCacheServiceRoutingArgs{
/// 				HostRules: networkservices.EdgeCacheServiceRoutingHostRuleArray{
/// 					&networkservices.EdgeCacheServiceRoutingHostRuleArgs{
/// 						Description: pulumi.String("host rule description"),
/// 						Hosts: pulumi.StringArray{
/// 							pulumi.String("sslcert.tf-test.club"),
/// 						},
/// 						PathMatcher: pulumi.String("routes"),
/// 					},
/// 				},
/// 				PathMatchers: networkservices.EdgeCacheServiceRoutingPathMatcherArray{
/// 					&networkservices.EdgeCacheServiceRoutingPathMatcherArgs{
/// 						Name: pulumi.String("routes"),
/// 						RouteRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArray{
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a route rule to match against"),
/// 								Priority:    pulumi.String("1"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PrefixMatch: pulumi.String("/"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										CacheMode:  pulumi.String("CACHE_ALL_STATIC"),
/// 										DefaultTtl: pulumi.String("3600s"),
/// 									},
/// 								},
/// 								HeaderAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs{
/// 									ResponseHeaderToAdds: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs{
/// 											HeaderName:  pulumi.String("x-cache-status"),
/// 											HeaderValue: pulumi.String("{cdn_cache_status}"),
/// 										},
/// 									},
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
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "dest" {
///   name          = "my-bucket"
///   location      = "US"
///   force_destroy = true
/// }
/// resource "gcp_networkservices_edgecacheorigin" "instance" {
///   name           = "my-origin"
///   origin_address = gcp_storage_bucket.dest.url
///   description    = "The default bucket for media edge test"
///   max_attempts   = 2
///   timeout = {
///     connect_timeout = "10s"
///   }
/// }
/// resource "gcp_networkservices_edgecacheservice" "instance" {
///   name        = "my-service"
///   description = "some description"
///   routing = {
///     host_rules = [{
///       "description" = "host rule description"
///       "hosts"       = ["sslcert.tf-test.club"]
///       "pathMatcher" = "routes"
///     }]
///     path_matchers = [{
///       "name" = "routes"
///       "routeRules" = [{
///         "description" = "a route rule to match against"
///         "priority"    = 1
///         "matchRules" = [{
///           "prefixMatch" = "/"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "cacheMode"  = "CACHE_ALL_STATIC"
///             "defaultTtl" = "3600s"
///           }
///         }
///         "headerAction" = {
///           "responseHeaderToAdds" = [{
///             "headerName"  = "x-cache-status"
///             "headerValue" = "{cdn_cache_status}"
///           }]
///         }
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginTimeoutArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheService;
/// import com.pulumi.gcp.networkservices.EdgeCacheServiceArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingHostRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs;
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
///         var dest = new Bucket("dest", BucketArgs.builder()
///             .name("my-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var instance = new EdgeCacheOrigin("instance", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress(dest.url())
///             .description("The default bucket for media edge test")
///             .maxAttempts(2)
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .build())
///             .build());
///
///         var instanceEdgeCacheService = new EdgeCacheService("instanceEdgeCacheService", EdgeCacheServiceArgs.builder()
///             .name("my-service")
///             .description("some description")
///             .routing(EdgeCacheServiceRoutingArgs.builder()
///                 .hostRules(EdgeCacheServiceRoutingHostRuleArgs.builder()
///                     .description("host rule description")
///                     .hosts("sslcert.tf-test.club")
///                     .pathMatcher("routes")
///                     .build())
///                 .pathMatchers(EdgeCacheServiceRoutingPathMatcherArgs.builder()
///                     .name("routes")
///                     .routeRules(EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                         .description("a route rule to match against")
///                         .priority("1")
///                         .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .prefixMatch("/")
///                             .build())
///                         .origin(instance.name())
///                         .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                             .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                 .cacheMode("CACHE_ALL_STATIC")
///                                 .defaultTtl("3600s")
///                                 .build())
///                             .build())
///                         .headerAction(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs.builder()
///                             .responseHeaderToAdds(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs.builder()
///                                 .headerName("x-cache-status")
///                                 .headerValue("{cdn_cache_status}")
///                                 .build())
///                             .build())
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
///   dest:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: US
///       forceDestroy: true
///   instance:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: ${dest.url}
///       description: The default bucket for media edge test
///       maxAttempts: 2
///       timeout:
///         connectTimeout: 10s
///   instanceEdgeCacheService:
///     type: gcp:networkservices:EdgeCacheService
///     name: instance
///     properties:
///       name: my-service
///       description: some description
///       routing:
///         hostRules:
///           - description: host rule description
///             hosts:
///               - sslcert.tf-test.club
///             pathMatcher: routes
///         pathMatchers:
///           - name: routes
///             routeRules:
///               - description: a route rule to match against
///                 priority: 1
///                 matchRules:
///                   - prefixMatch: /
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     cacheMode: CACHE_ALL_STATIC
///                     defaultTtl: 3600s
///                 headerAction:
///                   responseHeaderToAdds:
///                     - headerName: x-cache-status
///                       headerValue: '{cdn_cache_status}'
/// ```
///
/// ### Network Services Edge Cache Service Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dest = new gcp.storage.Bucket("dest", {
///     name: "my-bucket",
///     location: "US",
///     forceDestroy: true,
/// });
/// const google = new gcp.networkservices.EdgeCacheOrigin("google", {
///     name: "origin-google",
///     originAddress: "google.com",
///     description: "The default bucket for media edge test",
///     maxAttempts: 2,
///     timeout: {
///         connectTimeout: "10s",
///     },
/// });
/// const instance = new gcp.networkservices.EdgeCacheOrigin("instance", {
///     name: "my-origin",
///     originAddress: dest.url,
///     description: "The default bucket for media edge test",
///     maxAttempts: 2,
///     timeout: {
///         connectTimeout: "10s",
///     },
/// });
/// const instanceEdgeCacheService = new gcp.networkservices.EdgeCacheService("instance", {
///     name: "my-service",
///     description: "some description",
///     disableQuic: true,
///     disableHttp2: true,
///     labels: {
///         a: "b",
///     },
///     routing: {
///         hostRules: [
///             {
///                 description: "host rule description",
///                 hosts: ["sslcert.tf-test.club"],
///                 pathMatcher: "routes",
///             },
///             {
///                 description: "host rule2",
///                 hosts: ["sslcert.tf-test2.club"],
///                 pathMatcher: "routes",
///             },
///             {
///                 description: "host rule3",
///                 hosts: ["sslcert.tf-test3.club"],
///                 pathMatcher: "routesAdvanced",
///             },
///         ],
///         pathMatchers: [
///             {
///                 name: "routes",
///                 routeRules: [{
///                     description: "a route rule to match against",
///                     priority: "1",
///                     matchRules: [{
///                         prefixMatch: "/",
///                     }],
///                     origin: instance.name,
///                     routeAction: {
///                         cdnPolicy: {
///                             cacheMode: "CACHE_ALL_STATIC",
///                             defaultTtl: "3600s",
///                         },
///                     },
///                     headerAction: {
///                         responseHeaderToAdds: [{
///                             headerName: "x-cache-status",
///                             headerValue: "{cdn_cache_status}",
///                         }],
///                     },
///                 }],
///             },
///             {
///                 name: "routesAdvanced",
///                 description: "an advanced ruleset",
///                 routeRules: [
///                     {
///                         description: "an advanced route rule to match against",
///                         priority: "1",
///                         matchRules: [
///                             {
///                                 prefixMatch: "/potato/",
///                                 queryParameterMatches: [
///                                     {
///                                         name: "debug",
///                                         presentMatch: true,
///                                     },
///                                     {
///                                         name: "state",
///                                         exactMatch: "debug",
///                                     },
///                                 ],
///                             },
///                             {
///                                 fullPathMatch: "/apple",
///                             },
///                         ],
///                         headerAction: {
///                             requestHeaderToAdds: [
///                                 {
///                                     headerName: "debug",
///                                     headerValue: "true",
///                                     replace: true,
///                                 },
///                                 {
///                                     headerName: "potato",
///                                     headerValue: "plant",
///                                 },
///                             ],
///                             responseHeaderToAdds: [{
///                                 headerName: "potato",
///                                 headerValue: "plant",
///                                 replace: true,
///                             }],
///                             requestHeaderToRemoves: [{
///                                 headerName: "prod",
///                             }],
///                             responseHeaderToRemoves: [{
///                                 headerName: "prod",
///                             }],
///                         },
///                         origin: instance.name,
///                         routeAction: {
///                             cdnPolicy: {
///                                 cacheMode: "CACHE_ALL_STATIC",
///                                 defaultTtl: "3800s",
///                                 clientTtl: "3600s",
///                                 maxTtl: "9000s",
///                                 cacheKeyPolicy: {
///                                     includeProtocol: true,
///                                     excludeHost: true,
///                                     includedQueryParameters: [
///                                         "apple",
///                                         "dev",
///                                         "santa",
///                                         "claus",
///                                     ],
///                                     includedHeaderNames: ["banana"],
///                                     includedCookieNames: ["orange"],
///                                 },
///                                 negativeCaching: true,
///                                 signedRequestMode: "DISABLED",
///                                 negativeCachingPolicy: {
///                                     "500": "3000s",
///                                 },
///                             },
///                             urlRewrite: {
///                                 pathPrefixRewrite: "/dev",
///                                 hostRewrite: "dev.club",
///                             },
///                             corsPolicy: {
///                                 maxAge: "2500s",
///                                 allowCredentials: true,
///                                 allowOrigins: ["*"],
///                                 allowMethods: ["GET"],
///                                 allowHeaders: ["dev"],
///                                 exposeHeaders: ["prod"],
///                             },
///                         },
///                     },
///                     {
///                         description: "a second route rule to match against",
///                         priority: "2",
///                         matchRules: [{
///                             fullPathMatch: "/yay",
///                         }],
///                         origin: instance.name,
///                         routeAction: {
///                             cdnPolicy: {
///                                 cacheMode: "CACHE_ALL_STATIC",
///                                 defaultTtl: "3600s",
///                                 cacheKeyPolicy: {
///                                     excludedQueryParameters: ["dev"],
///                                 },
///                             },
///                             corsPolicy: {
///                                 maxAge: "3000s",
///                                 allowHeaders: ["dev"],
///                                 disabled: true,
///                             },
///                         },
///                     },
///                 ],
///             },
///         ],
///     },
///     logConfig: {
///         enable: true,
///         sampleRate: 0.01,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dest = gcp.storage.Bucket("dest",
///     name="my-bucket",
///     location="US",
///     force_destroy=True)
/// google = gcp.networkservices.EdgeCacheOrigin("google",
///     name="origin-google",
///     origin_address="google.com",
///     description="The default bucket for media edge test",
///     max_attempts=2,
///     timeout={
///         "connect_timeout": "10s",
///     })
/// instance = gcp.networkservices.EdgeCacheOrigin("instance",
///     name="my-origin",
///     origin_address=dest.url,
///     description="The default bucket for media edge test",
///     max_attempts=2,
///     timeout={
///         "connect_timeout": "10s",
///     })
/// instance_edge_cache_service = gcp.networkservices.EdgeCacheService("instance",
///     name="my-service",
///     description="some description",
///     disable_quic=True,
///     disable_http2=True,
///     labels={
///         "a": "b",
///     },
///     routing={
///         "host_rules": [
///             {
///                 "description": "host rule description",
///                 "hosts": ["sslcert.tf-test.club"],
///                 "path_matcher": "routes",
///             },
///             {
///                 "description": "host rule2",
///                 "hosts": ["sslcert.tf-test2.club"],
///                 "path_matcher": "routes",
///             },
///             {
///                 "description": "host rule3",
///                 "hosts": ["sslcert.tf-test3.club"],
///                 "path_matcher": "routesAdvanced",
///             },
///         ],
///         "path_matchers": [
///             {
///                 "name": "routes",
///                 "route_rules": [{
///                     "description": "a route rule to match against",
///                     "priority": "1",
///                     "match_rules": [{
///                         "prefix_match": "/",
///                     }],
///                     "origin": instance.name,
///                     "route_action": {
///                         "cdn_policy": {
///                             "cache_mode": "CACHE_ALL_STATIC",
///                             "default_ttl": "3600s",
///                         },
///                     },
///                     "header_action": {
///                         "response_header_to_adds": [{
///                             "header_name": "x-cache-status",
///                             "header_value": "{cdn_cache_status}",
///                         }],
///                     },
///                 }],
///             },
///             {
///                 "name": "routesAdvanced",
///                 "description": "an advanced ruleset",
///                 "route_rules": [
///                     {
///                         "description": "an advanced route rule to match against",
///                         "priority": "1",
///                         "match_rules": [
///                             {
///                                 "prefix_match": "/potato/",
///                                 "query_parameter_matches": [
///                                     {
///                                         "name": "debug",
///                                         "present_match": True,
///                                     },
///                                     {
///                                         "name": "state",
///                                         "exact_match": "debug",
///                                     },
///                                 ],
///                             },
///                             {
///                                 "full_path_match": "/apple",
///                             },
///                         ],
///                         "header_action": {
///                             "request_header_to_adds": [
///                                 {
///                                     "header_name": "debug",
///                                     "header_value": "true",
///                                     "replace": True,
///                                 },
///                                 {
///                                     "header_name": "potato",
///                                     "header_value": "plant",
///                                 },
///                             ],
///                             "response_header_to_adds": [{
///                                 "header_name": "potato",
///                                 "header_value": "plant",
///                                 "replace": True,
///                             }],
///                             "request_header_to_removes": [{
///                                 "header_name": "prod",
///                             }],
///                             "response_header_to_removes": [{
///                                 "header_name": "prod",
///                             }],
///                         },
///                         "origin": instance.name,
///                         "route_action": {
///                             "cdn_policy": {
///                                 "cache_mode": "CACHE_ALL_STATIC",
///                                 "default_ttl": "3800s",
///                                 "client_ttl": "3600s",
///                                 "max_ttl": "9000s",
///                                 "cache_key_policy": {
///                                     "include_protocol": True,
///                                     "exclude_host": True,
///                                     "included_query_parameters": [
///                                         "apple",
///                                         "dev",
///                                         "santa",
///                                         "claus",
///                                     ],
///                                     "included_header_names": ["banana"],
///                                     "included_cookie_names": ["orange"],
///                                 },
///                                 "negative_caching": True,
///                                 "signed_request_mode": "DISABLED",
///                                 "negative_caching_policy": {
///                                     "500": "3000s",
///                                 },
///                             },
///                             "url_rewrite": {
///                                 "path_prefix_rewrite": "/dev",
///                                 "host_rewrite": "dev.club",
///                             },
///                             "cors_policy": {
///                                 "max_age": "2500s",
///                                 "allow_credentials": True,
///                                 "allow_origins": ["*"],
///                                 "allow_methods": ["GET"],
///                                 "allow_headers": ["dev"],
///                                 "expose_headers": ["prod"],
///                             },
///                         },
///                     },
///                     {
///                         "description": "a second route rule to match against",
///                         "priority": "2",
///                         "match_rules": [{
///                             "full_path_match": "/yay",
///                         }],
///                         "origin": instance.name,
///                         "route_action": {
///                             "cdn_policy": {
///                                 "cache_mode": "CACHE_ALL_STATIC",
///                                 "default_ttl": "3600s",
///                                 "cache_key_policy": {
///                                     "excluded_query_parameters": ["dev"],
///                                 },
///                             },
///                             "cors_policy": {
///                                 "max_age": "3000s",
///                                 "allow_headers": ["dev"],
///                                 "disabled": True,
///                             },
///                         },
///                     },
///                 ],
///             },
///         ],
///     },
///     log_config={
///         "enable": True,
///         "sample_rate": 0.01,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dest = new Gcp.Storage.Bucket("dest", new()
///     {
///         Name = "my-bucket",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var google = new Gcp.NetworkServices.EdgeCacheOrigin("google", new()
///     {
///         Name = "origin-google",
///         OriginAddress = "google.com",
///         Description = "The default bucket for media edge test",
///         MaxAttempts = 2,
///         Timeout = new Gcp.NetworkServices.Inputs.EdgeCacheOriginTimeoutArgs
///         {
///             ConnectTimeout = "10s",
///         },
///     });
///
///     var instance = new Gcp.NetworkServices.EdgeCacheOrigin("instance", new()
///     {
///         Name = "my-origin",
///         OriginAddress = dest.Url,
///         Description = "The default bucket for media edge test",
///         MaxAttempts = 2,
///         Timeout = new Gcp.NetworkServices.Inputs.EdgeCacheOriginTimeoutArgs
///         {
///             ConnectTimeout = "10s",
///         },
///     });
///
///     var instanceEdgeCacheService = new Gcp.NetworkServices.EdgeCacheService("instance", new()
///     {
///         Name = "my-service",
///         Description = "some description",
///         DisableQuic = true,
///         DisableHttp2 = true,
///         Labels =
///         {
///             { "a", "b" },
///         },
///         Routing = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingArgs
///         {
///             HostRules = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingHostRuleArgs
///                 {
///                     Description = "host rule description",
///                     Hosts = new[]
///                     {
///                         "sslcert.tf-test.club",
///                     },
///                     PathMatcher = "routes",
///                 },
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingHostRuleArgs
///                 {
///                     Description = "host rule2",
///                     Hosts = new[]
///                     {
///                         "sslcert.tf-test2.club",
///                     },
///                     PathMatcher = "routes",
///                 },
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingHostRuleArgs
///                 {
///                     Description = "host rule3",
///                     Hosts = new[]
///                     {
///                         "sslcert.tf-test3.club",
///                     },
///                     PathMatcher = "routesAdvanced",
///                 },
///             },
///             PathMatchers = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherArgs
///                 {
///                     Name = "routes",
///                     RouteRules = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a route rule to match against",
///                             Priority = "1",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PrefixMatch = "/",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     CacheMode = "CACHE_ALL_STATIC",
///                                     DefaultTtl = "3600s",
///                                 },
///                             },
///                             HeaderAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs
///                             {
///                                 ResponseHeaderToAdds = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs
///                                     {
///                                         HeaderName = "x-cache-status",
///                                         HeaderValue = "{cdn_cache_status}",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherArgs
///                 {
///                     Name = "routesAdvanced",
///                     Description = "an advanced ruleset",
///                     RouteRules = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "an advanced route rule to match against",
///                             Priority = "1",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PrefixMatch = "/potato/",
///                                     QueryParameterMatches = new[]
///                                     {
///                                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                         {
///                                             Name = "debug",
///                                             PresentMatch = true,
///                                         },
///                                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                         {
///                                             Name = "state",
///                                             ExactMatch = "debug",
///                                         },
///                                     },
///                                 },
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     FullPathMatch = "/apple",
///                                 },
///                             },
///                             HeaderAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs
///                             {
///                                 RequestHeaderToAdds = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs
///                                     {
///                                         HeaderName = "debug",
///                                         HeaderValue = "true",
///                                         Replace = true,
///                                     },
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs
///                                     {
///                                         HeaderName = "potato",
///                                         HeaderValue = "plant",
///                                     },
///                                 },
///                                 ResponseHeaderToAdds = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs
///                                     {
///                                         HeaderName = "potato",
///                                         HeaderValue = "plant",
///                                         Replace = true,
///                                     },
///                                 },
///                                 RequestHeaderToRemoves = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemoveArgs
///                                     {
///                                         HeaderName = "prod",
///                                     },
///                                 },
///                                 ResponseHeaderToRemoves = new[]
///                                 {
///                                     new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemoveArgs
///                                     {
///                                         HeaderName = "prod",
///                                     },
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     CacheMode = "CACHE_ALL_STATIC",
///                                     DefaultTtl = "3800s",
///                                     ClientTtl = "3600s",
///                                     MaxTtl = "9000s",
///                                     CacheKeyPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs
///                                     {
///                                         IncludeProtocol = true,
///                                         ExcludeHost = true,
///                                         IncludedQueryParameters = new[]
///                                         {
///                                             "apple",
///                                             "dev",
///                                             "santa",
///                                             "claus",
///                                         },
///                                         IncludedHeaderNames = new[]
///                                         {
///                                             "banana",
///                                         },
///                                         IncludedCookieNames = new[]
///                                         {
///                                             "orange",
///                                         },
///                                     },
///                                     NegativeCaching = true,
///                                     SignedRequestMode = "DISABLED",
///                                     NegativeCachingPolicy =
///                                     {
///                                         { "500", "3000s" },
///                                     },
///                                 },
///                                 UrlRewrite = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewriteArgs
///                                 {
///                                     PathPrefixRewrite = "/dev",
///                                     HostRewrite = "dev.club",
///                                 },
///                                 CorsPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs
///                                 {
///                                     MaxAge = "2500s",
///                                     AllowCredentials = true,
///                                     AllowOrigins = new[]
///                                     {
///                                         "*",
///                                     },
///                                     AllowMethods = new[]
///                                     {
///                                         "GET",
///                                     },
///                                     AllowHeaders = new[]
///                                     {
///                                         "dev",
///                                     },
///                                     ExposeHeaders = new[]
///                                     {
///                                         "prod",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a second route rule to match against",
///                             Priority = "2",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     FullPathMatch = "/yay",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     CacheMode = "CACHE_ALL_STATIC",
///                                     DefaultTtl = "3600s",
///                                     CacheKeyPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs
///                                     {
///                                         ExcludedQueryParameters = new[]
///                                         {
///                                             "dev",
///                                         },
///                                     },
///                                 },
///                                 CorsPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs
///                                 {
///                                     MaxAge = "3000s",
///                                     AllowHeaders = new[]
///                                     {
///                                         "dev",
///                                     },
///                                     Disabled = true,
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         LogConfig = new Gcp.NetworkServices.Inputs.EdgeCacheServiceLogConfigArgs
///         {
///             Enable = true,
///             SampleRate = 0.01,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dest, err := storage.NewBucket(ctx, "dest", &storage.BucketArgs{
/// 			Name:         pulumi.String("my-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheOrigin(ctx, "google", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("origin-google"),
/// 			OriginAddress: pulumi.String("google.com"),
/// 			Description:   pulumi.String("The default bucket for media edge test"),
/// 			MaxAttempts:   pulumi.Int(2),
/// 			Timeout: &networkservices.EdgeCacheOriginTimeoutArgs{
/// 				ConnectTimeout: pulumi.String("10s"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := networkservices.NewEdgeCacheOrigin(ctx, "instance", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-origin"),
/// 			OriginAddress: dest.Url,
/// 			Description:   pulumi.String("The default bucket for media edge test"),
/// 			MaxAttempts:   pulumi.Int(2),
/// 			Timeout: &networkservices.EdgeCacheOriginTimeoutArgs{
/// 				ConnectTimeout: pulumi.String("10s"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheService(ctx, "instance", &networkservices.EdgeCacheServiceArgs{
/// 			Name:         pulumi.String("my-service"),
/// 			Description:  pulumi.String("some description"),
/// 			DisableQuic:  pulumi.Bool(true),
/// 			DisableHttp2: pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"a": pulumi.String("b"),
/// 			},
/// 			Routing: &networkservices.EdgeCacheServiceRoutingArgs{
/// 				HostRules: networkservices.EdgeCacheServiceRoutingHostRuleArray{
/// 					&networkservices.EdgeCacheServiceRoutingHostRuleArgs{
/// 						Description: pulumi.String("host rule description"),
/// 						Hosts: pulumi.StringArray{
/// 							pulumi.String("sslcert.tf-test.club"),
/// 						},
/// 						PathMatcher: pulumi.String("routes"),
/// 					},
/// 					&networkservices.EdgeCacheServiceRoutingHostRuleArgs{
/// 						Description: pulumi.String("host rule2"),
/// 						Hosts: pulumi.StringArray{
/// 							pulumi.String("sslcert.tf-test2.club"),
/// 						},
/// 						PathMatcher: pulumi.String("routes"),
/// 					},
/// 					&networkservices.EdgeCacheServiceRoutingHostRuleArgs{
/// 						Description: pulumi.String("host rule3"),
/// 						Hosts: pulumi.StringArray{
/// 							pulumi.String("sslcert.tf-test3.club"),
/// 						},
/// 						PathMatcher: pulumi.String("routesAdvanced"),
/// 					},
/// 				},
/// 				PathMatchers: networkservices.EdgeCacheServiceRoutingPathMatcherArray{
/// 					&networkservices.EdgeCacheServiceRoutingPathMatcherArgs{
/// 						Name: pulumi.String("routes"),
/// 						RouteRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArray{
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a route rule to match against"),
/// 								Priority:    pulumi.String("1"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PrefixMatch: pulumi.String("/"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										CacheMode:  pulumi.String("CACHE_ALL_STATIC"),
/// 										DefaultTtl: pulumi.String("3600s"),
/// 									},
/// 								},
/// 								HeaderAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs{
/// 									ResponseHeaderToAdds: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs{
/// 											HeaderName:  pulumi.String("x-cache-status"),
/// 											HeaderValue: pulumi.String("{cdn_cache_status}"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&networkservices.EdgeCacheServiceRoutingPathMatcherArgs{
/// 						Name:        pulumi.String("routesAdvanced"),
/// 						Description: pulumi.String("an advanced ruleset"),
/// 						RouteRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArray{
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("an advanced route rule to match against"),
/// 								Priority:    pulumi.String("1"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PrefixMatch: pulumi.String("/potato/"),
/// 										QueryParameterMatches: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 											&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 												Name:         pulumi.String("debug"),
/// 												PresentMatch: pulumi.Bool(true),
/// 											},
/// 											&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 												Name:       pulumi.String("state"),
/// 												ExactMatch: pulumi.String("debug"),
/// 											},
/// 										},
/// 									},
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										FullPathMatch: pulumi.String("/apple"),
/// 									},
/// 								},
/// 								HeaderAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs{
/// 									RequestHeaderToAdds: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs{
/// 											HeaderName:  pulumi.String("debug"),
/// 											HeaderValue: pulumi.String("true"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs{
/// 											HeaderName:  pulumi.String("potato"),
/// 											HeaderValue: pulumi.String("plant"),
/// 										},
/// 									},
/// 									ResponseHeaderToAdds: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs{
/// 											HeaderName:  pulumi.String("potato"),
/// 											HeaderValue: pulumi.String("plant"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 									},
/// 									RequestHeaderToRemoves: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemoveArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemoveArgs{
/// 											HeaderName: pulumi.String("prod"),
/// 										},
/// 									},
/// 									ResponseHeaderToRemoves: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemoveArray{
/// 										&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemoveArgs{
/// 											HeaderName: pulumi.String("prod"),
/// 										},
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										CacheMode:  pulumi.String("CACHE_ALL_STATIC"),
/// 										DefaultTtl: pulumi.String("3800s"),
/// 										ClientTtl:  pulumi.String("3600s"),
/// 										MaxTtl:     pulumi.String("9000s"),
/// 										CacheKeyPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs{
/// 											IncludeProtocol: pulumi.Bool(true),
/// 											ExcludeHost:     pulumi.Bool(true),
/// 											IncludedQueryParameters: pulumi.StringArray{
/// 												pulumi.String("apple"),
/// 												pulumi.String("dev"),
/// 												pulumi.String("santa"),
/// 												pulumi.String("claus"),
/// 											},
/// 											IncludedHeaderNames: pulumi.StringArray{
/// 												pulumi.String("banana"),
/// 											},
/// 											IncludedCookieNames: pulumi.StringArray{
/// 												pulumi.String("orange"),
/// 											},
/// 										},
/// 										NegativeCaching:   pulumi.Bool(true),
/// 										SignedRequestMode: pulumi.String("DISABLED"),
/// 										NegativeCachingPolicy: pulumi.StringMap{
/// 											"500": pulumi.String("3000s"),
/// 										},
/// 									},
/// 									UrlRewrite: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewriteArgs{
/// 										PathPrefixRewrite: pulumi.String("/dev"),
/// 										HostRewrite:       pulumi.String("dev.club"),
/// 									},
/// 									CorsPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs{
/// 										MaxAge:           pulumi.String("2500s"),
/// 										AllowCredentials: pulumi.Bool(true),
/// 										AllowOrigins: pulumi.StringArray{
/// 											pulumi.String("*"),
/// 										},
/// 										AllowMethods: pulumi.StringArray{
/// 											pulumi.String("GET"),
/// 										},
/// 										AllowHeaders: pulumi.StringArray{
/// 											pulumi.String("dev"),
/// 										},
/// 										ExposeHeaders: pulumi.StringArray{
/// 											pulumi.String("prod"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a second route rule to match against"),
/// 								Priority:    pulumi.String("2"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										FullPathMatch: pulumi.String("/yay"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										CacheMode:  pulumi.String("CACHE_ALL_STATIC"),
/// 										DefaultTtl: pulumi.String("3600s"),
/// 										CacheKeyPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs{
/// 											ExcludedQueryParameters: pulumi.StringArray{
/// 												pulumi.String("dev"),
/// 											},
/// 										},
/// 									},
/// 									CorsPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs{
/// 										MaxAge: pulumi.String("3000s"),
/// 										AllowHeaders: pulumi.StringArray{
/// 											pulumi.String("dev"),
/// 										},
/// 										Disabled: pulumi.Bool(true),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LogConfig: &networkservices.EdgeCacheServiceLogConfigArgs{
/// 				Enable:     pulumi.Bool(true),
/// 				SampleRate: pulumi.Float64(0.01),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "dest" {
///   name          = "my-bucket"
///   location      = "US"
///   force_destroy = true
/// }
/// resource "gcp_networkservices_edgecacheorigin" "google" {
///   name           = "origin-google"
///   origin_address = "google.com"
///   description    = "The default bucket for media edge test"
///   max_attempts   = 2
///   timeout = {
///     connect_timeout = "10s"
///   }
/// }
/// resource "gcp_networkservices_edgecacheorigin" "instance" {
///   name           = "my-origin"
///   origin_address = gcp_storage_bucket.dest.url
///   description    = "The default bucket for media edge test"
///   max_attempts   = 2
///   timeout = {
///     connect_timeout = "10s"
///   }
/// }
/// resource "gcp_networkservices_edgecacheservice" "instance" {
///   name          = "my-service"
///   description   = "some description"
///   disable_quic  = true
///   disable_http2 = true
///   labels = {
///     "a" = "b"
///   }
///   routing = {
///     host_rules = [{
///       "description" = "host rule description"
///       "hosts"       = ["sslcert.tf-test.club"]
///       "pathMatcher" = "routes"
///       }, {
///       "description" = "host rule2"
///       "hosts"       = ["sslcert.tf-test2.club"]
///       "pathMatcher" = "routes"
///       }, {
///       "description" = "host rule3"
///       "hosts"       = ["sslcert.tf-test3.club"]
///       "pathMatcher" = "routesAdvanced"
///     }]
///     path_matchers = [{
///       "name" = "routes"
///       "routeRules" = [{
///         "description" = "a route rule to match against"
///         "priority"    = 1
///         "matchRules" = [{
///           "prefixMatch" = "/"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "cacheMode"  = "CACHE_ALL_STATIC"
///             "defaultTtl" = "3600s"
///           }
///         }
///         "headerAction" = {
///           "responseHeaderToAdds" = [{
///             "headerName"  = "x-cache-status"
///             "headerValue" = "{cdn_cache_status}"
///           }]
///         }
///       }]
///       }, {
///       "name"        = "routesAdvanced"
///       "description" = "an advanced ruleset"
///       "routeRules" = [{
///         "description" = "an advanced route rule to match against"
///         "priority"    = 1
///         "matchRules" = [{
///           "prefixMatch" = "/potato/"
///           "queryParameterMatches" = [{
///             "name"         = "debug"
///             "presentMatch" = true
///             }, {
///             "name"       = "state"
///             "exactMatch" = "debug"
///           }]
///           }, {
///           "fullPathMatch" = "/apple"
///         }]
///         "headerAction" = {
///           "requestHeaderToAdds" = [{
///             "headerName"  = "debug"
///             "headerValue" = "true"
///             "replace"     = true
///             }, {
///             "headerName"  = "potato"
///             "headerValue" = "plant"
///           }]
///           "responseHeaderToAdds" = [{
///             "headerName"  = "potato"
///             "headerValue" = "plant"
///             "replace"     = true
///           }]
///           "requestHeaderToRemoves" = [{
///             "headerName" = "prod"
///           }]
///           "responseHeaderToRemoves" = [{
///             "headerName" = "prod"
///           }]
///         }
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "cacheMode"  = "CACHE_ALL_STATIC"
///             "defaultTtl" = "3800s"
///             "clientTtl"  = "3600s"
///             "maxTtl"     = "9000s"
///             "cacheKeyPolicy" = {
///               "includeProtocol"         = true
///               "excludeHost"             = true
///               "includedQueryParameters" = ["apple", "dev", "santa", "claus"]
///               "includedHeaderNames"     = ["banana"]
///               "includedCookieNames"     = ["orange"]
///             }
///             "negativeCaching"   = true
///             "signedRequestMode" = "DISABLED"
///             "negativeCachingPolicy" = {
///               "500" = "3000s"
///             }
///           }
///           "urlRewrite" = {
///             "pathPrefixRewrite" = "/dev"
///             "hostRewrite"       = "dev.club"
///           }
///           "corsPolicy" = {
///             "maxAge"           = "2500s"
///             "allowCredentials" = true
///             "allowOrigins"     = ["*"]
///             "allowMethods"     = ["GET"]
///             "allowHeaders"     = ["dev"]
///             "exposeHeaders"    = ["prod"]
///           }
///         }
///         }, {
///         "description" = "a second route rule to match against"
///         "priority"    = 2
///         "matchRules" = [{
///           "fullPathMatch" = "/yay"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "cacheMode"  = "CACHE_ALL_STATIC"
///             "defaultTtl" = "3600s"
///             "cacheKeyPolicy" = {
///               "excludedQueryParameters" = ["dev"]
///             }
///           }
///           "corsPolicy" = {
///             "maxAge"       = "3000s"
///             "allowHeaders" = ["dev"]
///             "disabled"     = true
///           }
///         }
///       }]
///     }]
///   }
///   log_config = {
///     enable      = true
///     sample_rate = 0.01
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginTimeoutArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheService;
/// import com.pulumi.gcp.networkservices.EdgeCacheServiceArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingHostRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemoveArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemoveArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewriteArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceLogConfigArgs;
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
///         var dest = new Bucket("dest", BucketArgs.builder()
///             .name("my-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var google = new EdgeCacheOrigin("google", EdgeCacheOriginArgs.builder()
///             .name("origin-google")
///             .originAddress("google.com")
///             .description("The default bucket for media edge test")
///             .maxAttempts(2)
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .build())
///             .build());
///
///         var instance = new EdgeCacheOrigin("instance", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress(dest.url())
///             .description("The default bucket for media edge test")
///             .maxAttempts(2)
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .build())
///             .build());
///
///         var instanceEdgeCacheService = new EdgeCacheService("instanceEdgeCacheService", EdgeCacheServiceArgs.builder()
///             .name("my-service")
///             .description("some description")
///             .disableQuic(true)
///             .disableHttp2(true)
///             .labels(Map.of("a", "b"))
///             .routing(EdgeCacheServiceRoutingArgs.builder()
///                 .hostRules(
///                     EdgeCacheServiceRoutingHostRuleArgs.builder()
///                         .description("host rule description")
///                         .hosts("sslcert.tf-test.club")
///                         .pathMatcher("routes")
///                         .build(),
///                     EdgeCacheServiceRoutingHostRuleArgs.builder()
///                         .description("host rule2")
///                         .hosts("sslcert.tf-test2.club")
///                         .pathMatcher("routes")
///                         .build(),
///                     EdgeCacheServiceRoutingHostRuleArgs.builder()
///                         .description("host rule3")
///                         .hosts("sslcert.tf-test3.club")
///                         .pathMatcher("routesAdvanced")
///                         .build())
///                 .pathMatchers(
///                     EdgeCacheServiceRoutingPathMatcherArgs.builder()
///                         .name("routes")
///                         .routeRules(EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                             .description("a route rule to match against")
///                             .priority("1")
///                             .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                 .prefixMatch("/")
///                                 .build())
///                             .origin(instance.name())
///                             .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                 .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                     .cacheMode("CACHE_ALL_STATIC")
///                                     .defaultTtl("3600s")
///                                     .build())
///                                 .build())
///                             .headerAction(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs.builder()
///                                 .responseHeaderToAdds(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs.builder()
///                                     .headerName("x-cache-status")
///                                     .headerValue("{cdn_cache_status}")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     EdgeCacheServiceRoutingPathMatcherArgs.builder()
///                         .name("routesAdvanced")
///                         .description("an advanced ruleset")
///                         .routeRules(
///                             EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                                 .description("an advanced route rule to match against")
///                                 .priority("1")
///                                 .matchRules(
///                                     EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                         .prefixMatch("/potato/")
///                                         .queryParameterMatches(
///                                             EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                                                 .name("debug")
///                                                 .presentMatch(true)
///                                                 .build(),
///                                             EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                                                 .name("state")
///                                                 .exactMatch("debug")
///                                                 .build())
///                                         .build(),
///                                     EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                         .fullPathMatch("/apple")
///                                         .build())
///                                 .headerAction(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionArgs.builder()
///                                     .requestHeaderToAdds(
///                                         EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs.builder()
///                                             .headerName("debug")
///                                             .headerValue("true")
///                                             .replace(true)
///                                             .build(),
///                                         EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAddArgs.builder()
///                                             .headerName("potato")
///                                             .headerValue("plant")
///                                             .build())
///                                     .responseHeaderToAdds(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAddArgs.builder()
///                                         .headerName("potato")
///                                         .headerValue("plant")
///                                         .replace(true)
///                                         .build())
///                                     .requestHeaderToRemoves(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemoveArgs.builder()
///                                         .headerName("prod")
///                                         .build())
///                                     .responseHeaderToRemoves(EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemoveArgs.builder()
///                                         .headerName("prod")
///                                         .build())
///                                     .build())
///                                 .origin(instance.name())
///                                 .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                     .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                         .cacheMode("CACHE_ALL_STATIC")
///                                         .defaultTtl("3800s")
///                                         .clientTtl("3600s")
///                                         .maxTtl("9000s")
///                                         .cacheKeyPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs.builder()
///                                             .includeProtocol(true)
///                                             .excludeHost(true)
///                                             .includedQueryParameters(
///                                                 "apple",
///                                                 "dev",
///                                                 "santa",
///                                                 "claus")
///                                             .includedHeaderNames("banana")
///                                             .includedCookieNames("orange")
///                                             .build())
///                                         .negativeCaching(true)
///                                         .signedRequestMode("DISABLED")
///                                         .negativeCachingPolicy(Map.of("500", "3000s"))
///                                         .build())
///                                     .urlRewrite(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewriteArgs.builder()
///                                         .pathPrefixRewrite("/dev")
///                                         .hostRewrite("dev.club")
///                                         .build())
///                                     .corsPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs.builder()
///                                         .maxAge("2500s")
///                                         .allowCredentials(true)
///                                         .allowOrigins("*")
///                                         .allowMethods("GET")
///                                         .allowHeaders("dev")
///                                         .exposeHeaders("prod")
///                                         .build())
///                                     .build())
///                                 .build(),
///                             EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                                 .description("a second route rule to match against")
///                                 .priority("2")
///                                 .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                     .fullPathMatch("/yay")
///                                     .build())
///                                 .origin(instance.name())
///                                 .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                     .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                         .cacheMode("CACHE_ALL_STATIC")
///                                         .defaultTtl("3600s")
///                                         .cacheKeyPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicyArgs.builder()
///                                             .excludedQueryParameters("dev")
///                                             .build())
///                                         .build())
///                                     .corsPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicyArgs.builder()
///                                         .maxAge("3000s")
///                                         .allowHeaders("dev")
///                                         .disabled(true)
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build())
///                 .build())
///             .logConfig(EdgeCacheServiceLogConfigArgs.builder()
///                 .enable(true)
///                 .sampleRate(0.01)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dest:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: US
///       forceDestroy: true
///   google:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: origin-google
///       originAddress: google.com
///       description: The default bucket for media edge test
///       maxAttempts: 2
///       timeout:
///         connectTimeout: 10s
///   instance:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: ${dest.url}
///       description: The default bucket for media edge test
///       maxAttempts: 2
///       timeout:
///         connectTimeout: 10s
///   instanceEdgeCacheService:
///     type: gcp:networkservices:EdgeCacheService
///     name: instance
///     properties:
///       name: my-service
///       description: some description
///       disableQuic: true
///       disableHttp2: true
///       labels:
///         a: b
///       routing:
///         hostRules:
///           - description: host rule description
///             hosts:
///               - sslcert.tf-test.club
///             pathMatcher: routes
///           - description: host rule2
///             hosts:
///               - sslcert.tf-test2.club
///             pathMatcher: routes
///           - description: host rule3
///             hosts:
///               - sslcert.tf-test3.club
///             pathMatcher: routesAdvanced
///         pathMatchers:
///           - name: routes
///             routeRules:
///               - description: a route rule to match against
///                 priority: 1
///                 matchRules:
///                   - prefixMatch: /
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     cacheMode: CACHE_ALL_STATIC
///                     defaultTtl: 3600s
///                 headerAction:
///                   responseHeaderToAdds:
///                     - headerName: x-cache-status
///                       headerValue: '{cdn_cache_status}'
///           - name: routesAdvanced
///             description: an advanced ruleset
///             routeRules:
///               - description: an advanced route rule to match against
///                 priority: 1
///                 matchRules:
///                   - prefixMatch: /potato/
///                     queryParameterMatches:
///                       - name: debug
///                         presentMatch: true
///                       - name: state
///                         exactMatch: debug
///                   - fullPathMatch: /apple
///                 headerAction:
///                   requestHeaderToAdds:
///                     - headerName: debug
///                       headerValue: 'true'
///                       replace: true
///                     - headerName: potato
///                       headerValue: plant
///                   responseHeaderToAdds:
///                     - headerName: potato
///                       headerValue: plant
///                       replace: true
///                   requestHeaderToRemoves:
///                     - headerName: prod
///                   responseHeaderToRemoves:
///                     - headerName: prod
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     cacheMode: CACHE_ALL_STATIC
///                     defaultTtl: 3800s
///                     clientTtl: 3600s
///                     maxTtl: 9000s
///                     cacheKeyPolicy:
///                       includeProtocol: true
///                       excludeHost: true
///                       includedQueryParameters:
///                         - apple
///                         - dev
///                         - santa
///                         - claus
///                       includedHeaderNames:
///                         - banana
///                       includedCookieNames:
///                         - orange
///                     negativeCaching: true
///                     signedRequestMode: DISABLED
///                     negativeCachingPolicy:
///                       '500': 3000s
///                   urlRewrite:
///                     pathPrefixRewrite: /dev
///                     hostRewrite: dev.club
///                   corsPolicy:
///                     maxAge: 2500s
///                     allowCredentials: true
///                     allowOrigins:
///                       - '*'
///                     allowMethods:
///                       - GET
///                     allowHeaders:
///                       - dev
///                     exposeHeaders:
///                       - prod
///               - description: a second route rule to match against
///                 priority: 2
///                 matchRules:
///                   - fullPathMatch: /yay
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     cacheMode: CACHE_ALL_STATIC
///                     defaultTtl: 3600s
///                     cacheKeyPolicy:
///                       excludedQueryParameters:
///                         - dev
///                   corsPolicy:
///                     maxAge: 3000s
///                     allowHeaders:
///                       - dev
///                     disabled: true
///       logConfig:
///         enable: true
///         sampleRate: 0.01
/// ```
///
/// ### Network Services Edge Cache Service Dual Token
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-name",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_basic = new gcp.secretmanager.SecretVersion("secret-version-basic", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
/// });
/// const keyset = new gcp.networkservices.EdgeCacheKeyset("keyset", {
///     name: "keyset-name",
///     description: "The default keyset",
///     publicKeys: [{
///         id: "my-public-key",
///         managed: true,
///     }],
///     validationSharedKeys: [{
///         secretVersion: secret_version_basic.id,
///     }],
/// });
/// const instance = new gcp.networkservices.EdgeCacheOrigin("instance", {
///     name: "my-origin",
///     originAddress: "gs://media-edge-default",
///     description: "The default bucket for media edge test",
/// });
/// const instanceEdgeCacheService = new gcp.networkservices.EdgeCacheService("instance", {
///     name: "my-service",
///     description: "some description",
///     routing: {
///         hostRules: [{
///             description: "host rule description",
///             hosts: ["sslcert.tf-test.club"],
///             pathMatcher: "routes",
///         }],
///         pathMatchers: [{
///             name: "routes",
///             routeRules: [
///                 {
///                     description: "a route rule to match against master playlist",
///                     priority: "1",
///                     matchRules: [{
///                         pathTemplateMatch: "/master.m3u8",
///                     }],
///                     origin: instance.name,
///                     routeAction: {
///                         cdnPolicy: {
///                             signedRequestMode: "REQUIRE_TOKENS",
///                             signedRequestKeyset: keyset.id,
///                             signedTokenOptions: {
///                                 tokenQueryParameter: "edge-cache-token",
///                             },
///                             signedRequestMaximumExpirationTtl: "600s",
///                             addSignatures: {
///                                 actions: "GENERATE_COOKIE",
///                                 keyset: keyset.id,
///                                 copiedParameters: [
///                                     "PathGlobs",
///                                     "SessionID",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///                 {
///                     description: "a route rule to match against all playlists",
///                     priority: "2",
///                     matchRules: [{
///                         pathTemplateMatch: "/*.m3u8",
///                     }],
///                     origin: instance.name,
///                     routeAction: {
///                         cdnPolicy: {
///                             signedRequestMode: "REQUIRE_TOKENS",
///                             signedRequestKeyset: keyset.id,
///                             signedTokenOptions: {
///                                 tokenQueryParameter: "hdnts",
///                                 allowedSignatureAlgorithms: [
///                                     "ED25519",
///                                     "HMAC_SHA_256",
///                                     "HMAC_SHA1",
///                                 ],
///                             },
///                             addSignatures: {
///                                 actions: "GENERATE_TOKEN_HLS_COOKIELESS",
///                                 keyset: keyset.id,
///                                 tokenTtl: "1200s",
///                                 tokenQueryParameter: "hdntl",
///                                 copiedParameters: ["URLPrefix"],
///                             },
///                         },
///                     },
///                 },
///                 {
///                     description: "a route rule to match against",
///                     priority: "3",
///                     matchRules: [{
///                         pathTemplateMatch: "/**.m3u8",
///                     }],
///                     origin: instance.name,
///                     routeAction: {
///                         cdnPolicy: {
///                             signedRequestMode: "REQUIRE_TOKENS",
///                             signedRequestKeyset: keyset.id,
///                             signedTokenOptions: {
///                                 tokenQueryParameter: "hdntl",
///                             },
///                             addSignatures: {
///                                 actions: "PROPAGATE_TOKEN_HLS_COOKIELESS",
///                                 tokenQueryParameter: "hdntl",
///                             },
///                         },
///                     },
///                 },
///             ],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-name",
///     replication={
///         "auto": {},
///     })
/// secret_version_basic = gcp.secretmanager.SecretVersion("secret-version-basic",
///     secret=secret_basic.id,
///     secret_data="secret-data")
/// keyset = gcp.networkservices.EdgeCacheKeyset("keyset",
///     name="keyset-name",
///     description="The default keyset",
///     public_keys=[{
///         "id": "my-public-key",
///         "managed": True,
///     }],
///     validation_shared_keys=[{
///         "secret_version": secret_version_basic.id,
///     }])
/// instance = gcp.networkservices.EdgeCacheOrigin("instance",
///     name="my-origin",
///     origin_address="gs://media-edge-default",
///     description="The default bucket for media edge test")
/// instance_edge_cache_service = gcp.networkservices.EdgeCacheService("instance",
///     name="my-service",
///     description="some description",
///     routing={
///         "host_rules": [{
///             "description": "host rule description",
///             "hosts": ["sslcert.tf-test.club"],
///             "path_matcher": "routes",
///         }],
///         "path_matchers": [{
///             "name": "routes",
///             "route_rules": [
///                 {
///                     "description": "a route rule to match against master playlist",
///                     "priority": "1",
///                     "match_rules": [{
///                         "path_template_match": "/master.m3u8",
///                     }],
///                     "origin": instance.name,
///                     "route_action": {
///                         "cdn_policy": {
///                             "signed_request_mode": "REQUIRE_TOKENS",
///                             "signed_request_keyset": keyset.id,
///                             "signed_token_options": {
///                                 "token_query_parameter": "edge-cache-token",
///                             },
///                             "signed_request_maximum_expiration_ttl": "600s",
///                             "add_signatures": {
///                                 "actions": "GENERATE_COOKIE",
///                                 "keyset": keyset.id,
///                                 "copied_parameters": [
///                                     "PathGlobs",
///                                     "SessionID",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "description": "a route rule to match against all playlists",
///                     "priority": "2",
///                     "match_rules": [{
///                         "path_template_match": "/*.m3u8",
///                     }],
///                     "origin": instance.name,
///                     "route_action": {
///                         "cdn_policy": {
///                             "signed_request_mode": "REQUIRE_TOKENS",
///                             "signed_request_keyset": keyset.id,
///                             "signed_token_options": {
///                                 "token_query_parameter": "hdnts",
///                                 "allowed_signature_algorithms": [
///                                     "ED25519",
///                                     "HMAC_SHA_256",
///                                     "HMAC_SHA1",
///                                 ],
///                             },
///                             "add_signatures": {
///                                 "actions": "GENERATE_TOKEN_HLS_COOKIELESS",
///                                 "keyset": keyset.id,
///                                 "token_ttl": "1200s",
///                                 "token_query_parameter": "hdntl",
///                                 "copied_parameters": ["URLPrefix"],
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "description": "a route rule to match against",
///                     "priority": "3",
///                     "match_rules": [{
///                         "path_template_match": "/**.m3u8",
///                     }],
///                     "origin": instance.name,
///                     "route_action": {
///                         "cdn_policy": {
///                             "signed_request_mode": "REQUIRE_TOKENS",
///                             "signed_request_keyset": keyset.id,
///                             "signed_token_options": {
///                                 "token_query_parameter": "hdntl",
///                             },
///                             "add_signatures": {
///                                 "actions": "PROPAGATE_TOKEN_HLS_COOKIELESS",
///                                 "token_query_parameter": "hdntl",
///                             },
///                         },
///                     },
///                 },
///             ],
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-name",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_basic = new Gcp.SecretManager.SecretVersion("secret-version-basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///     });
///
///     var keyset = new Gcp.NetworkServices.EdgeCacheKeyset("keyset", new()
///     {
///         Name = "keyset-name",
///         Description = "The default keyset",
///         PublicKeys = new[]
///         {
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetPublicKeyArgs
///             {
///                 Id = "my-public-key",
///                 Managed = true,
///             },
///         },
///         ValidationSharedKeys = new[]
///         {
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetValidationSharedKeyArgs
///             {
///                 SecretVersion = secret_version_basic.Id,
///             },
///         },
///     });
///
///     var instance = new Gcp.NetworkServices.EdgeCacheOrigin("instance", new()
///     {
///         Name = "my-origin",
///         OriginAddress = "gs://media-edge-default",
///         Description = "The default bucket for media edge test",
///     });
///
///     var instanceEdgeCacheService = new Gcp.NetworkServices.EdgeCacheService("instance", new()
///     {
///         Name = "my-service",
///         Description = "some description",
///         Routing = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingArgs
///         {
///             HostRules = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingHostRuleArgs
///                 {
///                     Description = "host rule description",
///                     Hosts = new[]
///                     {
///                         "sslcert.tf-test.club",
///                     },
///                     PathMatcher = "routes",
///                 },
///             },
///             PathMatchers = new[]
///             {
///                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherArgs
///                 {
///                     Name = "routes",
///                     RouteRules = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a route rule to match against master playlist",
///                             Priority = "1",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PathTemplateMatch = "/master.m3u8",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     SignedRequestMode = "REQUIRE_TOKENS",
///                                     SignedRequestKeyset = keyset.Id,
///                                     SignedTokenOptions = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs
///                                     {
///                                         TokenQueryParameter = "edge-cache-token",
///                                     },
///                                     SignedRequestMaximumExpirationTtl = "600s",
///                                     AddSignatures = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs
///                                     {
///                                         Actions = "GENERATE_COOKIE",
///                                         Keyset = keyset.Id,
///                                         CopiedParameters = new[]
///                                         {
///                                             "PathGlobs",
///                                             "SessionID",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a route rule to match against all playlists",
///                             Priority = "2",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PathTemplateMatch = "/*.m3u8",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     SignedRequestMode = "REQUIRE_TOKENS",
///                                     SignedRequestKeyset = keyset.Id,
///                                     SignedTokenOptions = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs
///                                     {
///                                         TokenQueryParameter = "hdnts",
///                                         AllowedSignatureAlgorithms = new[]
///                                         {
///                                             "ED25519",
///                                             "HMAC_SHA_256",
///                                             "HMAC_SHA1",
///                                         },
///                                     },
///                                     AddSignatures = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs
///                                     {
///                                         Actions = "GENERATE_TOKEN_HLS_COOKIELESS",
///                                         Keyset = keyset.Id,
///                                         TokenTtl = "1200s",
///                                         TokenQueryParameter = "hdntl",
///                                         CopiedParameters = new[]
///                                         {
///                                             "URLPrefix",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs
///                         {
///                             Description = "a route rule to match against",
///                             Priority = "3",
///                             MatchRules = new[]
///                             {
///                                 new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs
///                                 {
///                                     PathTemplateMatch = "/**.m3u8",
///                                 },
///                             },
///                             Origin = instance.Name,
///                             RouteAction = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs
///                             {
///                                 CdnPolicy = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs
///                                 {
///                                     SignedRequestMode = "REQUIRE_TOKENS",
///                                     SignedRequestKeyset = keyset.Id,
///                                     SignedTokenOptions = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs
///                                     {
///                                         TokenQueryParameter = "hdntl",
///                                     },
///                                     AddSignatures = new Gcp.NetworkServices.Inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs
///                                     {
///                                         Actions = "PROPAGATE_TOKEN_HLS_COOKIELESS",
///                                         TokenQueryParameter = "hdntl",
///                                     },
///                                 },
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-name"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_basic, err := secretmanager.NewSecretVersion(ctx, "secret-version-basic", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret_basic.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyset, err := networkservices.NewEdgeCacheKeyset(ctx, "keyset", &networkservices.EdgeCacheKeysetArgs{
/// 			Name:        pulumi.String("keyset-name"),
/// 			Description: pulumi.String("The default keyset"),
/// 			PublicKeys: networkservices.EdgeCacheKeysetPublicKeyArray{
/// 				&networkservices.EdgeCacheKeysetPublicKeyArgs{
/// 					Id:      pulumi.String("my-public-key"),
/// 					Managed: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ValidationSharedKeys: networkservices.EdgeCacheKeysetValidationSharedKeyArray{
/// 				&networkservices.EdgeCacheKeysetValidationSharedKeyArgs{
/// 					SecretVersion: secret_version_basic.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := networkservices.NewEdgeCacheOrigin(ctx, "instance", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-origin"),
/// 			OriginAddress: pulumi.String("gs://media-edge-default"),
/// 			Description:   pulumi.String("The default bucket for media edge test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheService(ctx, "instance", &networkservices.EdgeCacheServiceArgs{
/// 			Name:        pulumi.String("my-service"),
/// 			Description: pulumi.String("some description"),
/// 			Routing: &networkservices.EdgeCacheServiceRoutingArgs{
/// 				HostRules: networkservices.EdgeCacheServiceRoutingHostRuleArray{
/// 					&networkservices.EdgeCacheServiceRoutingHostRuleArgs{
/// 						Description: pulumi.String("host rule description"),
/// 						Hosts: pulumi.StringArray{
/// 							pulumi.String("sslcert.tf-test.club"),
/// 						},
/// 						PathMatcher: pulumi.String("routes"),
/// 					},
/// 				},
/// 				PathMatchers: networkservices.EdgeCacheServiceRoutingPathMatcherArray{
/// 					&networkservices.EdgeCacheServiceRoutingPathMatcherArgs{
/// 						Name: pulumi.String("routes"),
/// 						RouteRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArray{
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a route rule to match against master playlist"),
/// 								Priority:    pulumi.String("1"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PathTemplateMatch: pulumi.String("/master.m3u8"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										SignedRequestMode:   pulumi.String("REQUIRE_TOKENS"),
/// 										SignedRequestKeyset: keyset.ID().ToIDOutput().ToStringOutput(),
/// 										SignedTokenOptions: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs{
/// 											TokenQueryParameter: pulumi.String("edge-cache-token"),
/// 										},
/// 										SignedRequestMaximumExpirationTtl: pulumi.String("600s"),
/// 										AddSignatures: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs{
/// 											Actions: pulumi.String("GENERATE_COOKIE"),
/// 											Keyset:  keyset.ID().ToIDOutput().ToStringOutput(),
/// 											CopiedParameters: pulumi.StringArray{
/// 												pulumi.String("PathGlobs"),
/// 												pulumi.String("SessionID"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a route rule to match against all playlists"),
/// 								Priority:    pulumi.String("2"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PathTemplateMatch: pulumi.String("/*.m3u8"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										SignedRequestMode:   pulumi.String("REQUIRE_TOKENS"),
/// 										SignedRequestKeyset: keyset.ID().ToIDOutput().ToStringOutput(),
/// 										SignedTokenOptions: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs{
/// 											TokenQueryParameter: pulumi.String("hdnts"),
/// 											AllowedSignatureAlgorithms: pulumi.StringArray{
/// 												pulumi.String("ED25519"),
/// 												pulumi.String("HMAC_SHA_256"),
/// 												pulumi.String("HMAC_SHA1"),
/// 											},
/// 										},
/// 										AddSignatures: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs{
/// 											Actions:             pulumi.String("GENERATE_TOKEN_HLS_COOKIELESS"),
/// 											Keyset:              keyset.ID().ToIDOutput().ToStringOutput(),
/// 											TokenTtl:            pulumi.String("1200s"),
/// 											TokenQueryParameter: pulumi.String("hdntl"),
/// 											CopiedParameters: pulumi.StringArray{
/// 												pulumi.String("URLPrefix"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs{
/// 								Description: pulumi.String("a route rule to match against"),
/// 								Priority:    pulumi.String("3"),
/// 								MatchRules: networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArray{
/// 									&networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs{
/// 										PathTemplateMatch: pulumi.String("/**.m3u8"),
/// 									},
/// 								},
/// 								Origin: instance.Name,
/// 								RouteAction: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs{
/// 									CdnPolicy: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs{
/// 										SignedRequestMode:   pulumi.String("REQUIRE_TOKENS"),
/// 										SignedRequestKeyset: keyset.ID().ToIDOutput().ToStringOutput(),
/// 										SignedTokenOptions: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs{
/// 											TokenQueryParameter: pulumi.String("hdntl"),
/// 										},
/// 										AddSignatures: &networkservices.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs{
/// 											Actions:             pulumi.String("PROPAGATE_TOKEN_HLS_COOKIELESS"),
/// 											TokenQueryParameter: pulumi.String("hdntl"),
/// 										},
/// 									},
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
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_secretmanager_secret" "secret-basic" {
///   secret_id = "secret-name"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "secret-version-basic" {
///   secret      = gcp_secretmanager_secret.secret-basic.id
///   secret_data = "secret-data"
/// }
/// resource "gcp_networkservices_edgecachekeyset" "keyset" {
///   name        = "keyset-name"
///   description = "The default keyset"
///   public_keys {
///     id      = "my-public-key"
///     managed = true
///   }
///   validation_shared_keys {
///     secret_version = gcp_secretmanager_secretversion.secret-version-basic.id
///   }
/// }
/// resource "gcp_networkservices_edgecacheorigin" "instance" {
///   name           = "my-origin"
///   origin_address = "gs://media-edge-default"
///   description    = "The default bucket for media edge test"
/// }
/// resource "gcp_networkservices_edgecacheservice" "instance" {
///   name        = "my-service"
///   description = "some description"
///   routing = {
///     host_rules = [{
///       "description" = "host rule description"
///       "hosts"       = ["sslcert.tf-test.club"]
///       "pathMatcher" = "routes"
///     }]
///     path_matchers = [{
///       "name" = "routes"
///       "routeRules" = [{
///         "description" = "a route rule to match against master playlist"
///         "priority"    = 1
///         "matchRules" = [{
///           "pathTemplateMatch" = "/master.m3u8"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "signedRequestMode"   = "REQUIRE_TOKENS"
///             "signedRequestKeyset" = gcp_networkservices_edgecachekeyset.keyset.id
///             "signedTokenOptions" = {
///               "tokenQueryParameter" = "edge-cache-token"
///             }
///             "signedRequestMaximumExpirationTtl" = "600s"
///             "addSignatures" = {
///               "actions"          = "GENERATE_COOKIE"
///               "keyset"           = gcp_networkservices_edgecachekeyset.keyset.id
///               "copiedParameters" = ["PathGlobs", "SessionID"]
///             }
///           }
///         }
///         }, {
///         "description" = "a route rule to match against all playlists"
///         "priority"    = 2
///         "matchRules" = [{
///           "pathTemplateMatch" = "/*.m3u8"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "signedRequestMode"   = "REQUIRE_TOKENS"
///             "signedRequestKeyset" = gcp_networkservices_edgecachekeyset.keyset.id
///             "signedTokenOptions" = {
///               "tokenQueryParameter"        = "hdnts"
///               "allowedSignatureAlgorithms" = ["ED25519", "HMAC_SHA_256", "HMAC_SHA1"]
///             }
///             "addSignatures" = {
///               "actions"             = "GENERATE_TOKEN_HLS_COOKIELESS"
///               "keyset"              = gcp_networkservices_edgecachekeyset.keyset.id
///               "tokenTtl"            = "1200s"
///               "tokenQueryParameter" = "hdntl"
///               "copiedParameters"    = ["URLPrefix"]
///             }
///           }
///         }
///         }, {
///         "description" = "a route rule to match against"
///         "priority"    = 3
///         "matchRules" = [{
///           "pathTemplateMatch" = "/**.m3u8"
///         }]
///         "origin" = gcp_networkservices_edgecacheorigin.instance.name
///         "routeAction" = {
///           "cdnPolicy" = {
///             "signedRequestMode"   = "REQUIRE_TOKENS"
///             "signedRequestKeyset" = gcp_networkservices_edgecachekeyset.keyset.id
///             "signedTokenOptions" = {
///               "tokenQueryParameter" = "hdntl"
///             }
///             "addSignatures" = {
///               "actions"             = "PROPAGATE_TOKEN_HLS_COOKIELESS"
///               "tokenQueryParameter" = "hdntl"
///             }
///           }
///         }
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeyset;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeysetArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheKeysetPublicKeyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheKeysetValidationSharedKeyArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheService;
/// import com.pulumi.gcp.networkservices.EdgeCacheServiceArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingHostRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-name")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic = new SecretVersion("secret-version-basic", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .build());
///
///         var keyset = new EdgeCacheKeyset("keyset", EdgeCacheKeysetArgs.builder()
///             .name("keyset-name")
///             .description("The default keyset")
///             .publicKeys(EdgeCacheKeysetPublicKeyArgs.builder()
///                 .id("my-public-key")
///                 .managed(true)
///                 .build())
///             .validationSharedKeys(EdgeCacheKeysetValidationSharedKeyArgs.builder()
///                 .secretVersion(secret_version_basic.id())
///                 .build())
///             .build());
///
///         var instance = new EdgeCacheOrigin("instance", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress("gs://media-edge-default")
///             .description("The default bucket for media edge test")
///             .build());
///
///         var instanceEdgeCacheService = new EdgeCacheService("instanceEdgeCacheService", EdgeCacheServiceArgs.builder()
///             .name("my-service")
///             .description("some description")
///             .routing(EdgeCacheServiceRoutingArgs.builder()
///                 .hostRules(EdgeCacheServiceRoutingHostRuleArgs.builder()
///                     .description("host rule description")
///                     .hosts("sslcert.tf-test.club")
///                     .pathMatcher("routes")
///                     .build())
///                 .pathMatchers(EdgeCacheServiceRoutingPathMatcherArgs.builder()
///                     .name("routes")
///                     .routeRules(
///                         EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                             .description("a route rule to match against master playlist")
///                             .priority("1")
///                             .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                 .pathTemplateMatch("/master.m3u8")
///                                 .build())
///                             .origin(instance.name())
///                             .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                 .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                     .signedRequestMode("REQUIRE_TOKENS")
///                                     .signedRequestKeyset(keyset.id())
///                                     .signedTokenOptions(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs.builder()
///                                         .tokenQueryParameter("edge-cache-token")
///                                         .build())
///                                     .signedRequestMaximumExpirationTtl("600s")
///                                     .addSignatures(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs.builder()
///                                         .actions("GENERATE_COOKIE")
///                                         .keyset(keyset.id())
///                                         .copiedParameters(
///                                             "PathGlobs",
///                                             "SessionID")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                             .description("a route rule to match against all playlists")
///                             .priority("2")
///                             .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                 .pathTemplateMatch("/*.m3u8")
///                                 .build())
///                             .origin(instance.name())
///                             .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                 .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                     .signedRequestMode("REQUIRE_TOKENS")
///                                     .signedRequestKeyset(keyset.id())
///                                     .signedTokenOptions(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs.builder()
///                                         .tokenQueryParameter("hdnts")
///                                         .allowedSignatureAlgorithms(
///                                             "ED25519",
///                                             "HMAC_SHA_256",
///                                             "HMAC_SHA1")
///                                         .build())
///                                     .addSignatures(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs.builder()
///                                         .actions("GENERATE_TOKEN_HLS_COOKIELESS")
///                                         .keyset(keyset.id())
///                                         .tokenTtl("1200s")
///                                         .tokenQueryParameter("hdntl")
///                                         .copiedParameters("URLPrefix")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EdgeCacheServiceRoutingPathMatcherRouteRuleArgs.builder()
///                             .description("a route rule to match against")
///                             .priority("3")
///                             .matchRules(EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleArgs.builder()
///                                 .pathTemplateMatch("/**.m3u8")
///                                 .build())
///                             .origin(instance.name())
///                             .routeAction(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionArgs.builder()
///                                 .cdnPolicy(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyArgs.builder()
///                                     .signedRequestMode("REQUIRE_TOKENS")
///                                     .signedRequestKeyset(keyset.id())
///                                     .signedTokenOptions(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsArgs.builder()
///                                         .tokenQueryParameter("hdntl")
///                                         .build())
///                                     .addSignatures(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesArgs.builder()
///                                         .actions("PROPAGATE_TOKEN_HLS_COOKIELESS")
///                                         .tokenQueryParameter("hdntl")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-name
///       replication:
///         auto: {}
///   secret-version-basic:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///   keyset:
///     type: gcp:networkservices:EdgeCacheKeyset
///     properties:
///       name: keyset-name
///       description: The default keyset
///       publicKeys:
///         - id: my-public-key
///           managed: true
///       validationSharedKeys:
///         - secretVersion: ${["secret-version-basic"].id}
///   instance:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: gs://media-edge-default
///       description: The default bucket for media edge test
///   instanceEdgeCacheService:
///     type: gcp:networkservices:EdgeCacheService
///     name: instance
///     properties:
///       name: my-service
///       description: some description
///       routing:
///         hostRules:
///           - description: host rule description
///             hosts:
///               - sslcert.tf-test.club
///             pathMatcher: routes
///         pathMatchers:
///           - name: routes
///             routeRules:
///               - description: a route rule to match against master playlist
///                 priority: 1
///                 matchRules:
///                   - pathTemplateMatch: /master.m3u8
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     signedRequestMode: REQUIRE_TOKENS
///                     signedRequestKeyset: ${keyset.id}
///                     signedTokenOptions:
///                       tokenQueryParameter: edge-cache-token
///                     signedRequestMaximumExpirationTtl: 600s
///                     addSignatures:
///                       actions: GENERATE_COOKIE
///                       keyset: ${keyset.id}
///                       copiedParameters:
///                         - PathGlobs
///                         - SessionID
///               - description: a route rule to match against all playlists
///                 priority: 2
///                 matchRules:
///                   - pathTemplateMatch: /*.m3u8
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     signedRequestMode: REQUIRE_TOKENS
///                     signedRequestKeyset: ${keyset.id}
///                     signedTokenOptions:
///                       tokenQueryParameter: hdnts
///                       allowedSignatureAlgorithms:
///                         - ED25519
///                         - HMAC_SHA_256
///                         - HMAC_SHA1
///                     addSignatures:
///                       actions: GENERATE_TOKEN_HLS_COOKIELESS
///                       keyset: ${keyset.id}
///                       tokenTtl: 1200s
///                       tokenQueryParameter: hdntl
///                       copiedParameters:
///                         - URLPrefix
///               - description: a route rule to match against
///                 priority: 3
///                 matchRules:
///                   - pathTemplateMatch: /**.m3u8
///                 origin: ${instance.name}
///                 routeAction:
///                   cdnPolicy:
///                     signedRequestMode: REQUIRE_TOKENS
///                     signedRequestKeyset: ${keyset.id}
///                     signedTokenOptions:
///                       tokenQueryParameter: hdntl
///                     addSignatures:
///                       actions: PROPAGATE_TOKEN_HLS_COOKIELESS
///                       tokenQueryParameter: hdntl
/// ```
///
///
/// ## Import
///
/// EdgeCacheService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/edgeCacheServices/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, EdgeCacheService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default projects/{{project}}/locations/global/edgeCacheServices/{{name}}
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default {{project}}/{{name}}
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default {{name}}
/// ```
class EdgeCacheService extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// Disables HTTP/2.
  /// HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.
  /// Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated.
  late final pulumi.Output<bool?> disableHttp2;
  /// HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  late final pulumi.Output<bool> disableQuic;
  /// Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  late final pulumi.Output<String?> edgeSecurityPolicy;
  /// URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// Note that only "global" certificates with a "scope" of "EDGE_CACHE" can be attached to an EdgeCacheService.
  late final pulumi.Output<List<String>?> edgeSslCertificates;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The IPv4 addresses associated with this service. Addresses are static for the lifetime of the service.
  late final pulumi.Output<List<String>> ipv4Addresses;
  /// The IPv6 addresses associated with this service. Addresses are static for the lifetime of the service.
  late final pulumi.Output<List<String>> ipv6Addresses;
  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheServiceLogConfig?> logConfig;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  late final pulumi.Output<bool> requireTls;
  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheServiceRouting> routing;
  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  late final pulumi.Output<String?> sslPolicy;

  /// Creates a new [EdgeCacheService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeCacheService]. {@macro pulumi_networkservices_edge_cache_service_edge_cache_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeCacheService(
    String name, {
    EdgeCacheServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/edgeCacheService:EdgeCacheService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disableHttp2 = registerOutput<bool?>('disableHttp2');
    disableQuic = registerOutput<bool>('disableQuic');
    edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    edgeSslCertificates = registerOutput<List<String>?>('edgeSslCertificates');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ipv4Addresses = registerOutput<List<String>>('ipv4Addresses');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    labels = registerOutput<Map<String, String>?>('labels');
    logConfig = registerOutput<EdgeCacheServiceLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeCacheServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    requireTls = registerOutput<bool>('requireTls');
    routing = registerOutput<EdgeCacheServiceRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeCacheServiceRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslPolicy = registerOutput<String?>('sslPolicy');
  }

  /// Gets an existing [EdgeCacheService] resource's state with the given [name] and [id].
  static EdgeCacheService get(
    String name,
    pulumi.Input<String> id, {
    EdgeCacheServiceState? state,
  }) {
    return EdgeCacheService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EdgeCacheService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/edgeCacheService:EdgeCacheService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disableHttp2 = registerOutput<bool?>('disableHttp2');
    disableQuic = registerOutput<bool>('disableQuic');
    edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    edgeSslCertificates = registerOutput<List<String>?>('edgeSslCertificates');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ipv4Addresses = registerOutput<List<String>>('ipv4Addresses');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    labels = registerOutput<Map<String, String>?>('labels');
    logConfig = registerOutput<EdgeCacheServiceLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeCacheServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    requireTls = registerOutput<bool>('requireTls');
    routing = registerOutput<EdgeCacheServiceRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeCacheServiceRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslPolicy = registerOutput<String?>('sslPolicy');
  }
}
