import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_http_proxy_args.dart';
import 'region_target_http_proxy_state.dart';

/// Represents a RegionTargetHttpProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTP requests to a URL map.
///
///
/// To get more information about RegionTargetHttpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Region Target Http Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "http-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "backend-service",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
///     region: "us-central1",
///     name: "url-map",
///     defaultService: defaultRegionBackendService.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultRegionBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultRegionBackendService.id,
///         }],
///     }],
/// });
/// const _default = new gcp.compute.RegionTargetHttpProxy("default", {
///     region: "us-central1",
///     name: "test-proxy",
///     urlMap: defaultRegionUrlMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="http-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="backend-service",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
///     region="us-central1",
///     name="url-map",
///     default_service=default_region_backend_service.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_region_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_region_backend_service.id,
///         }],
///     }])
/// default = gcp.compute.RegionTargetHttpProxy("default",
///     region="us-central1",
///     name="test-proxy",
///     url_map=default_region_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "http-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "backend-service",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = defaultRegionHealthCheck.Id,
///     });
///
///     var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
///     {
///         Region = "us-central1",
///         Name = "url-map",
///         DefaultService = defaultRegionBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultRegionBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultRegionBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionTargetHttpProxy("default", new()
///     {
///         Region = "us-central1",
///         Name = "test-proxy",
///         UrlMap = defaultRegionUrlMap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("http-health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("backend-service"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("url-map"),
/// 			DefaultService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			HostRules: compute.RegionUrlMapHostRuleArray{
/// 				&compute.RegionUrlMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// 				&compute.RegionUrlMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("test-proxy"),
/// 			UrlMap: defaultRegionUrlMap.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_regiontargethttpproxy" "default" {
///   region  = "us-central1"
///   name    = "test-proxy"
///   url_map = gcp_compute_regionurlmap.default.id
/// }
/// resource "gcp_compute_regionurlmap" "default" {
///   region          = "us-central1"
///   name            = "url-map"
///   default_service = gcp_compute_regionbackendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_regionbackendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_regionbackendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   region                = "us-central1"
///   name                  = "backend-service"
///   protocol              = "HTTP"
///   timeout_sec           = 10
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   region = "us-central1"
///   name   = "http-health-check"
///   http_health_check = {
///     port = 80
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("http-health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("backend-service")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .build());
///
///         var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("url-map")
///             .defaultService(defaultRegionBackendService.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultRegionBackendService.id())
///                 .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultRegionBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new RegionTargetHttpProxy("default", RegionTargetHttpProxyArgs.builder()
///             .region("us-central1")
///             .name("test-proxy")
///             .urlMap(defaultRegionUrlMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetHttpProxy
///     properties:
///       region: us-central1
///       name: test-proxy
///       urlMap: ${defaultRegionUrlMap.id}
///   defaultRegionUrlMap:
///     type: gcp:compute:RegionUrlMap
///     name: default
///     properties:
///       region: us-central1
///       name: url-map
///       defaultService: ${defaultRegionBackendService.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultRegionBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultRegionBackendService.id}
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       region: us-central1
///       name: backend-service
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${defaultRegionHealthCheck.id}
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       region: us-central1
///       name: http-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Target Http Proxy Http Keep Alive Timeout
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "http-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: defaultRegionHealthCheck.id,
/// });
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
///     region: "us-central1",
///     name: "url-map",
///     defaultService: defaultRegionBackendService.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultRegionBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultRegionBackendService.id,
///         }],
///     }],
/// });
/// const _default = new gcp.compute.RegionTargetHttpProxy("default", {
///     region: "us-central1",
///     name: "test-http-keep-alive-timeout-proxy",
///     httpKeepAliveTimeoutSec: 600,
///     urlMap: defaultRegionUrlMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="http-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default_region_health_check.id)
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
///     region="us-central1",
///     name="url-map",
///     default_service=default_region_backend_service.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_region_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_region_backend_service.id,
///         }],
///     }])
/// default = gcp.compute.RegionTargetHttpProxy("default",
///     region="us-central1",
///     name="test-http-keep-alive-timeout-proxy",
///     http_keep_alive_timeout_sec=600,
///     url_map=default_region_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "http-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = defaultRegionHealthCheck.Id,
///     });
///
///     var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
///     {
///         Region = "us-central1",
///         Name = "url-map",
///         DefaultService = defaultRegionBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultRegionBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultRegionBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionTargetHttpProxy("default", new()
///     {
///         Region = "us-central1",
///         Name = "test-http-keep-alive-timeout-proxy",
///         HttpKeepAliveTimeoutSec = 600,
///         UrlMap = defaultRegionUrlMap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("http-health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("backend-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("url-map"),
/// 			DefaultService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			HostRules: compute.RegionUrlMapHostRuleArray{
/// 				&compute.RegionUrlMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// 				&compute.RegionUrlMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// 			Region:                  pulumi.String("us-central1"),
/// 			Name:                    pulumi.String("test-http-keep-alive-timeout-proxy"),
/// 			HttpKeepAliveTimeoutSec: pulumi.Int(600),
/// 			UrlMap:                  defaultRegionUrlMap.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_regiontargethttpproxy" "default" {
///   region                      = "us-central1"
///   name                        = "test-http-keep-alive-timeout-proxy"
///   http_keep_alive_timeout_sec = 600
///   url_map                     = gcp_compute_regionurlmap.default.id
/// }
/// resource "gcp_compute_regionurlmap" "default" {
///   region          = "us-central1"
///   name            = "url-map"
///   default_service = gcp_compute_regionbackendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_regionbackendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_regionbackendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   region                = "us-central1"
///   name                  = "backend-service"
///   port_name             = "http"
///   protocol              = "HTTP"
///   timeout_sec           = 10
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   region = "us-central1"
///   name   = "http-health-check"
///   http_health_check = {
///     port = 80
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("http-health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .build());
///
///         var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("url-map")
///             .defaultService(defaultRegionBackendService.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultRegionBackendService.id())
///                 .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultRegionBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new RegionTargetHttpProxy("default", RegionTargetHttpProxyArgs.builder()
///             .region("us-central1")
///             .name("test-http-keep-alive-timeout-proxy")
///             .httpKeepAliveTimeoutSec(600)
///             .urlMap(defaultRegionUrlMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetHttpProxy
///     properties:
///       region: us-central1
///       name: test-http-keep-alive-timeout-proxy
///       httpKeepAliveTimeoutSec: 600
///       urlMap: ${defaultRegionUrlMap.id}
///   defaultRegionUrlMap:
///     type: gcp:compute:RegionUrlMap
///     name: default
///     properties:
///       region: us-central1
///       name: url-map
///       defaultService: ${defaultRegionBackendService.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultRegionBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultRegionBackendService.id}
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       region: us-central1
///       name: backend-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${defaultRegionHealthCheck.id}
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       region: us-central1
///       name: http-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Target Http Proxy Https Redirect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionUrlMap = new gcp.compute.RegionUrlMap("default", {
///     region: "us-central1",
///     name: "url-map",
///     defaultUrlRedirect: {
///         httpsRedirect: true,
///         stripQuery: false,
///     },
/// });
/// const _default = new gcp.compute.RegionTargetHttpProxy("default", {
///     region: "us-central1",
///     name: "test-https-redirect-proxy",
///     urlMap: defaultRegionUrlMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_url_map = gcp.compute.RegionUrlMap("default",
///     region="us-central1",
///     name="url-map",
///     default_url_redirect={
///         "https_redirect": True,
///         "strip_query": False,
///     })
/// default = gcp.compute.RegionTargetHttpProxy("default",
///     region="us-central1",
///     name="test-https-redirect-proxy",
///     url_map=default_region_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionUrlMap = new Gcp.Compute.RegionUrlMap("default", new()
///     {
///         Region = "us-central1",
///         Name = "url-map",
///         DefaultUrlRedirect = new Gcp.Compute.Inputs.RegionUrlMapDefaultUrlRedirectArgs
///         {
///             HttpsRedirect = true,
///             StripQuery = false,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionTargetHttpProxy("default", new()
///     {
///         Region = "us-central1",
///         Name = "test-https-redirect-proxy",
///         UrlMap = defaultRegionUrlMap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultRegionUrlMap, err := compute.NewRegionUrlMap(ctx, "default", &compute.RegionUrlMapArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("url-map"),
/// 			DefaultUrlRedirect: &compute.RegionUrlMapDefaultUrlRedirectArgs{
/// 				HttpsRedirect: pulumi.Bool(true),
/// 				StripQuery:    pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetHttpProxy(ctx, "default", &compute.RegionTargetHttpProxyArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("test-https-redirect-proxy"),
/// 			UrlMap: defaultRegionUrlMap.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_regiontargethttpproxy" "default" {
///   region  = "us-central1"
///   name    = "test-https-redirect-proxy"
///   url_map = gcp_compute_regionurlmap.default.id
/// }
/// resource "gcp_compute_regionurlmap" "default" {
///   region = "us-central1"
///   name   = "url-map"
///   default_url_redirect = {
///     https_redirect = true
///     strip_query    = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultUrlRedirectArgs;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxy;
/// import com.pulumi.gcp.compute.RegionTargetHttpProxyArgs;
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
///         var defaultRegionUrlMap = new RegionUrlMap("defaultRegionUrlMap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("url-map")
///             .defaultUrlRedirect(RegionUrlMapDefaultUrlRedirectArgs.builder()
///                 .httpsRedirect(true)
///                 .stripQuery(false)
///                 .build())
///             .build());
///
///         var default_ = new RegionTargetHttpProxy("default", RegionTargetHttpProxyArgs.builder()
///             .region("us-central1")
///             .name("test-https-redirect-proxy")
///             .urlMap(defaultRegionUrlMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetHttpProxy
///     properties:
///       region: us-central1
///       name: test-https-redirect-proxy
///       urlMap: ${defaultRegionUrlMap.id}
///   defaultRegionUrlMap:
///     type: gcp:compute:RegionUrlMap
///     name: default
///     properties:
///       region: us-central1
///       name: url-map
///       defaultUrlRedirect:
///         httpsRedirect: true
///         stripQuery: false
/// ```
///
///
/// ## Import
///
/// RegionTargetHttpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetHttpProxies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionTargetHttpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default projects/{{project}}/regions/{{region}}/targetHttpProxies/{{name}}
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{name}}
/// ```
class RegionTargetHttpProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regional
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  late final pulumi.Output<int?> httpKeepAliveTimeoutSec;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;
  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the BackendService.
  late final pulumi.Output<String> urlMap;

  /// Creates a new [RegionTargetHttpProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionTargetHttpProxy]. {@macro pulumi_compute_region_target_http_proxy_region_target_http_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionTargetHttpProxy(
    String name, {
    RegionTargetHttpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyId = registerOutput<int>('proxyId');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    urlMap = registerOutput<String>('urlMap');
  }

  /// Gets an existing [RegionTargetHttpProxy] resource's state with the given [name] and [id].
  static RegionTargetHttpProxy get(
    String name,
    pulumi.Input<String> id, {
    RegionTargetHttpProxyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionTargetHttpProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionTargetHttpProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyId = registerOutput<int>('proxyId');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    urlMap = registerOutput<String>('urlMap');
  }

  /// Creates a typed reference to an existing [RegionTargetHttpProxy] resource.
  RegionTargetHttpProxy.reference(String urn)
    : super(
        'gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyId = registerOutput<int>('proxyId');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    urlMap = registerOutput<String>('urlMap');
  }
}
