import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_edge_extension_args.dart';
import 'cdn_edge_extension_extension_chain.dart';
import 'cdn_edge_extension_state.dart';
import 'cdn_edge_extension_target.dart';

/// CdnEdgeExtension is a resource that lets the extension service modify the headers of both requests to the cache and responses from the cache served by an EdgeCacheService.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about CdnEdgeExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.cdnEdgeExtensions)
/// * How-to Guides
/// * [Configure a edge extension](https://cloud.google.com/service-extensions/docs/configure-edge-extensions)
///
///
/// ## Example Usage
///
/// ### Network Services Cdn Edge Extension Basic
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
/// const _default = new gcp.networkservices.EdgeCacheOrigin("default", {
///     name: "my-origin",
///     originAddress: dest.url,
///     description: "The default bucket for media edge test",
///     maxAttempts: 2,
///     timeout: {
///         connectTimeout: "10s",
///     },
/// });
/// const defaultEdgeCacheService = new gcp.networkservices.EdgeCacheService("default", {
///     name: "my-service",
///     description: "my edge cache service",
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
///                 origin: _default.name,
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
/// const wasm_plugin = new gcp.networkservices.WasmPlugin("wasm-plugin", {
///     name: "my-wasm-plugin",
///     description: "my wasm plugin",
///     mainVersionId: "v1",
///     labels: {
///         test_label: "test_value",
///     },
///     logConfig: {
///         enable: true,
///         sampleRate: 1,
///         minLogLevel: "WARN",
///     },
///     versions: [{
///         versionName: "v1",
///         description: "v1 version of my wasm plugin",
///         imageUri: "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
///         labels: {
///             test_label: "test_value",
///         },
///     }],
/// });
/// const defaultCdnEdgeExtension = new gcp.networkservices.CdnEdgeExtension("default", {
///     name: "my-cdn-edge-ext",
///     description: "my cdn edge extension",
///     location: "global",
///     target: {
///         resources: [defaultEdgeCacheService.id],
///     },
///     extensionChains: [{
///         name: "chain1",
///         matchCondition: {
///             celExpression: "request.host == 'example.com'",
///         },
///         extensions: [{
///             name: "ext1",
///             service: wasm_plugin.id,
///             failOpen: false,
///             supportedEvents: [
///                 "REQUEST_HEADERS",
///                 "RESPONSE_HEADERS",
///             ],
///             forwardHeaders: ["custom-header"],
///             forwardAttributes: [
///                 "request.host",
///                 "request.path",
///             ],
///         }],
///     }],
///     labels: {
///         foo: "bar",
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
/// default = gcp.networkservices.EdgeCacheOrigin("default",
///     name="my-origin",
///     origin_address=dest.url,
///     description="The default bucket for media edge test",
///     max_attempts=2,
///     timeout={
///         "connect_timeout": "10s",
///     })
/// default_edge_cache_service = gcp.networkservices.EdgeCacheService("default",
///     name="my-service",
///     description="my edge cache service",
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
///                 "origin": default.name,
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
/// wasm_plugin = gcp.networkservices.WasmPlugin("wasm-plugin",
///     name="my-wasm-plugin",
///     description="my wasm plugin",
///     main_version_id="v1",
///     labels={
///         "test_label": "test_value",
///     },
///     log_config={
///         "enable": True,
///         "sample_rate": float(1),
///         "min_log_level": "WARN",
///     },
///     versions=[{
///         "version_name": "v1",
///         "description": "v1 version of my wasm plugin",
///         "image_uri": "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
///         "labels": {
///             "test_label": "test_value",
///         },
///     }])
/// default_cdn_edge_extension = gcp.networkservices.CdnEdgeExtension("default",
///     name="my-cdn-edge-ext",
///     description="my cdn edge extension",
///     location="global",
///     target={
///         "resources": [default_edge_cache_service.id],
///     },
///     extension_chains=[{
///         "name": "chain1",
///         "match_condition": {
///             "cel_expression": "request.host == 'example.com'",
///         },
///         "extensions": [{
///             "name": "ext1",
///             "service": wasm_plugin.id,
///             "fail_open": False,
///             "supported_events": [
///                 "REQUEST_HEADERS",
///                 "RESPONSE_HEADERS",
///             ],
///             "forward_headers": ["custom-header"],
///             "forward_attributes": [
///                 "request.host",
///                 "request.path",
///             ],
///         }],
///     }],
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.NetworkServices.EdgeCacheOrigin("default", new()
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
///     var defaultEdgeCacheService = new Gcp.NetworkServices.EdgeCacheService("default", new()
///     {
///         Name = "my-service",
///         Description = "my edge cache service",
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
///                             Origin = @default.Name,
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
///     var wasm_plugin = new Gcp.NetworkServices.WasmPlugin("wasm-plugin", new()
///     {
///         Name = "my-wasm-plugin",
///         Description = "my wasm plugin",
///         MainVersionId = "v1",
///         Labels =
///         {
///             { "test_label", "test_value" },
///         },
///         LogConfig = new Gcp.NetworkServices.Inputs.WasmPluginLogConfigArgs
///         {
///             Enable = true,
///             SampleRate = 1.0,
///             MinLogLevel = "WARN",
///         },
///         Versions = new[]
///         {
///             new Gcp.NetworkServices.Inputs.WasmPluginVersionArgs
///             {
///                 VersionName = "v1",
///                 Description = "v1 version of my wasm plugin",
///                 ImageUri = "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1",
///                 Labels =
///                 {
///                     { "test_label", "test_value" },
///                 },
///             },
///         },
///     });
///
///     var defaultCdnEdgeExtension = new Gcp.NetworkServices.CdnEdgeExtension("default", new()
///     {
///         Name = "my-cdn-edge-ext",
///         Description = "my cdn edge extension",
///         Location = "global",
///         Target = new Gcp.NetworkServices.Inputs.CdnEdgeExtensionTargetArgs
///         {
///             Resources = new[]
///             {
///                 defaultEdgeCacheService.Id,
///             },
///         },
///         ExtensionChains = new[]
///         {
///             new Gcp.NetworkServices.Inputs.CdnEdgeExtensionExtensionChainArgs
///             {
///                 Name = "chain1",
///                 MatchCondition = new Gcp.NetworkServices.Inputs.CdnEdgeExtensionExtensionChainMatchConditionArgs
///                 {
///                     CelExpression = "request.host == 'example.com'",
///                 },
///                 Extensions = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.CdnEdgeExtensionExtensionChainExtensionArgs
///                     {
///                         Name = "ext1",
///                         Service = wasm_plugin.Id,
///                         FailOpen = false,
///                         SupportedEvents = new[]
///                         {
///                             "REQUEST_HEADERS",
///                             "RESPONSE_HEADERS",
///                         },
///                         ForwardHeaders = new[]
///                         {
///                             "custom-header",
///                         },
///                         ForwardAttributes = new[]
///                         {
///                             "request.host",
///                             "request.path",
///                         },
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
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
/// 		_default, err := networkservices.NewEdgeCacheOrigin(ctx, "default", &networkservices.EdgeCacheOriginArgs{
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
/// 		defaultEdgeCacheService, err := networkservices.NewEdgeCacheService(ctx, "default", &networkservices.EdgeCacheServiceArgs{
/// 			Name:        pulumi.String("my-service"),
/// 			Description: pulumi.String("my edge cache service"),
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
/// 								Origin: _default.Name,
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
/// 		wasm_plugin, err := networkservices.NewWasmPlugin(ctx, "wasm-plugin", &networkservices.WasmPluginArgs{
/// 			Name:          pulumi.String("my-wasm-plugin"),
/// 			Description:   pulumi.String("my wasm plugin"),
/// 			MainVersionId: pulumi.String("v1"),
/// 			Labels: pulumi.StringMap{
/// 				"test_label": pulumi.String("test_value"),
/// 			},
/// 			LogConfig: &networkservices.WasmPluginLogConfigArgs{
/// 				Enable:      pulumi.Bool(true),
/// 				SampleRate:  pulumi.Float64(1),
/// 				MinLogLevel: pulumi.String("WARN"),
/// 			},
/// 			Versions: networkservices.WasmPluginVersionArray{
/// 				&networkservices.WasmPluginVersionArgs{
/// 					VersionName: pulumi.String("v1"),
/// 					Description: pulumi.String("v1 version of my wasm plugin"),
/// 					ImageUri:    pulumi.String("projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1"),
/// 					Labels: pulumi.StringMap{
/// 						"test_label": pulumi.String("test_value"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewCdnEdgeExtension(ctx, "default", &networkservices.CdnEdgeExtensionArgs{
/// 			Name:        pulumi.String("my-cdn-edge-ext"),
/// 			Description: pulumi.String("my cdn edge extension"),
/// 			Location:    pulumi.String("global"),
/// 			Target: &networkservices.CdnEdgeExtensionTargetArgs{
/// 				Resources: pulumi.StringArray{
/// 					defaultEdgeCacheService.ID(),
/// 				},
/// 			},
/// 			ExtensionChains: networkservices.CdnEdgeExtensionExtensionChainArray{
/// 				&networkservices.CdnEdgeExtensionExtensionChainArgs{
/// 					Name: pulumi.String("chain1"),
/// 					MatchCondition: &networkservices.CdnEdgeExtensionExtensionChainMatchConditionArgs{
/// 						CelExpression: pulumi.String("request.host == 'example.com'"),
/// 					},
/// 					Extensions: networkservices.CdnEdgeExtensionExtensionChainExtensionArray{
/// 						&networkservices.CdnEdgeExtensionExtensionChainExtensionArgs{
/// 							Name:     pulumi.String("ext1"),
/// 							Service:  wasm_plugin.ID(),
/// 							FailOpen: pulumi.Bool(false),
/// 							SupportedEvents: pulumi.StringArray{
/// 								pulumi.String("REQUEST_HEADERS"),
/// 								pulumi.String("RESPONSE_HEADERS"),
/// 							},
/// 							ForwardHeaders: pulumi.StringArray{
/// 								pulumi.String("custom-header"),
/// 							},
/// 							ForwardAttributes: pulumi.StringArray{
/// 								pulumi.String("request.host"),
/// 								pulumi.String("request.path"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "dest" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "my-bucket"
///   location      = "US"
///   force_destroy = true
/// }
/// resource "gcp_networkservices_edge_cache_origin" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name           = "my-origin"
///   origin_address = gcp_storage_bucket.dest.url
///   description    = "The default bucket for media edge test"
///   max_attempts   = 2
///   timeout = {
///     connect_timeout = "10s"
///   }
/// }
/// resource "gcp_networkservices_edge_cache_service" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "my-service"
///   description = "my edge cache service"
///   routing = {
///     host_rules = [{
///       description  = "host rule description"
///       hosts        = ["sslcert.tf-test.club"]
///       path_matcher = "routes"
///     }]
///     path_matchers = [{
///       name = "routes"
///       route_rules = [{
///         description = "a route rule to match against"
///         priority    = 1
///         match_rules = [{
///           prefix_match = "/"
///         }]
///         origin = gcp_networkservices_edge_cache_origin.default.name
///         route_action = {
///           cdn_policy = {
///             cache_mode  = "CACHE_ALL_STATIC"
///             default_ttl = "3600s"
///           }
///         }
///         header_action = {
///           response_header_to_adds = [{
///             header_name  = "x-cache-status"
///             header_value = "{cdn_cache_status}"
///           }]
///         }
///       }]
///     }]
///   }
/// }
/// resource "gcp_networkservices_cdn_edge_extension" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "my-cdn-edge-ext"
///   description = "my cdn edge extension"
///   location    = "global"
///   target = {
///     resources = [gcp_networkservices_edge_cache_service.default.id]
///   }
///   extension_chains {
///     name = "chain1"
///     match_condition = {
///       cel_expression = "request.host == 'example.com'"
///     }
///     extensions {
///       name               = "ext1"
///       service            = gcp_networkservices_wasm_plugin.wasm-plugin.id
///       fail_open          = false
///       supported_events   = ["REQUEST_HEADERS", "RESPONSE_HEADERS"]
///       forward_headers    = ["custom-header"]
///       forward_attributes = ["request.host", "request.path"]
///     }
///   }
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// resource "gcp_networkservices_wasm_plugin" "wasm-plugin" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name            = "my-wasm-plugin"
///   description     = "my wasm plugin"
///   main_version_id = "v1"
///   labels = {
///     "test_label" = "test_value"
///   }
///   log_config = {
///     enable        = true
///     sample_rate   = 1
///     min_log_level = "WARN"
///   }
///   versions {
///     version_name = "v1"
///     description  = "v1 version of my wasm plugin"
///     image_uri    = "projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1"
///     labels = {
///       "test_label" = "test_value"
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
/// import com.pulumi.gcp.networkservices.WasmPlugin;
/// import com.pulumi.gcp.networkservices.WasmPluginArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginLogConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.WasmPluginVersionArgs;
/// import com.pulumi.gcp.networkservices.CdnEdgeExtension;
/// import com.pulumi.gcp.networkservices.CdnEdgeExtensionArgs;
/// import com.pulumi.gcp.networkservices.inputs.CdnEdgeExtensionTargetArgs;
/// import com.pulumi.gcp.networkservices.inputs.CdnEdgeExtensionExtensionChainArgs;
/// import com.pulumi.gcp.networkservices.inputs.CdnEdgeExtensionExtensionChainMatchConditionArgs;
/// import com.pulumi.gcp.networkservices.inputs.CdnEdgeExtensionExtensionChainExtensionArgs;
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
///         var default_ = new EdgeCacheOrigin("default", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress(dest.url())
///             .description("The default bucket for media edge test")
///             .maxAttempts(2)
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .build())
///             .build());
///
///         var defaultEdgeCacheService = new EdgeCacheService("defaultEdgeCacheService", EdgeCacheServiceArgs.builder()
///             .name("my-service")
///             .description("my edge cache service")
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
///                         .origin(default_.name())
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
///         var wasm_plugin = new WasmPlugin("wasm-plugin", WasmPluginArgs.builder()
///             .name("my-wasm-plugin")
///             .description("my wasm plugin")
///             .mainVersionId("v1")
///             .labels(Map.of("test_label", "test_value"))
///             .logConfig(WasmPluginLogConfigArgs.builder()
///                 .enable(true)
///                 .sampleRate(1.0)
///                 .minLogLevel("WARN")
///                 .build())
///             .versions(WasmPluginVersionArgs.builder()
///                 .versionName("v1")
///                 .description("v1 version of my wasm plugin")
///                 .imageUri("projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1")
///                 .labels(Map.of("test_label", "test_value"))
///                 .build())
///             .build());
///
///         var defaultCdnEdgeExtension = new CdnEdgeExtension("defaultCdnEdgeExtension", CdnEdgeExtensionArgs.builder()
///             .name("my-cdn-edge-ext")
///             .description("my cdn edge extension")
///             .location("global")
///             .target(CdnEdgeExtensionTargetArgs.builder()
///                 .resources(defaultEdgeCacheService.id())
///                 .build())
///             .extensionChains(CdnEdgeExtensionExtensionChainArgs.builder()
///                 .name("chain1")
///                 .matchCondition(CdnEdgeExtensionExtensionChainMatchConditionArgs.builder()
///                     .celExpression("request.host == 'example.com'")
///                     .build())
///                 .extensions(CdnEdgeExtensionExtensionChainExtensionArgs.builder()
///                     .name("ext1")
///                     .service(wasm_plugin.id())
///                     .failOpen(false)
///                     .supportedEvents(
///                         "REQUEST_HEADERS",
///                         "RESPONSE_HEADERS")
///                     .forwardHeaders("custom-header")
///                     .forwardAttributes(
///                         "request.host",
///                         "request.path")
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
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
///   default:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: ${dest.url}
///       description: The default bucket for media edge test
///       maxAttempts: 2
///       timeout:
///         connectTimeout: 10s
///   defaultEdgeCacheService:
///     type: gcp:networkservices:EdgeCacheService
///     name: default
///     properties:
///       name: my-service
///       description: my edge cache service
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
///                 origin: ${default.name}
///                 routeAction:
///                   cdnPolicy:
///                     cacheMode: CACHE_ALL_STATIC
///                     defaultTtl: 3600s
///                 headerAction:
///                   responseHeaderToAdds:
///                     - headerName: x-cache-status
///                       headerValue: '{cdn_cache_status}'
///   defaultCdnEdgeExtension:
///     type: gcp:networkservices:CdnEdgeExtension
///     name: default
///     properties:
///       name: my-cdn-edge-ext
///       description: my cdn edge extension
///       location: global
///       target:
///         resources:
///           - ${defaultEdgeCacheService.id}
///       extensionChains:
///         - name: chain1
///           matchCondition:
///             celExpression: request.host == 'example.com'
///           extensions:
///             - name: ext1
///               service: ${["wasm-plugin"].id}
///               failOpen: false
///               supportedEvents:
///                 - REQUEST_HEADERS
///                 - RESPONSE_HEADERS
///               forwardHeaders:
///                 - custom-header
///               forwardAttributes:
///                 - request.host
///                 - request.path
///       labels:
///         foo: bar
///   wasm-plugin:
///     type: gcp:networkservices:WasmPlugin
///     properties:
///       name: my-wasm-plugin
///       description: my wasm plugin
///       mainVersionId: v1
///       labels:
///         test_label: test_value
///       logConfig:
///         enable: true
///         sampleRate: 1
///         minLogLevel: WARN
///       versions:
///         - versionName: v1
///           description: v1 version of my wasm plugin
///           imageUri: projects/my-project-name/locations/us-central1/repositories/repository-standard/genericArtifacts/my-wasm-plugin:v1
///           labels:
///             test_label: test_value
/// ```
///
///
/// ## Import
///
/// CdnEdgeExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cdnEdgeExtensions/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, CdnEdgeExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension default projects/{{project}}/locations/{{location}}/cdnEdgeExtensions/{{name}}
/// $ pulumi import gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension default {{location}}/{{name}}
/// ```
class CdnEdgeExtension extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  late final pulumi.Output<List<CdnEdgeExtensionExtensionChain>> extensionChains;
  /// Set of labels associated with the CdnEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the CDN edge extension.
  late final pulumi.Output<String> location;
  /// Name of the CdnEdgeExtension resource in the following format: projects/{project}/locations/{location}/cdnEdgeExtensions/{cdn_edge_extension}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies the set of targets to which CdnEdgeExtension should be applied to.
  /// Structure is documented below.
  late final pulumi.Output<CdnEdgeExtensionTarget> target;

  /// Creates a new [CdnEdgeExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CdnEdgeExtension]. {@macro pulumi_networkservices_cdn_edge_extension_cdn_edge_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CdnEdgeExtension(
    String name, {
    CdnEdgeExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    extensionChains = registerOutput<List<CdnEdgeExtensionExtensionChain>>('extensionChains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEdgeExtensionExtensionChain>(guardedValue, (value) => CdnEdgeExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    target = registerOutput<CdnEdgeExtensionTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CdnEdgeExtensionTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CdnEdgeExtension] resource's state with the given [name] and [id].
  static CdnEdgeExtension get(
    String name,
    pulumi.Input<String> id, {
    CdnEdgeExtensionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CdnEdgeExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CdnEdgeExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    extensionChains = registerOutput<List<CdnEdgeExtensionExtensionChain>>('extensionChains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEdgeExtensionExtensionChain>(guardedValue, (value) => CdnEdgeExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    target = registerOutput<CdnEdgeExtensionTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CdnEdgeExtensionTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CdnEdgeExtension] resource.
  CdnEdgeExtension.reference(String urn)
    : super(
        'gcp:networkservices/cdnEdgeExtension:CdnEdgeExtension',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    extensionChains = registerOutput<List<CdnEdgeExtensionExtensionChain>>('extensionChains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEdgeExtensionExtensionChain>(guardedValue, (value) => CdnEdgeExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    target = registerOutput<CdnEdgeExtensionTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CdnEdgeExtensionTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
