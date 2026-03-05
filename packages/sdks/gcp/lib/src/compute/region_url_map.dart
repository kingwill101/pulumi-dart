import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_args.dart';
import 'region_url_map_default_route_action.dart';
import 'region_url_map_default_url_redirect.dart';
import 'region_url_map_header_action.dart';
import 'region_url_map_state.dart';

/// UrlMaps are used to route requests to a backend service based on rules
/// that you define for the host and path of an incoming URL.
///
///
///
/// ## Example Usage
///
/// ### Region Url Map Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     httpHealthCheck: {
///         port: 80,
///         requestPath: "/",
///     },
/// });
/// const login = new gcp.compute.RegionBackendService("login", {
///     region: "us-central1",
///     name: "login",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [
///             {
///                 paths: ["/home"],
///                 service: home.id,
///             },
///             {
///                 paths: ["/login"],
///                 service: login.id,
///             },
///         ],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     http_health_check={
///         "port": 80,
///         "request_path": "/",
///     })
/// login = gcp.compute.RegionBackendService("login",
///     region="us-central1",
///     name="login",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [
///             {
///                 "paths": ["/home"],
///                 "service": home.id,
///             },
///             {
///                 "paths": ["/login"],
///                 "service": login.id,
///             },
///         ],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///             RequestPath = "/",
///         },
///     });
///
///     var login = new Gcp.Compute.RegionBackendService("login", new()
///     {
///         Region = "us-central1",
///         Name = "login",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = home.Id,
///                     },
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/login",
///                         },
///                         Service = login.Id,
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region:           pulumi.String("us-central1"),
/// 			Name:             pulumi.String("health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port:        pulumi.Int(80),
/// 				RequestPath: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		login, err := compute.NewRegionBackendService(ctx, "login", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("login"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: home.ID(),
/// 						},
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/login"),
/// 							},
/// 							Service: login.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .requestPath("/")
///                 .build())
///             .build());
///
///         var login = new RegionBackendService("login", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("login")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/home")
///                         .service(home.id())
///                         .build(),
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/login")
///                         .service(login.id())
///                         .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               service: ${home.id}
///             - paths:
///                 - /login
///               service: ${login.id}
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   login:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: login
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       httpHealthCheck:
///         port: 80
///         requestPath: /
/// ```
///
/// ### Region Url Map Default Route Action
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     httpHealthCheck: {
///         port: 80,
///         requestPath: "/",
///     },
/// });
/// const login = new gcp.compute.RegionBackendService("login", {
///     region: "us-central1",
///     name: "login",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "a description",
///     defaultRouteAction: {
///         retryPolicy: {
///             retryConditions: [
///                 "5xx",
///                 "gateway-error",
///             ],
///             numRetries: 3,
///             perTryTimeout: {
///                 seconds: "0",
///                 nanos: 500,
///             },
///         },
///         requestMirrorPolicy: {
///             backendService: home.id,
///         },
///         weightedBackendServices: [
///             {
///                 backendService: login.id,
///                 weight: 200,
///                 headerAction: {
///                     requestHeadersToAdds: [{
///                         headerName: "foo-request-1",
///                         headerValue: "bar",
///                         replace: true,
///                     }],
///                     requestHeadersToRemoves: ["fizz"],
///                     responseHeadersToAdds: [{
///                         headerName: "foo-response-1",
///                         headerValue: "bar",
///                         replace: true,
///                     }],
///                     responseHeadersToRemoves: ["buzz"],
///                 },
///             },
///             {
///                 backendService: home.id,
///                 weight: 100,
///                 headerAction: {
///                     requestHeadersToAdds: [
///                         {
///                             headerName: "foo-request-1",
///                             headerValue: "bar",
///                             replace: true,
///                         },
///                         {
///                             headerName: "foo-request-2",
///                             headerValue: "bar",
///                             replace: true,
///                         },
///                     ],
///                     requestHeadersToRemoves: ["fizz"],
///                     responseHeadersToAdds: [
///                         {
///                             headerName: "foo-response-2",
///                             headerValue: "bar",
///                             replace: true,
///                         },
///                         {
///                             headerName: "foo-response-1",
///                             headerValue: "bar",
///                             replace: true,
///                         },
///                     ],
///                     responseHeadersToRemoves: ["buzz"],
///                 },
///             },
///         ],
///         urlRewrite: {
///             hostRewrite: "dev.example.com",
///             pathPrefixRewrite: "/v1/api/",
///         },
///         corsPolicy: {
///             disabled: false,
///             allowCredentials: true,
///             allowHeaders: ["foobar"],
///             allowMethods: [
///                 "GET",
///                 "POST",
///             ],
///             allowOrigins: ["example.com"],
///             exposeHeaders: ["foobar"],
///             maxAge: 60,
///         },
///         faultInjectionPolicy: {
///             delay: {
///                 fixedDelay: {
///                     seconds: "0",
///                     nanos: 500,
///                 },
///                 percentage: 0.5,
///             },
///             abort: {
///                 httpStatus: 500,
///                 percentage: 0.5,
///             },
///         },
///         timeout: {
///             seconds: "0",
///             nanos: 500,
///         },
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [
///             {
///                 paths: ["/home"],
///                 service: home.id,
///             },
///             {
///                 paths: ["/login"],
///                 service: login.id,
///             },
///         ],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     http_health_check={
///         "port": 80,
///         "request_path": "/",
///     })
/// login = gcp.compute.RegionBackendService("login",
///     region="us-central1",
///     name="login",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="a description",
///     default_route_action={
///         "retry_policy": {
///             "retry_conditions": [
///                 "5xx",
///                 "gateway-error",
///             ],
///             "num_retries": 3,
///             "per_try_timeout": {
///                 "seconds": "0",
///                 "nanos": 500,
///             },
///         },
///         "request_mirror_policy": {
///             "backend_service": home.id,
///         },
///         "weighted_backend_services": [
///             {
///                 "backend_service": login.id,
///                 "weight": 200,
///                 "header_action": {
///                     "request_headers_to_adds": [{
///                         "header_name": "foo-request-1",
///                         "header_value": "bar",
///                         "replace": True,
///                     }],
///                     "request_headers_to_removes": ["fizz"],
///                     "response_headers_to_adds": [{
///                         "header_name": "foo-response-1",
///                         "header_value": "bar",
///                         "replace": True,
///                     }],
///                     "response_headers_to_removes": ["buzz"],
///                 },
///             },
///             {
///                 "backend_service": home.id,
///                 "weight": 100,
///                 "header_action": {
///                     "request_headers_to_adds": [
///                         {
///                             "header_name": "foo-request-1",
///                             "header_value": "bar",
///                             "replace": True,
///                         },
///                         {
///                             "header_name": "foo-request-2",
///                             "header_value": "bar",
///                             "replace": True,
///                         },
///                     ],
///                     "request_headers_to_removes": ["fizz"],
///                     "response_headers_to_adds": [
///                         {
///                             "header_name": "foo-response-2",
///                             "header_value": "bar",
///                             "replace": True,
///                         },
///                         {
///                             "header_name": "foo-response-1",
///                             "header_value": "bar",
///                             "replace": True,
///                         },
///                     ],
///                     "response_headers_to_removes": ["buzz"],
///                 },
///             },
///         ],
///         "url_rewrite": {
///             "host_rewrite": "dev.example.com",
///             "path_prefix_rewrite": "/v1/api/",
///         },
///         "cors_policy": {
///             "disabled": False,
///             "allow_credentials": True,
///             "allow_headers": ["foobar"],
///             "allow_methods": [
///                 "GET",
///                 "POST",
///             ],
///             "allow_origins": ["example.com"],
///             "expose_headers": ["foobar"],
///             "max_age": 60,
///         },
///         "fault_injection_policy": {
///             "delay": {
///                 "fixed_delay": {
///                     "seconds": "0",
///                     "nanos": 500,
///                 },
///                 "percentage": 0.5,
///             },
///             "abort": {
///                 "http_status": 500,
///                 "percentage": 0.5,
///             },
///         },
///         "timeout": {
///             "seconds": "0",
///             "nanos": 500,
///         },
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [
///             {
///                 "paths": ["/home"],
///                 "service": home.id,
///             },
///             {
///                 "paths": ["/login"],
///                 "service": login.id,
///             },
///         ],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///             RequestPath = "/",
///         },
///     });
///
///     var login = new Gcp.Compute.RegionBackendService("login", new()
///     {
///         Region = "us-central1",
///         Name = "login",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultRouteAction = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionArgs
///         {
///             RetryPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionRetryPolicyArgs
///             {
///                 RetryConditions = new[]
///                 {
///                     "5xx",
///                     "gateway-error",
///                 },
///                 NumRetries = 3,
///                 PerTryTimeout = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeoutArgs
///                 {
///                     Seconds = "0",
///                     Nanos = 500,
///                 },
///             },
///             RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs
///             {
///                 BackendService = home.Id,
///             },
///             WeightedBackendServices = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs
///                 {
///                     BackendService = login.Id,
///                     Weight = 200,
///                     HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs
///                     {
///                         RequestHeadersToAdds = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-request-1",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                         },
///                         RequestHeadersToRemoves = new[]
///                         {
///                             "fizz",
///                         },
///                         ResponseHeadersToAdds = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-response-1",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                         },
///                         ResponseHeadersToRemoves = new[]
///                         {
///                             "buzz",
///                         },
///                     },
///                 },
///                 new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs
///                 {
///                     BackendService = home.Id,
///                     Weight = 100,
///                     HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs
///                     {
///                         RequestHeadersToAdds = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-request-1",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-request-2",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                         },
///                         RequestHeadersToRemoves = new[]
///                         {
///                             "fizz",
///                         },
///                         ResponseHeadersToAdds = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-response-2",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                             new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                             {
///                                 HeaderName = "foo-response-1",
///                                 HeaderValue = "bar",
///                                 Replace = true,
///                             },
///                         },
///                         ResponseHeadersToRemoves = new[]
///                         {
///                             "buzz",
///                         },
///                     },
///                 },
///             },
///             UrlRewrite = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionUrlRewriteArgs
///             {
///                 HostRewrite = "dev.example.com",
///                 PathPrefixRewrite = "/v1/api/",
///             },
///             CorsPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionCorsPolicyArgs
///             {
///                 Disabled = false,
///                 AllowCredentials = true,
///                 AllowHeaders = new[]
///                 {
///                     "foobar",
///                 },
///                 AllowMethods = new[]
///                 {
///                     "GET",
///                     "POST",
///                 },
///                 AllowOrigins = new[]
///                 {
///                     "example.com",
///                 },
///                 ExposeHeaders = new[]
///                 {
///                     "foobar",
///                 },
///                 MaxAge = 60,
///             },
///             FaultInjectionPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyArgs
///             {
///                 Delay = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayArgs
///                 {
///                     FixedDelay = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs
///                     {
///                         Seconds = "0",
///                         Nanos = 500,
///                     },
///                     Percentage = 0.5,
///                 },
///                 Abort = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyAbortArgs
///                 {
///                     HttpStatus = 500,
///                     Percentage = 0.5,
///                 },
///             },
///             Timeout = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionTimeoutArgs
///             {
///                 Seconds = "0",
///                 Nanos = 500,
///             },
///         },
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
///                 DefaultService = home.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = home.Id,
///                     },
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/login",
///                         },
///                         Service = login.Id,
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region:           pulumi.String("us-central1"),
/// 			Name:             pulumi.String("health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port:        pulumi.Int(80),
/// 				RequestPath: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		login, err := compute.NewRegionBackendService(ctx, "login", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("login"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			Name:        pulumi.String("regionurlmap"),
/// 			Description: pulumi.String("a description"),
/// 			DefaultRouteAction: &compute.RegionUrlMapDefaultRouteActionArgs{
/// 				RetryPolicy: &compute.RegionUrlMapDefaultRouteActionRetryPolicyArgs{
/// 					RetryConditions: pulumi.StringArray{
/// 						pulumi.String("5xx"),
/// 						pulumi.String("gateway-error"),
/// 					},
/// 					NumRetries: pulumi.Int(3),
/// 					PerTryTimeout: &compute.RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeoutArgs{
/// 						Seconds: pulumi.String("0"),
/// 						Nanos:   pulumi.Int(500),
/// 					},
/// 				},
/// 				RequestMirrorPolicy: &compute.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs{
/// 					BackendService: home.ID(),
/// 				},
/// 				WeightedBackendServices: compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceArray{
/// 					&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs{
/// 						BackendService: login.ID(),
/// 						Weight:         pulumi.Int(200),
/// 						HeaderAction: &compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs{
/// 							RequestHeadersToAdds: compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-request-1"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 							},
/// 							RequestHeadersToRemoves: pulumi.StringArray{
/// 								pulumi.String("fizz"),
/// 							},
/// 							ResponseHeadersToAdds: compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-response-1"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 							},
/// 							ResponseHeadersToRemoves: pulumi.StringArray{
/// 								pulumi.String("buzz"),
/// 							},
/// 						},
/// 					},
/// 					&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs{
/// 						BackendService: home.ID(),
/// 						Weight:         pulumi.Int(100),
/// 						HeaderAction: &compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs{
/// 							RequestHeadersToAdds: compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-request-1"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-request-2"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 							},
/// 							RequestHeadersToRemoves: pulumi.StringArray{
/// 								pulumi.String("fizz"),
/// 							},
/// 							ResponseHeadersToAdds: compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-response-2"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 								&compute.RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 									HeaderName:  pulumi.String("foo-response-1"),
/// 									HeaderValue: pulumi.String("bar"),
/// 									Replace:     pulumi.Bool(true),
/// 								},
/// 							},
/// 							ResponseHeadersToRemoves: pulumi.StringArray{
/// 								pulumi.String("buzz"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UrlRewrite: &compute.RegionUrlMapDefaultRouteActionUrlRewriteArgs{
/// 					HostRewrite:       pulumi.String("dev.example.com"),
/// 					PathPrefixRewrite: pulumi.String("/v1/api/"),
/// 				},
/// 				CorsPolicy: &compute.RegionUrlMapDefaultRouteActionCorsPolicyArgs{
/// 					Disabled:         pulumi.Bool(false),
/// 					AllowCredentials: pulumi.Bool(true),
/// 					AllowHeaders: pulumi.StringArray{
/// 						pulumi.String("foobar"),
/// 					},
/// 					AllowMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("POST"),
/// 					},
/// 					AllowOrigins: pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 					ExposeHeaders: pulumi.StringArray{
/// 						pulumi.String("foobar"),
/// 					},
/// 					MaxAge: pulumi.Int(60),
/// 				},
/// 				FaultInjectionPolicy: &compute.RegionUrlMapDefaultRouteActionFaultInjectionPolicyArgs{
/// 					Delay: &compute.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayArgs{
/// 						FixedDelay: &compute.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs{
/// 							Seconds: pulumi.String("0"),
/// 							Nanos:   pulumi.Int(500),
/// 						},
/// 						Percentage: pulumi.Float64(0.5),
/// 					},
/// 					Abort: &compute.RegionUrlMapDefaultRouteActionFaultInjectionPolicyAbortArgs{
/// 						HttpStatus: pulumi.Int(500),
/// 						Percentage: pulumi.Float64(0.5),
/// 					},
/// 				},
/// 				Timeout: &compute.RegionUrlMapDefaultRouteActionTimeoutArgs{
/// 					Seconds: pulumi.String("0"),
/// 					Nanos:   pulumi.Int(500),
/// 				},
/// 			},
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
/// 					DefaultService: home.ID(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: home.ID(),
/// 						},
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/login"),
/// 							},
/// 							Service: login.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionRetryPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeoutArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionUrlRewriteArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionCorsPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionFaultInjectionPolicyAbortArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionTimeoutArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .requestPath("/")
///                 .build())
///             .build());
///
///         var login = new RegionBackendService("login", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("login")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("a description")
///             .defaultRouteAction(RegionUrlMapDefaultRouteActionArgs.builder()
///                 .retryPolicy(RegionUrlMapDefaultRouteActionRetryPolicyArgs.builder()
///                     .retryConditions(
///                         "5xx",
///                         "gateway-error")
///                     .numRetries(3)
///                     .perTryTimeout(RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeoutArgs.builder()
///                         .seconds("0")
///                         .nanos(500)
///                         .build())
///                     .build())
///                 .requestMirrorPolicy(RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                     .backendService(home.id())
///                     .build())
///                 .weightedBackendServices(
///                     RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs.builder()
///                         .backendService(login.id())
///                         .weight(200)
///                         .headerAction(RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                             .requestHeadersToAdds(RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                 .headerName("foo-request-1")
///                                 .headerValue("bar")
///                                 .replace(true)
///                                 .build())
///                             .requestHeadersToRemoves("fizz")
///                             .responseHeadersToAdds(RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                 .headerName("foo-response-1")
///                                 .headerValue("bar")
///                                 .replace(true)
///                                 .build())
///                             .responseHeadersToRemoves("buzz")
///                             .build())
///                         .build(),
///                     RegionUrlMapDefaultRouteActionWeightedBackendServiceArgs.builder()
///                         .backendService(home.id())
///                         .weight(100)
///                         .headerAction(RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                             .requestHeadersToAdds(
///                                 RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                     .headerName("foo-request-1")
///                                     .headerValue("bar")
///                                     .replace(true)
///                                     .build(),
///                                 RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                     .headerName("foo-request-2")
///                                     .headerValue("bar")
///                                     .replace(true)
///                                     .build())
///                             .requestHeadersToRemoves("fizz")
///                             .responseHeadersToAdds(
///                                 RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("foo-response-2")
///                                     .headerValue("bar")
///                                     .replace(true)
///                                     .build(),
///                                 RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("foo-response-1")
///                                     .headerValue("bar")
///                                     .replace(true)
///                                     .build())
///                             .responseHeadersToRemoves("buzz")
///                             .build())
///                         .build())
///                 .urlRewrite(RegionUrlMapDefaultRouteActionUrlRewriteArgs.builder()
///                     .hostRewrite("dev.example.com")
///                     .pathPrefixRewrite("/v1/api/")
///                     .build())
///                 .corsPolicy(RegionUrlMapDefaultRouteActionCorsPolicyArgs.builder()
///                     .disabled(false)
///                     .allowCredentials(true)
///                     .allowHeaders("foobar")
///                     .allowMethods(
///                         "GET",
///                         "POST")
///                     .allowOrigins("example.com")
///                     .exposeHeaders("foobar")
///                     .maxAge(60)
///                     .build())
///                 .faultInjectionPolicy(RegionUrlMapDefaultRouteActionFaultInjectionPolicyArgs.builder()
///                     .delay(RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayArgs.builder()
///                         .fixedDelay(RegionUrlMapDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs.builder()
///                             .seconds("0")
///                             .nanos(500)
///                             .build())
///                         .percentage(0.5)
///                         .build())
///                     .abort(RegionUrlMapDefaultRouteActionFaultInjectionPolicyAbortArgs.builder()
///                         .httpStatus(500)
///                         .percentage(0.5)
///                         .build())
///                     .build())
///                 .timeout(RegionUrlMapDefaultRouteActionTimeoutArgs.builder()
///                     .seconds("0")
///                     .nanos(500)
///                     .build())
///                 .build())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/home")
///                         .service(home.id())
///                         .build(),
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/login")
///                         .service(login.id())
///                         .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: a description
///       defaultRouteAction:
///         retryPolicy:
///           retryConditions:
///             - 5xx
///             - gateway-error
///           numRetries: 3
///           perTryTimeout:
///             seconds: 0
///             nanos: 500
///         requestMirrorPolicy:
///           backendService: ${home.id}
///         weightedBackendServices:
///           - backendService: ${login.id}
///             weight: 200
///             headerAction:
///               requestHeadersToAdds:
///                 - headerName: foo-request-1
///                   headerValue: bar
///                   replace: true
///               requestHeadersToRemoves:
///                 - fizz
///               responseHeadersToAdds:
///                 - headerName: foo-response-1
///                   headerValue: bar
///                   replace: true
///               responseHeadersToRemoves:
///                 - buzz
///           - backendService: ${home.id}
///             weight: 100
///             headerAction:
///               requestHeadersToAdds:
///                 - headerName: foo-request-1
///                   headerValue: bar
///                   replace: true
///                 - headerName: foo-request-2
///                   headerValue: bar
///                   replace: true
///               requestHeadersToRemoves:
///                 - fizz
///               responseHeadersToAdds:
///                 - headerName: foo-response-2
///                   headerValue: bar
///                   replace: true
///                 - headerName: foo-response-1
///                   headerValue: bar
///                   replace: true
///               responseHeadersToRemoves:
///                 - buzz
///         urlRewrite:
///           hostRewrite: dev.example.com
///           pathPrefixRewrite: /v1/api/
///         corsPolicy:
///           disabled: false
///           allowCredentials: true
///           allowHeaders:
///             - foobar
///           allowMethods:
///             - GET
///             - POST
///           allowOrigins:
///             - example.com
///           exposeHeaders:
///             - foobar
///           maxAge: 60
///         faultInjectionPolicy:
///           delay:
///             fixedDelay:
///               seconds: 0
///               nanos: 500
///             percentage: 0.5
///           abort:
///             httpStatus: 500
///             percentage: 0.5
///         timeout:
///           seconds: 0
///           nanos: 500
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               service: ${home.id}
///             - paths:
///                 - /login
///               service: ${login.id}
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   login:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: login
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       httpHealthCheck:
///         port: 80
///         requestPath: /
/// ```
///
/// ### Region Url Map L7 Ilb Path
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     name: "home",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [{
///             paths: ["/home"],
///             routeAction: {
///                 corsPolicy: {
///                     allowCredentials: true,
///                     allowHeaders: ["Allowed content"],
///                     allowMethods: ["GET"],
///                     allowOrigins: ["Allowed origin"],
///                     exposeHeaders: ["Exposed header"],
///                     maxAge: 30,
///                     disabled: false,
///                 },
///                 faultInjectionPolicy: {
///                     abort: {
///                         httpStatus: 234,
///                         percentage: 5.6,
///                     },
///                     delay: {
///                         fixedDelay: {
///                             seconds: "0",
///                             nanos: 50000,
///                         },
///                         percentage: 7.8,
///                     },
///                 },
///                 requestMirrorPolicy: {
///                     backendService: home.id,
///                 },
///                 retryPolicy: {
///                     numRetries: 4,
///                     perTryTimeout: {
///                         seconds: "30",
///                     },
///                     retryConditions: [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 timeout: {
///                     seconds: "20",
///                     nanos: 750000000,
///                 },
///                 urlRewrite: {
///                     hostRewrite: "dev.example.com",
///                     pathPrefixRewrite: "/v1/api/",
///                 },
///                 weightedBackendServices: [{
///                     backendService: home.id,
///                     weight: 400,
///                     headerAction: {
///                         requestHeadersToRemoves: ["RemoveMe"],
///                         requestHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: true,
///                         }],
///                         responseHeadersToRemoves: ["RemoveMe"],
///                         responseHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: false,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     name="home",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [{
///             "paths": ["/home"],
///             "route_action": {
///                 "cors_policy": {
///                     "allow_credentials": True,
///                     "allow_headers": ["Allowed content"],
///                     "allow_methods": ["GET"],
///                     "allow_origins": ["Allowed origin"],
///                     "expose_headers": ["Exposed header"],
///                     "max_age": 30,
///                     "disabled": False,
///                 },
///                 "fault_injection_policy": {
///                     "abort": {
///                         "http_status": 234,
///                         "percentage": 5.6,
///                     },
///                     "delay": {
///                         "fixed_delay": {
///                             "seconds": "0",
///                             "nanos": 50000,
///                         },
///                         "percentage": 7.8,
///                     },
///                 },
///                 "request_mirror_policy": {
///                     "backend_service": home.id,
///                 },
///                 "retry_policy": {
///                     "num_retries": 4,
///                     "per_try_timeout": {
///                         "seconds": "30",
///                     },
///                     "retry_conditions": [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 "timeout": {
///                     "seconds": "20",
///                     "nanos": 750000000,
///                 },
///                 "url_rewrite": {
///                     "host_rewrite": "dev.example.com",
///                     "path_prefix_rewrite": "/v1/api/",
///                 },
///                 "weighted_backend_services": [{
///                     "backend_service": home.id,
///                     "weight": 400,
///                     "header_action": {
///                         "request_headers_to_removes": ["RemoveMe"],
///                         "request_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": True,
///                         }],
///                         "response_headers_to_removes": ["RemoveMe"],
///                         "response_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": False,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Name = "home",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         RouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             CorsPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionCorsPolicyArgs
///                             {
///                                 AllowCredentials = true,
///                                 AllowHeaders = new[]
///                                 {
///                                     "Allowed content",
///                                 },
///                                 AllowMethods = new[]
///                                 {
///                                     "GET",
///                                 },
///                                 AllowOrigins = new[]
///                                 {
///                                     "Allowed origin",
///                                 },
///                                 ExposeHeaders = new[]
///                                 {
///                                     "Exposed header",
///                                 },
///                                 MaxAge = 30,
///                                 Disabled = false,
///                             },
///                             FaultInjectionPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs
///                             {
///                                 Abort = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs
///                                 {
///                                     HttpStatus = 234,
///                                     Percentage = 5.6,
///                                 },
///                                 Delay = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs
///                                 {
///                                     FixedDelay = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs
///                                     {
///                                         Seconds = "0",
///                                         Nanos = 50000,
///                                     },
///                                     Percentage = 7.8,
///                                 },
///                             },
///                             RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs
///                             {
///                                 BackendService = home.Id,
///                             },
///                             RetryPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs
///                             {
///                                 NumRetries = 4,
///                                 PerTryTimeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs
///                                 {
///                                     Seconds = "30",
///                                 },
///                                 RetryConditions = new[]
///                                 {
///                                     "5xx",
///                                     "deadline-exceeded",
///                                 },
///                             },
///                             Timeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs
///                             {
///                                 Seconds = "20",
///                                 Nanos = 750000000,
///                             },
///                             UrlRewrite = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs
///                             {
///                                 HostRewrite = "dev.example.com",
///                                 PathPrefixRewrite = "/v1/api/",
///                             },
///                             WeightedBackendServices = new[]
///                             {
///                                 new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs
///                                 {
///                                     BackendService = home.Id,
///                                     Weight = 400,
///                                     HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs
///                                     {
///                                         RequestHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         RequestHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = true,
///                                             },
///                                         },
///                                         ResponseHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         ResponseHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = false,
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							RouteAction: &compute.RegionUrlMapPathMatcherPathRuleRouteActionArgs{
/// 								CorsPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionCorsPolicyArgs{
/// 									AllowCredentials: pulumi.Bool(true),
/// 									AllowHeaders: pulumi.StringArray{
/// 										pulumi.String("Allowed content"),
/// 									},
/// 									AllowMethods: pulumi.StringArray{
/// 										pulumi.String("GET"),
/// 									},
/// 									AllowOrigins: pulumi.StringArray{
/// 										pulumi.String("Allowed origin"),
/// 									},
/// 									ExposeHeaders: pulumi.StringArray{
/// 										pulumi.String("Exposed header"),
/// 									},
/// 									MaxAge:   pulumi.Int(30),
/// 									Disabled: pulumi.Bool(false),
/// 								},
/// 								FaultInjectionPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs{
/// 									Abort: &compute.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs{
/// 										HttpStatus: pulumi.Int(234),
/// 										Percentage: pulumi.Float64(5.6),
/// 									},
/// 									Delay: &compute.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs{
/// 										FixedDelay: &compute.RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs{
/// 											Seconds: pulumi.String("0"),
/// 											Nanos:   pulumi.Int(50000),
/// 										},
/// 										Percentage: pulumi.Float64(7.8),
/// 									},
/// 								},
/// 								RequestMirrorPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs{
/// 									BackendService: home.ID(),
/// 								},
/// 								RetryPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs{
/// 									NumRetries: pulumi.Int(4),
/// 									PerTryTimeout: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs{
/// 										Seconds: pulumi.String("30"),
/// 									},
/// 									RetryConditions: pulumi.StringArray{
/// 										pulumi.String("5xx"),
/// 										pulumi.String("deadline-exceeded"),
/// 									},
/// 								},
/// 								Timeout: &compute.RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs{
/// 									Seconds: pulumi.String("20"),
/// 									Nanos:   pulumi.Int(750000000),
/// 								},
/// 								UrlRewrite: &compute.RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs{
/// 									HostRewrite:       pulumi.String("dev.example.com"),
/// 									PathPrefixRewrite: pulumi.String("/v1/api/"),
/// 								},
/// 								WeightedBackendServices: compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArray{
/// 									&compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs{
/// 										BackendService: home.ID(),
/// 										Weight:         pulumi.Int(400),
/// 										HeaderAction: &compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs{
/// 											RequestHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											RequestHeadersToAdds: compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 												&compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(true),
/// 												},
/// 											},
/// 											ResponseHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											ResponseHeadersToAdds: compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 												&compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(false),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .name("home")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .routeAction(RegionUrlMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .corsPolicy(RegionUrlMapPathMatcherPathRuleRouteActionCorsPolicyArgs.builder()
///                             .allowCredentials(true)
///                             .allowHeaders("Allowed content")
///                             .allowMethods("GET")
///                             .allowOrigins("Allowed origin")
///                             .exposeHeaders("Exposed header")
///                             .maxAge(30)
///                             .disabled(false)
///                             .build())
///                         .faultInjectionPolicy(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs.builder()
///                             .abort(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs.builder()
///                                 .httpStatus(234)
///                                 .percentage(5.6)
///                                 .build())
///                             .delay(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs.builder()
///                                 .fixedDelay(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs.builder()
///                                     .seconds("0")
///                                     .nanos(50000)
///                                     .build())
///                                 .percentage(7.8)
///                                 .build())
///                             .build())
///                         .requestMirrorPolicy(RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs.builder()
///                             .backendService(home.id())
///                             .build())
///                         .retryPolicy(RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs.builder()
///                             .numRetries(4)
///                             .perTryTimeout(RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs.builder()
///                                 .seconds("30")
///                                 .build())
///                             .retryConditions(
///                                 "5xx",
///                                 "deadline-exceeded")
///                             .build())
///                         .timeout(RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs.builder()
///                             .seconds("20")
///                             .nanos(750000000)
///                             .build())
///                         .urlRewrite(RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs.builder()
///                             .hostRewrite("dev.example.com")
///                             .pathPrefixRewrite("/v1/api/")
///                             .build())
///                         .weightedBackendServices(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(home.id())
///                             .weight(400)
///                             .headerAction(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .requestHeadersToRemoves("RemoveMe")
///                                 .requestHeadersToAdds(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(true)
///                                     .build())
///                                 .responseHeadersToRemoves("RemoveMe")
///                                 .responseHeadersToAdds(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(false)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               routeAction:
///                 corsPolicy:
///                   allowCredentials: true
///                   allowHeaders:
///                     - Allowed content
///                   allowMethods:
///                     - GET
///                   allowOrigins:
///                     - Allowed origin
///                   exposeHeaders:
///                     - Exposed header
///                   maxAge: 30
///                   disabled: false
///                 faultInjectionPolicy:
///                   abort:
///                     httpStatus: 234
///                     percentage: 5.6
///                   delay:
///                     fixedDelay:
///                       seconds: 0
///                       nanos: 50000
///                     percentage: 7.8
///                 requestMirrorPolicy:
///                   backendService: ${home.id}
///                 retryPolicy:
///                   numRetries: 4
///                   perTryTimeout:
///                     seconds: 30
///                   retryConditions:
///                     - 5xx
///                     - deadline-exceeded
///                 timeout:
///                   seconds: 20
///                   nanos: 7.5e+08
///                 urlRewrite:
///                   hostRewrite: dev.example.com
///                   pathPrefixRewrite: /v1/api/
///                 weightedBackendServices:
///                   - backendService: ${home.id}
///                     weight: 400
///                     headerAction:
///                       requestHeadersToRemoves:
///                         - RemoveMe
///                       requestHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: true
///                       responseHeadersToRemoves:
///                         - RemoveMe
///                       responseHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: false
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: home
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map L7 Ilb Path Partial
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     name: "home",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [{
///             paths: ["/home"],
///             routeAction: {
///                 retryPolicy: {
///                     numRetries: 4,
///                     perTryTimeout: {
///                         seconds: "30",
///                     },
///                     retryConditions: [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 timeout: {
///                     seconds: "20",
///                     nanos: 750000000,
///                 },
///                 urlRewrite: {
///                     hostRewrite: "dev.example.com",
///                     pathPrefixRewrite: "/v1/api/",
///                 },
///                 weightedBackendServices: [{
///                     backendService: home.id,
///                     weight: 400,
///                     headerAction: {
///                         responseHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: false,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     name="home",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [{
///             "paths": ["/home"],
///             "route_action": {
///                 "retry_policy": {
///                     "num_retries": 4,
///                     "per_try_timeout": {
///                         "seconds": "30",
///                     },
///                     "retry_conditions": [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 "timeout": {
///                     "seconds": "20",
///                     "nanos": 750000000,
///                 },
///                 "url_rewrite": {
///                     "host_rewrite": "dev.example.com",
///                     "path_prefix_rewrite": "/v1/api/",
///                 },
///                 "weighted_backend_services": [{
///                     "backend_service": home.id,
///                     "weight": 400,
///                     "header_action": {
///                         "response_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": False,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Name = "home",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         RouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             RetryPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs
///                             {
///                                 NumRetries = 4,
///                                 PerTryTimeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs
///                                 {
///                                     Seconds = "30",
///                                 },
///                                 RetryConditions = new[]
///                                 {
///                                     "5xx",
///                                     "deadline-exceeded",
///                                 },
///                             },
///                             Timeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs
///                             {
///                                 Seconds = "20",
///                                 Nanos = 750000000,
///                             },
///                             UrlRewrite = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs
///                             {
///                                 HostRewrite = "dev.example.com",
///                                 PathPrefixRewrite = "/v1/api/",
///                             },
///                             WeightedBackendServices = new[]
///                             {
///                                 new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs
///                                 {
///                                     BackendService = home.Id,
///                                     Weight = 400,
///                                     HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs
///                                     {
///                                         ResponseHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = false,
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							RouteAction: &compute.RegionUrlMapPathMatcherPathRuleRouteActionArgs{
/// 								RetryPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs{
/// 									NumRetries: pulumi.Int(4),
/// 									PerTryTimeout: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs{
/// 										Seconds: pulumi.String("30"),
/// 									},
/// 									RetryConditions: pulumi.StringArray{
/// 										pulumi.String("5xx"),
/// 										pulumi.String("deadline-exceeded"),
/// 									},
/// 								},
/// 								Timeout: &compute.RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs{
/// 									Seconds: pulumi.String("20"),
/// 									Nanos:   pulumi.Int(750000000),
/// 								},
/// 								UrlRewrite: &compute.RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs{
/// 									HostRewrite:       pulumi.String("dev.example.com"),
/// 									PathPrefixRewrite: pulumi.String("/v1/api/"),
/// 								},
/// 								WeightedBackendServices: compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArray{
/// 									&compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs{
/// 										BackendService: home.ID(),
/// 										Weight:         pulumi.Int(400),
/// 										HeaderAction: &compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs{
/// 											ResponseHeadersToAdds: compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 												&compute.RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(false),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .name("home")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .routeAction(RegionUrlMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .retryPolicy(RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyArgs.builder()
///                             .numRetries(4)
///                             .perTryTimeout(RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs.builder()
///                                 .seconds("30")
///                                 .build())
///                             .retryConditions(
///                                 "5xx",
///                                 "deadline-exceeded")
///                             .build())
///                         .timeout(RegionUrlMapPathMatcherPathRuleRouteActionTimeoutArgs.builder()
///                             .seconds("20")
///                             .nanos(750000000)
///                             .build())
///                         .urlRewrite(RegionUrlMapPathMatcherPathRuleRouteActionUrlRewriteArgs.builder()
///                             .hostRewrite("dev.example.com")
///                             .pathPrefixRewrite("/v1/api/")
///                             .build())
///                         .weightedBackendServices(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(home.id())
///                             .weight(400)
///                             .headerAction(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .responseHeadersToAdds(RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(false)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               routeAction:
///                 retryPolicy:
///                   numRetries: 4
///                   perTryTimeout:
///                     seconds: 30
///                   retryConditions:
///                     - 5xx
///                     - deadline-exceeded
///                 timeout:
///                   seconds: 20
///                   nanos: 7.5e+08
///                 urlRewrite:
///                   hostRewrite: dev.example.com
///                   pathPrefixRewrite: /v1/api/
///                 weightedBackendServices:
///                   - backendService: ${home.id}
///                     weight: 400
///                     headerAction:
///                       responseHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: false
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: home
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map L7 Ilb Route
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     name: "home",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         routeRules: [{
///             priority: 1,
///             headerAction: {
///                 requestHeadersToRemoves: ["RemoveMe2"],
///                 requestHeadersToAdds: [{
///                     headerName: "AddSomethingElse",
///                     headerValue: "MyOtherValue",
///                     replace: true,
///                 }],
///                 responseHeadersToRemoves: ["RemoveMe3"],
///                 responseHeadersToAdds: [{
///                     headerName: "AddMe",
///                     headerValue: "MyValue",
///                     replace: false,
///                 }],
///             },
///             matchRules: [{
///                 fullPathMatch: "a full path",
///                 headerMatches: [{
///                     headerName: "someheader",
///                     exactMatch: "match this exactly",
///                     invertMatch: true,
///                 }],
///                 ignoreCase: true,
///                 metadataFilters: [{
///                     filterMatchCriteria: "MATCH_ANY",
///                     filterLabels: [{
///                         name: "PLANET",
///                         value: "MARS",
///                     }],
///                 }],
///                 queryParameterMatches: [{
///                     name: "a query parameter",
///                     presentMatch: true,
///                 }],
///             }],
///             urlRedirect: {
///                 hostRedirect: "A host",
///                 httpsRedirect: false,
///                 pathRedirect: "some/path",
///                 redirectResponseCode: "TEMPORARY_REDIRECT",
///                 stripQuery: true,
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     name="home",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "route_rules": [{
///             "priority": 1,
///             "header_action": {
///                 "request_headers_to_removes": ["RemoveMe2"],
///                 "request_headers_to_adds": [{
///                     "header_name": "AddSomethingElse",
///                     "header_value": "MyOtherValue",
///                     "replace": True,
///                 }],
///                 "response_headers_to_removes": ["RemoveMe3"],
///                 "response_headers_to_adds": [{
///                     "header_name": "AddMe",
///                     "header_value": "MyValue",
///                     "replace": False,
///                 }],
///             },
///             "match_rules": [{
///                 "full_path_match": "a full path",
///                 "header_matches": [{
///                     "header_name": "someheader",
///                     "exact_match": "match this exactly",
///                     "invert_match": True,
///                 }],
///                 "ignore_case": True,
///                 "metadata_filters": [{
///                     "filter_match_criteria": "MATCH_ANY",
///                     "filter_labels": [{
///                         "name": "PLANET",
///                         "value": "MARS",
///                     }],
///                 }],
///                 "query_parameter_matches": [{
///                     "name": "a query parameter",
///                     "present_match": True,
///                 }],
///             }],
///             "url_redirect": {
///                 "host_redirect": "A host",
///                 "https_redirect": False,
///                 "path_redirect": "some/path",
///                 "redirect_response_code": "TEMPORARY_REDIRECT",
///                 "strip_query": True,
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Name = "home",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleHeaderActionArgs
///                         {
///                             RequestHeadersToRemoves = new[]
///                             {
///                                 "RemoveMe2",
///                             },
///                             RequestHeadersToAdds = new[]
///                             {
///                                 new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs
///                                 {
///                                     HeaderName = "AddSomethingElse",
///                                     HeaderValue = "MyOtherValue",
///                                     Replace = true,
///                                 },
///                             },
///                             ResponseHeadersToRemoves = new[]
///                             {
///                                 "RemoveMe3",
///                             },
///                             ResponseHeadersToAdds = new[]
///                             {
///                                 new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs
///                                 {
///                                     HeaderName = "AddMe",
///                                     HeaderValue = "MyValue",
///                                     Replace = false,
///                                 },
///                             },
///                         },
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 FullPathMatch = "a full path",
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "someheader",
///                                         ExactMatch = "match this exactly",
///                                         InvertMatch = true,
///                                     },
///                                 },
///                                 IgnoreCase = true,
///                                 MetadataFilters = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs
///                                     {
///                                         FilterMatchCriteria = "MATCH_ANY",
///                                         FilterLabels = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs
///                                             {
///                                                 Name = "PLANET",
///                                                 Value = "MARS",
///                                             },
///                                         },
///                                     },
///                                 },
///                                 QueryParameterMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                     {
///                                         Name = "a query parameter",
///                                         PresentMatch = true,
///                                     },
///                                 },
///                             },
///                         },
///                         UrlRedirect = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleUrlRedirectArgs
///                         {
///                             HostRedirect = "A host",
///                             HttpsRedirect = false,
///                             PathRedirect = "some/path",
///                             RedirectResponseCode = "TEMPORARY_REDIRECT",
///                             StripQuery = true,
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					RouteRules: compute.RegionUrlMapPathMatcherRouteRuleArray{
/// 						&compute.RegionUrlMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							HeaderAction: &compute.RegionUrlMapPathMatcherRouteRuleHeaderActionArgs{
/// 								RequestHeadersToRemoves: pulumi.StringArray{
/// 									pulumi.String("RemoveMe2"),
/// 								},
/// 								RequestHeadersToAdds: compute.RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArray{
/// 									&compute.RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs{
/// 										HeaderName:  pulumi.String("AddSomethingElse"),
/// 										HeaderValue: pulumi.String("MyOtherValue"),
/// 										Replace:     pulumi.Bool(true),
/// 									},
/// 								},
/// 								ResponseHeadersToRemoves: pulumi.StringArray{
/// 									pulumi.String("RemoveMe3"),
/// 								},
/// 								ResponseHeadersToAdds: compute.RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArray{
/// 									&compute.RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs{
/// 										HeaderName:  pulumi.String("AddMe"),
/// 										HeaderValue: pulumi.String("MyValue"),
/// 										Replace:     pulumi.Bool(false),
/// 									},
/// 								},
/// 							},
/// 							MatchRules: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs{
/// 									FullPathMatch: pulumi.String("a full path"),
/// 									HeaderMatches: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName:  pulumi.String("someheader"),
/// 											ExactMatch:  pulumi.String("match this exactly"),
/// 											InvertMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 									IgnoreCase: pulumi.Bool(true),
/// 									MetadataFilters: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterArray{
/// 										&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs{
/// 											FilterMatchCriteria: pulumi.String("MATCH_ANY"),
/// 											FilterLabels: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArray{
/// 												&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs{
/// 													Name:  pulumi.String("PLANET"),
/// 													Value: pulumi.String("MARS"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 									QueryParameterMatches: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 										&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 											Name:         pulumi.String("a query parameter"),
/// 											PresentMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							UrlRedirect: &compute.RegionUrlMapPathMatcherRouteRuleUrlRedirectArgs{
/// 								HostRedirect:         pulumi.String("A host"),
/// 								HttpsRedirect:        pulumi.Bool(false),
/// 								PathRedirect:         pulumi.String("some/path"),
/// 								RedirectResponseCode: pulumi.String("TEMPORARY_REDIRECT"),
/// 								StripQuery:           pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .name("home")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .routeRules(RegionUrlMapPathMatcherRouteRuleArgs.builder()
///                     .priority(1)
///                     .headerAction(RegionUrlMapPathMatcherRouteRuleHeaderActionArgs.builder()
///                         .requestHeadersToRemoves("RemoveMe2")
///                         .requestHeadersToAdds(RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs.builder()
///                             .headerName("AddSomethingElse")
///                             .headerValue("MyOtherValue")
///                             .replace(true)
///                             .build())
///                         .responseHeadersToRemoves("RemoveMe3")
///                         .responseHeadersToAdds(RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs.builder()
///                             .headerName("AddMe")
///                             .headerValue("MyValue")
///                             .replace(false)
///                             .build())
///                         .build())
///                     .matchRules(RegionUrlMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                         .fullPathMatch("a full path")
///                         .headerMatches(RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                             .headerName("someheader")
///                             .exactMatch("match this exactly")
///                             .invertMatch(true)
///                             .build())
///                         .ignoreCase(true)
///                         .metadataFilters(RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs.builder()
///                             .filterMatchCriteria("MATCH_ANY")
///                             .filterLabels(RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs.builder()
///                                 .name("PLANET")
///                                 .value("MARS")
///                                 .build())
///                             .build())
///                         .queryParameterMatches(RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                             .name("a query parameter")
///                             .presentMatch(true)
///                             .build())
///                         .build())
///                     .urlRedirect(RegionUrlMapPathMatcherRouteRuleUrlRedirectArgs.builder()
///                         .hostRedirect("A host")
///                         .httpsRedirect(false)
///                         .pathRedirect("some/path")
///                         .redirectResponseCode("TEMPORARY_REDIRECT")
///                         .stripQuery(true)
///                         .build())
///                     .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           routeRules:
///             - priority: 1
///               headerAction:
///                 requestHeadersToRemoves:
///                   - RemoveMe2
///                 requestHeadersToAdds:
///                   - headerName: AddSomethingElse
///                     headerValue: MyOtherValue
///                     replace: true
///                 responseHeadersToRemoves:
///                   - RemoveMe3
///                 responseHeadersToAdds:
///                   - headerName: AddMe
///                     headerValue: MyValue
///                     replace: false
///               matchRules:
///                 - fullPathMatch: a full path
///                   headerMatches:
///                     - headerName: someheader
///                       exactMatch: match this exactly
///                       invertMatch: true
///                   ignoreCase: true
///                   metadataFilters:
///                     - filterMatchCriteria: MATCH_ANY
///                       filterLabels:
///                         - name: PLANET
///                           value: MARS
///                   queryParameterMatches:
///                     - name: a query parameter
///                       presentMatch: true
///               urlRedirect:
///                 hostRedirect: A host
///                 httpsRedirect: false
///                 pathRedirect: some/path
///                 redirectResponseCode: TEMPORARY_REDIRECT
///                 stripQuery: true
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: home
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map L7 Ilb Route Partial
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     name: "home",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         routeRules: [{
///             priority: 1,
///             service: home.id,
///             headerAction: {
///                 requestHeadersToRemoves: ["RemoveMe2"],
///             },
///             matchRules: [{
///                 fullPathMatch: "a full path",
///                 headerMatches: [{
///                     headerName: "someheader",
///                     exactMatch: "match this exactly",
///                     invertMatch: true,
///                 }],
///                 queryParameterMatches: [{
///                     name: "a query parameter",
///                     presentMatch: true,
///                 }],
///             }],
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     name="home",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "route_rules": [{
///             "priority": 1,
///             "service": home.id,
///             "header_action": {
///                 "request_headers_to_removes": ["RemoveMe2"],
///             },
///             "match_rules": [{
///                 "full_path_match": "a full path",
///                 "header_matches": [{
///                     "header_name": "someheader",
///                     "exact_match": "match this exactly",
///                     "invert_match": True,
///                 }],
///                 "query_parameter_matches": [{
///                     "name": "a query parameter",
///                     "present_match": True,
///                 }],
///             }],
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Name = "home",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         Service = home.Id,
///                         HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleHeaderActionArgs
///                         {
///                             RequestHeadersToRemoves = new[]
///                             {
///                                 "RemoveMe2",
///                             },
///                         },
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 FullPathMatch = "a full path",
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "someheader",
///                                         ExactMatch = "match this exactly",
///                                         InvertMatch = true,
///                                     },
///                                 },
///                                 QueryParameterMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                     {
///                                         Name = "a query parameter",
///                                         PresentMatch = true,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					RouteRules: compute.RegionUrlMapPathMatcherRouteRuleArray{
/// 						&compute.RegionUrlMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							Service:  home.ID(),
/// 							HeaderAction: &compute.RegionUrlMapPathMatcherRouteRuleHeaderActionArgs{
/// 								RequestHeadersToRemoves: pulumi.StringArray{
/// 									pulumi.String("RemoveMe2"),
/// 								},
/// 							},
/// 							MatchRules: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs{
/// 									FullPathMatch: pulumi.String("a full path"),
/// 									HeaderMatches: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName:  pulumi.String("someheader"),
/// 											ExactMatch:  pulumi.String("match this exactly"),
/// 											InvertMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 									QueryParameterMatches: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 										&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 											Name:         pulumi.String("a query parameter"),
/// 											PresentMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .name("home")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .routeRules(RegionUrlMapPathMatcherRouteRuleArgs.builder()
///                     .priority(1)
///                     .service(home.id())
///                     .headerAction(RegionUrlMapPathMatcherRouteRuleHeaderActionArgs.builder()
///                         .requestHeadersToRemoves("RemoveMe2")
///                         .build())
///                     .matchRules(RegionUrlMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                         .fullPathMatch("a full path")
///                         .headerMatches(RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                             .headerName("someheader")
///                             .exactMatch("match this exactly")
///                             .invertMatch(true)
///                             .build())
///                         .queryParameterMatches(RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                             .name("a query parameter")
///                             .presentMatch(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           routeRules:
///             - priority: 1
///               service: ${home.id}
///               headerAction:
///                 requestHeadersToRemoves:
///                   - RemoveMe2
///               matchRules:
///                 - fullPathMatch: a full path
///                   headerMatches:
///                     - headerName: someheader
///                       exactMatch: match this exactly
///                       invertMatch: true
///                   queryParameterMatches:
///                     - name: a query parameter
///                       presentMatch: true
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: home
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map Path Template Match
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     httpHealthCheck: {
///         port: 80,
///         requestPath: "/",
///     },
/// });
/// const home_backend = new gcp.compute.RegionBackendService("home-backend", {
///     region: "us-central1",
///     name: "home-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const cart_backend = new gcp.compute.RegionBackendService("cart-backend", {
///     region: "us-central1",
///     name: "cart-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const user_backend = new gcp.compute.RegionBackendService("user-backend", {
///     region: "us-central1",
///     name: "user-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const urlmap = new gcp.compute.RegionUrlMap("urlmap", {
///     region: "us-central1",
///     name: "urlmap",
///     description: "a description",
///     defaultService: home_backend.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "mysite",
///     }],
///     pathMatchers: [{
///         name: "mysite",
///         defaultService: home_backend.id,
///         routeRules: [
///             {
///                 matchRules: [{
///                     pathTemplateMatch: "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                 }],
///                 service: cart_backend.id,
///                 priority: 1,
///                 routeAction: {
///                     urlRewrite: {
///                         pathTemplateRewrite: "/{username}-{cartid}/",
///                     },
///                 },
///             },
///             {
///                 matchRules: [{
///                     pathTemplateMatch: "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                 }],
///                 service: user_backend.id,
///                 priority: 2,
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     http_health_check={
///         "port": 80,
///         "request_path": "/",
///     })
/// home_backend = gcp.compute.RegionBackendService("home-backend",
///     region="us-central1",
///     name="home-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// cart_backend = gcp.compute.RegionBackendService("cart-backend",
///     region="us-central1",
///     name="cart-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// user_backend = gcp.compute.RegionBackendService("user-backend",
///     region="us-central1",
///     name="user-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// urlmap = gcp.compute.RegionUrlMap("urlmap",
///     region="us-central1",
///     name="urlmap",
///     description="a description",
///     default_service=home_backend.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "mysite",
///     }],
///     path_matchers=[{
///         "name": "mysite",
///         "default_service": home_backend.id,
///         "route_rules": [
///             {
///                 "match_rules": [{
///                     "path_template_match": "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                 }],
///                 "service": cart_backend.id,
///                 "priority": 1,
///                 "route_action": {
///                     "url_rewrite": {
///                         "path_template_rewrite": "/{username}-{cartid}/",
///                     },
///                 },
///             },
///             {
///                 "match_rules": [{
///                     "path_template_match": "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                 }],
///                 "service": user_backend.id,
///                 "priority": 2,
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///             RequestPath = "/",
///         },
///     });
///
///     var home_backend = new Gcp.Compute.RegionBackendService("home-backend", new()
///     {
///         Region = "us-central1",
///         Name = "home-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var cart_backend = new Gcp.Compute.RegionBackendService("cart-backend", new()
///     {
///         Region = "us-central1",
///         Name = "cart-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var user_backend = new Gcp.Compute.RegionBackendService("user-backend", new()
///     {
///         Region = "us-central1",
///         Name = "user-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var urlmap = new Gcp.Compute.RegionUrlMap("urlmap", new()
///     {
///         Region = "us-central1",
///         Name = "urlmap",
///         Description = "a description",
///         DefaultService = home_backend.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "mysite",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherArgs
///             {
///                 Name = "mysite",
///                 DefaultService = home_backend.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleArgs
///                     {
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PathTemplateMatch = "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                             },
///                         },
///                         Service = cart_backend.Id,
///                         Priority = 1,
///                         RouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleRouteActionArgs
///                         {
///                             UrlRewrite = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteArgs
///                             {
///                                 PathTemplateRewrite = "/{username}-{cartid}/",
///                             },
///                         },
///                     },
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleArgs
///                     {
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PathTemplateMatch = "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                             },
///                         },
///                         Service = user_backend.Id,
///                         Priority = 2,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region:           pulumi.String("us-central1"),
/// 			Name:             pulumi.String("health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port:        pulumi.Int(80),
/// 				RequestPath: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home_backend, err := compute.NewRegionBackendService(ctx, "home-backend", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cart_backend, err := compute.NewRegionBackendService(ctx, "cart-backend", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("cart-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user_backend, err := compute.NewRegionBackendService(ctx, "user-backend", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("user-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "urlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home_backend.ID(),
/// 			HostRules: compute.RegionUrlMapHostRuleArray{
/// 				&compute.RegionUrlMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("mysite"),
/// 				},
/// 			},
/// 			PathMatchers: compute.RegionUrlMapPathMatcherArray{
/// 				&compute.RegionUrlMapPathMatcherArgs{
/// 					Name:           pulumi.String("mysite"),
/// 					DefaultService: home_backend.ID(),
/// 					RouteRules: compute.RegionUrlMapPathMatcherRouteRuleArray{
/// 						&compute.RegionUrlMapPathMatcherRouteRuleArgs{
/// 							MatchRules: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PathTemplateMatch: pulumi.String("/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}"),
/// 								},
/// 							},
/// 							Service:  cart_backend.ID(),
/// 							Priority: pulumi.Int(1),
/// 							RouteAction: &compute.RegionUrlMapPathMatcherRouteRuleRouteActionArgs{
/// 								UrlRewrite: &compute.RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteArgs{
/// 									PathTemplateRewrite: pulumi.String("/{username}-{cartid}/"),
/// 								},
/// 							},
/// 						},
/// 						&compute.RegionUrlMapPathMatcherRouteRuleArgs{
/// 							MatchRules: compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.RegionUrlMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PathTemplateMatch: pulumi.String("/xyzwebservices/v2/xyz/users/*/accountinfo/*"),
/// 								},
/// 							},
/// 							Service:  user_backend.ID(),
/// 							Priority: pulumi.Int(2),
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .requestPath("/")
///                 .build())
///             .build());
///
///         var home_backend = new RegionBackendService("home-backend", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var cart_backend = new RegionBackendService("cart-backend", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("cart-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var user_backend = new RegionBackendService("user-backend", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("user-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var urlmap = new RegionUrlMap("urlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("urlmap")
///             .description("a description")
///             .defaultService(home_backend.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("mysite")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("mysite")
///                 .defaultService(home_backend.id())
///                 .routeRules(
///                     RegionUrlMapPathMatcherRouteRuleArgs.builder()
///                         .matchRules(RegionUrlMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .pathTemplateMatch("/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}")
///                             .build())
///                         .service(cart_backend.id())
///                         .priority(1)
///                         .routeAction(RegionUrlMapPathMatcherRouteRuleRouteActionArgs.builder()
///                             .urlRewrite(RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteArgs.builder()
///                                 .pathTemplateRewrite("/{username}-{cartid}/")
///                                 .build())
///                             .build())
///                         .build(),
///                     RegionUrlMapPathMatcherRouteRuleArgs.builder()
///                         .matchRules(RegionUrlMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .pathTemplateMatch("/xyzwebservices/v2/xyz/users/*/accountinfo/*")
///                             .build())
///                         .service(user_backend.id())
///                         .priority(2)
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: urlmap
///       description: a description
///       defaultService: ${["home-backend"].id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: mysite
///       pathMatchers:
///         - name: mysite
///           defaultService: ${["home-backend"].id}
///           routeRules:
///             - matchRules:
///                 - pathTemplateMatch: /xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}
///               service: ${["cart-backend"].id}
///               priority: 1
///               routeAction:
///                 urlRewrite:
///                   pathTemplateRewrite: /{username}-{cartid}/
///             - matchRules:
///                 - pathTemplateMatch: /xyzwebservices/v2/xyz/users/*/accountinfo/*
///               service: ${["user-backend"].id}
///               priority: 2
///   home-backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   cart-backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: cart-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   user-backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: user-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       httpHealthCheck:
///         port: 80
///         requestPath: /
/// ```
///
/// ### Region Url Map Path Matcher Default Route Action
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     httpHealthCheck: {
///         port: 80,
///         requestPath: "/",
///     },
/// });
/// const login = new gcp.compute.RegionBackendService("login", {
///     region: "us-central1",
///     name: "login",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultRouteAction: {
///             corsPolicy: {
///                 disabled: false,
///                 allowCredentials: true,
///                 allowHeaders: ["foobar"],
///                 allowMethods: [
///                     "GET",
///                     "POST",
///                 ],
///                 allowOrigins: ["example.com"],
///                 exposeHeaders: ["foobar"],
///                 maxAge: 60,
///             },
///             faultInjectionPolicy: {
///                 abort: {
///                     httpStatus: 500,
///                     percentage: 0.5,
///                 },
///                 delay: {
///                     fixedDelay: {
///                         nanos: 500,
///                         seconds: "0",
///                     },
///                     percentage: 0.5,
///                 },
///             },
///             requestMirrorPolicy: {
///                 backendService: home.id,
///             },
///             retryPolicy: {
///                 numRetries: 3,
///                 perTryTimeout: {
///                     nanos: 500,
///                     seconds: "0",
///                 },
///                 retryConditions: [
///                     "5xx",
///                     "gateway-error",
///                 ],
///             },
///             timeout: {
///                 nanos: 500,
///                 seconds: "0",
///             },
///             urlRewrite: {
///                 hostRewrite: "dev.example.com",
///                 pathPrefixRewrite: "/v1/api/",
///             },
///             weightedBackendServices: [
///                 {
///                     backendService: home.id,
///                     headerAction: {
///                         requestHeadersToAdds: [
///                             {
///                                 headerName: "foo-request-1",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                             {
///                                 headerName: "foo-request-2",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                         ],
///                         requestHeadersToRemoves: ["fizz"],
///                         responseHeadersToAdds: [
///                             {
///                                 headerName: "foo-response-1",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                             {
///                                 headerName: "foo-response-2",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                         ],
///                         responseHeadersToRemoves: ["buzz"],
///                     },
///                     weight: 100,
///                 },
///                 {
///                     backendService: login.id,
///                     headerAction: {
///                         requestHeadersToAdds: [
///                             {
///                                 headerName: "foo-request-1",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                             {
///                                 headerName: "foo-request-2",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                         ],
///                         requestHeadersToRemoves: ["fizz"],
///                         responseHeadersToAdds: [
///                             {
///                                 headerName: "foo-response-1",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                             {
///                                 headerName: "foo-response-2",
///                                 headerValue: "bar",
///                                 replace: true,
///                             },
///                         ],
///                         responseHeadersToRemoves: ["buzz"],
///                     },
///                     weight: 200,
///                 },
///             ],
///         },
///         pathRules: [
///             {
///                 paths: ["/home"],
///                 service: home.id,
///             },
///             {
///                 paths: ["/login"],
///                 service: login.id,
///             },
///         ],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     http_health_check={
///         "port": 80,
///         "request_path": "/",
///     })
/// login = gcp.compute.RegionBackendService("login",
///     region="us-central1",
///     name="login",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     timeout_sec=10,
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_route_action": {
///             "cors_policy": {
///                 "disabled": False,
///                 "allow_credentials": True,
///                 "allow_headers": ["foobar"],
///                 "allow_methods": [
///                     "GET",
///                     "POST",
///                 ],
///                 "allow_origins": ["example.com"],
///                 "expose_headers": ["foobar"],
///                 "max_age": 60,
///             },
///             "fault_injection_policy": {
///                 "abort": {
///                     "http_status": 500,
///                     "percentage": 0.5,
///                 },
///                 "delay": {
///                     "fixed_delay": {
///                         "nanos": 500,
///                         "seconds": "0",
///                     },
///                     "percentage": 0.5,
///                 },
///             },
///             "request_mirror_policy": {
///                 "backend_service": home.id,
///             },
///             "retry_policy": {
///                 "num_retries": 3,
///                 "per_try_timeout": {
///                     "nanos": 500,
///                     "seconds": "0",
///                 },
///                 "retry_conditions": [
///                     "5xx",
///                     "gateway-error",
///                 ],
///             },
///             "timeout": {
///                 "nanos": 500,
///                 "seconds": "0",
///             },
///             "url_rewrite": {
///                 "host_rewrite": "dev.example.com",
///                 "path_prefix_rewrite": "/v1/api/",
///             },
///             "weighted_backend_services": [
///                 {
///                     "backend_service": home.id,
///                     "header_action": {
///                         "request_headers_to_adds": [
///                             {
///                                 "header_name": "foo-request-1",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                             {
///                                 "header_name": "foo-request-2",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                         ],
///                         "request_headers_to_removes": ["fizz"],
///                         "response_headers_to_adds": [
///                             {
///                                 "header_name": "foo-response-1",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                             {
///                                 "header_name": "foo-response-2",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                         ],
///                         "response_headers_to_removes": ["buzz"],
///                     },
///                     "weight": 100,
///                 },
///                 {
///                     "backend_service": login.id,
///                     "header_action": {
///                         "request_headers_to_adds": [
///                             {
///                                 "header_name": "foo-request-1",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                             {
///                                 "header_name": "foo-request-2",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                         ],
///                         "request_headers_to_removes": ["fizz"],
///                         "response_headers_to_adds": [
///                             {
///                                 "header_name": "foo-response-1",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                             {
///                                 "header_name": "foo-response-2",
///                                 "header_value": "bar",
///                                 "replace": True,
///                             },
///                         ],
///                         "response_headers_to_removes": ["buzz"],
///                     },
///                     "weight": 200,
///                 },
///             ],
///         },
///         "path_rules": [
///             {
///                 "paths": ["/home"],
///                 "service": home.id,
///             },
///             {
///                 "paths": ["/login"],
///                 "service": login.id,
///             },
///         ],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///             RequestPath = "/",
///         },
///     });
///
///     var login = new Gcp.Compute.RegionBackendService("login", new()
///     {
///         Region = "us-central1",
///         Name = "login",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "a description",
///         DefaultService = home.Id,
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
///                 DefaultRouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionArgs
///                 {
///                     CorsPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionCorsPolicyArgs
///                     {
///                         Disabled = false,
///                         AllowCredentials = true,
///                         AllowHeaders = new[]
///                         {
///                             "foobar",
///                         },
///                         AllowMethods = new[]
///                         {
///                             "GET",
///                             "POST",
///                         },
///                         AllowOrigins = new[]
///                         {
///                             "example.com",
///                         },
///                         ExposeHeaders = new[]
///                         {
///                             "foobar",
///                         },
///                         MaxAge = 60,
///                     },
///                     FaultInjectionPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyArgs
///                     {
///                         Abort = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbortArgs
///                         {
///                             HttpStatus = 500,
///                             Percentage = 0.5,
///                         },
///                         Delay = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayArgs
///                         {
///                             FixedDelay = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs
///                             {
///                                 Nanos = 500,
///                                 Seconds = "0",
///                             },
///                             Percentage = 0.5,
///                         },
///                     },
///                     RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs
///                     {
///                         BackendService = home.Id,
///                     },
///                     RetryPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyArgs
///                     {
///                         NumRetries = 3,
///                         PerTryTimeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeoutArgs
///                         {
///                             Nanos = 500,
///                             Seconds = "0",
///                         },
///                         RetryConditions = new[]
///                         {
///                             "5xx",
///                             "gateway-error",
///                         },
///                     },
///                     Timeout = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionTimeoutArgs
///                     {
///                         Nanos = 500,
///                         Seconds = "0",
///                     },
///                     UrlRewrite = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionUrlRewriteArgs
///                     {
///                         HostRewrite = "dev.example.com",
///                         PathPrefixRewrite = "/v1/api/",
///                     },
///                     WeightedBackendServices = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs
///                         {
///                             BackendService = home.Id,
///                             HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs
///                             {
///                                 RequestHeadersToAdds = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-request-1",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-request-2",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                 },
///                                 RequestHeadersToRemoves = new[]
///                                 {
///                                     "fizz",
///                                 },
///                                 ResponseHeadersToAdds = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-response-1",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-response-2",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                 },
///                                 ResponseHeadersToRemoves = new[]
///                                 {
///                                     "buzz",
///                                 },
///                             },
///                             Weight = 100,
///                         },
///                         new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs
///                         {
///                             BackendService = login.Id,
///                             HeaderAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs
///                             {
///                                 RequestHeadersToAdds = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-request-1",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-request-2",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                 },
///                                 RequestHeadersToRemoves = new[]
///                                 {
///                                     "fizz",
///                                 },
///                                 ResponseHeadersToAdds = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-response-1",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                     {
///                                         HeaderName = "foo-response-2",
///                                         HeaderValue = "bar",
///                                         Replace = true,
///                                     },
///                                 },
///                                 ResponseHeadersToRemoves = new[]
///                                 {
///                                     "buzz",
///                                 },
///                             },
///                             Weight = 200,
///                         },
///                     },
///                 },
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = home.Id,
///                     },
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/login",
///                         },
///                         Service = login.Id,
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.RegionUrlMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region:           pulumi.String("us-central1"),
/// 			Name:             pulumi.String("health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port:        pulumi.Int(80),
/// 				RequestPath: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		login, err := compute.NewRegionBackendService(ctx, "login", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("login"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
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
/// 					Name: pulumi.String("allpaths"),
/// 					DefaultRouteAction: &compute.RegionUrlMapPathMatcherDefaultRouteActionArgs{
/// 						CorsPolicy: &compute.RegionUrlMapPathMatcherDefaultRouteActionCorsPolicyArgs{
/// 							Disabled:         pulumi.Bool(false),
/// 							AllowCredentials: pulumi.Bool(true),
/// 							AllowHeaders: pulumi.StringArray{
/// 								pulumi.String("foobar"),
/// 							},
/// 							AllowMethods: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 								pulumi.String("POST"),
/// 							},
/// 							AllowOrigins: pulumi.StringArray{
/// 								pulumi.String("example.com"),
/// 							},
/// 							ExposeHeaders: pulumi.StringArray{
/// 								pulumi.String("foobar"),
/// 							},
/// 							MaxAge: pulumi.Int(60),
/// 						},
/// 						FaultInjectionPolicy: &compute.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyArgs{
/// 							Abort: &compute.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbortArgs{
/// 								HttpStatus: pulumi.Int(500),
/// 								Percentage: pulumi.Float64(0.5),
/// 							},
/// 							Delay: &compute.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayArgs{
/// 								FixedDelay: &compute.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs{
/// 									Nanos:   pulumi.Int(500),
/// 									Seconds: pulumi.String("0"),
/// 								},
/// 								Percentage: pulumi.Float64(0.5),
/// 							},
/// 						},
/// 						RequestMirrorPolicy: &compute.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs{
/// 							BackendService: home.ID(),
/// 						},
/// 						RetryPolicy: &compute.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyArgs{
/// 							NumRetries: pulumi.Int(3),
/// 							PerTryTimeout: &compute.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeoutArgs{
/// 								Nanos:   pulumi.Int(500),
/// 								Seconds: pulumi.String("0"),
/// 							},
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("5xx"),
/// 								pulumi.String("gateway-error"),
/// 							},
/// 						},
/// 						Timeout: &compute.RegionUrlMapPathMatcherDefaultRouteActionTimeoutArgs{
/// 							Nanos:   pulumi.Int(500),
/// 							Seconds: pulumi.String("0"),
/// 						},
/// 						UrlRewrite: &compute.RegionUrlMapPathMatcherDefaultRouteActionUrlRewriteArgs{
/// 							HostRewrite:       pulumi.String("dev.example.com"),
/// 							PathPrefixRewrite: pulumi.String("/v1/api/"),
/// 						},
/// 						WeightedBackendServices: compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArray{
/// 							&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs{
/// 								BackendService: home.ID(),
/// 								HeaderAction: &compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs{
/// 									RequestHeadersToAdds: compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-request-1"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-request-2"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 									},
/// 									RequestHeadersToRemoves: pulumi.StringArray{
/// 										pulumi.String("fizz"),
/// 									},
/// 									ResponseHeadersToAdds: compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-response-1"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-response-2"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 									},
/// 									ResponseHeadersToRemoves: pulumi.StringArray{
/// 										pulumi.String("buzz"),
/// 									},
/// 								},
/// 								Weight: pulumi.Int(100),
/// 							},
/// 							&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs{
/// 								BackendService: login.ID(),
/// 								HeaderAction: &compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs{
/// 									RequestHeadersToAdds: compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-request-1"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-request-2"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 									},
/// 									RequestHeadersToRemoves: pulumi.StringArray{
/// 										pulumi.String("fizz"),
/// 									},
/// 									ResponseHeadersToAdds: compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-response-1"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 										&compute.RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 											HeaderName:  pulumi.String("foo-response-2"),
/// 											HeaderValue: pulumi.String("bar"),
/// 											Replace:     pulumi.Bool(true),
/// 										},
/// 									},
/// 									ResponseHeadersToRemoves: pulumi.StringArray{
/// 										pulumi.String("buzz"),
/// 									},
/// 								},
/// 								Weight: pulumi.Int(200),
/// 							},
/// 						},
/// 					},
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: home.ID(),
/// 						},
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/login"),
/// 							},
/// 							Service: login.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.RegionUrlMapTestArray{
/// 				&compute.RegionUrlMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionCorsPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbortArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeoutArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionTimeoutArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionUrlRewriteArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapTestArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .requestPath("/")
///                 .build())
///             .build());
///
///         var login = new RegionBackendService("login", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("login")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultRouteAction(RegionUrlMapPathMatcherDefaultRouteActionArgs.builder()
///                     .corsPolicy(RegionUrlMapPathMatcherDefaultRouteActionCorsPolicyArgs.builder()
///                         .disabled(false)
///                         .allowCredentials(true)
///                         .allowHeaders("foobar")
///                         .allowMethods(
///                             "GET",
///                             "POST")
///                         .allowOrigins("example.com")
///                         .exposeHeaders("foobar")
///                         .maxAge(60)
///                         .build())
///                     .faultInjectionPolicy(RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyArgs.builder()
///                         .abort(RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbortArgs.builder()
///                             .httpStatus(500)
///                             .percentage(0.5)
///                             .build())
///                         .delay(RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayArgs.builder()
///                             .fixedDelay(RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelayArgs.builder()
///                                 .nanos(500)
///                                 .seconds("0")
///                                 .build())
///                             .percentage(0.5)
///                             .build())
///                         .build())
///                     .requestMirrorPolicy(RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                         .backendService(home.id())
///                         .build())
///                     .retryPolicy(RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyArgs.builder()
///                         .numRetries(3)
///                         .perTryTimeout(RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeoutArgs.builder()
///                             .nanos(500)
///                             .seconds("0")
///                             .build())
///                         .retryConditions(
///                             "5xx",
///                             "gateway-error")
///                         .build())
///                     .timeout(RegionUrlMapPathMatcherDefaultRouteActionTimeoutArgs.builder()
///                         .nanos(500)
///                         .seconds("0")
///                         .build())
///                     .urlRewrite(RegionUrlMapPathMatcherDefaultRouteActionUrlRewriteArgs.builder()
///                         .hostRewrite("dev.example.com")
///                         .pathPrefixRewrite("/v1/api/")
///                         .build())
///                     .weightedBackendServices(
///                         RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(home.id())
///                             .headerAction(RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .requestHeadersToAdds(
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                         .headerName("foo-request-1")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build(),
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                         .headerName("foo-request-2")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build())
///                                 .requestHeadersToRemoves("fizz")
///                                 .responseHeadersToAdds(
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                         .headerName("foo-response-1")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build(),
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                         .headerName("foo-response-2")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build())
///                                 .responseHeadersToRemoves("buzz")
///                                 .build())
///                             .weight(100)
///                             .build(),
///                         RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(login.id())
///                             .headerAction(RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .requestHeadersToAdds(
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                         .headerName("foo-request-1")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build(),
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                         .headerName("foo-request-2")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build())
///                                 .requestHeadersToRemoves("fizz")
///                                 .responseHeadersToAdds(
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                         .headerName("foo-response-1")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build(),
///                                     RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                         .headerName("foo-response-2")
///                                         .headerValue("bar")
///                                         .replace(true)
///                                         .build())
///                                 .responseHeadersToRemoves("buzz")
///                                 .build())
///                             .weight(200)
///                             .build())
///                     .build())
///                 .pathRules(
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/home")
///                         .service(home.id())
///                         .build(),
///                     RegionUrlMapPathMatcherPathRuleArgs.builder()
///                         .paths("/login")
///                         .service(login.id())
///                         .build())
///                 .build())
///             .tests(RegionUrlMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultRouteAction:
///             corsPolicy:
///               disabled: false
///               allowCredentials: true
///               allowHeaders:
///                 - foobar
///               allowMethods:
///                 - GET
///                 - POST
///               allowOrigins:
///                 - example.com
///               exposeHeaders:
///                 - foobar
///               maxAge: 60
///             faultInjectionPolicy:
///               abort:
///                 httpStatus: 500
///                 percentage: 0.5
///               delay:
///                 fixedDelay:
///                   nanos: 500
///                   seconds: 0
///                 percentage: 0.5
///             requestMirrorPolicy:
///               backendService: ${home.id}
///             retryPolicy:
///               numRetries: 3
///               perTryTimeout:
///                 nanos: 500
///                 seconds: 0
///               retryConditions:
///                 - 5xx
///                 - gateway-error
///             timeout:
///               nanos: 500
///               seconds: 0
///             urlRewrite:
///               hostRewrite: dev.example.com
///               pathPrefixRewrite: /v1/api/
///             weightedBackendServices:
///               - backendService: ${home.id}
///                 headerAction:
///                   requestHeadersToAdds:
///                     - headerName: foo-request-1
///                       headerValue: bar
///                       replace: true
///                     - headerName: foo-request-2
///                       headerValue: bar
///                       replace: true
///                   requestHeadersToRemoves:
///                     - fizz
///                   responseHeadersToAdds:
///                     - headerName: foo-response-1
///                       headerValue: bar
///                       replace: true
///                     - headerName: foo-response-2
///                       headerValue: bar
///                       replace: true
///                   responseHeadersToRemoves:
///                     - buzz
///                 weight: 100
///               - backendService: ${login.id}
///                 headerAction:
///                   requestHeadersToAdds:
///                     - headerName: foo-request-1
///                       headerValue: bar
///                       replace: true
///                     - headerName: foo-request-2
///                       headerValue: bar
///                       replace: true
///                   requestHeadersToRemoves:
///                     - fizz
///                   responseHeadersToAdds:
///                     - headerName: foo-response-1
///                       headerValue: bar
///                       replace: true
///                     - headerName: foo-response-2
///                       headerValue: bar
///                       replace: true
///                   responseHeadersToRemoves:
///                     - buzz
///                 weight: 200
///           pathRules:
///             - paths:
///                 - /home
///               service: ${home.id}
///             - paths:
///                 - /login
///               service: ${login.id}
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   login:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: login
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       httpHealthCheck:
///         port: 80
///         requestPath: /
/// ```
///
/// ### Region Url Map Default Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.RegionBackendService("mirror", {
///     region: "us-central1",
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "Test for default route action mirror percent",
///     defaultService: home.id,
///     defaultRouteAction: {
///         requestMirrorPolicy: {
///             backendService: mirror.id,
///             mirrorPercent: 50,
///         },
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.RegionBackendService("mirror",
///     region="us-central1",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="Test for default route action mirror percent",
///     default_service=home.id,
///     default_route_action={
///         "request_mirror_policy": {
///             "backend_service": mirror.id,
///             "mirror_percent": 50,
///         },
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.RegionBackendService("mirror", new()
///     {
///         Region = "us-central1",
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "Test for default route action mirror percent",
///         DefaultService = home.Id,
///         DefaultRouteAction = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionArgs
///         {
///             RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs
///             {
///                 BackendService = mirror.Id,
///                 MirrorPercent = 50,
///             },
///         },
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
///                 DefaultService = home.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewRegionBackendService(ctx, "mirror", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("Test for default route action mirror percent"),
/// 			DefaultService: home.ID(),
/// 			DefaultRouteAction: &compute.RegionUrlMapDefaultRouteActionArgs{
/// 				RequestMirrorPolicy: &compute.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs{
/// 					BackendService: mirror.ID(),
/// 					MirrorPercent:  pulumi.Float64(50),
/// 				},
/// 			},
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
/// 					DefaultService: home.ID(),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new RegionBackendService("mirror", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("Test for default route action mirror percent")
///             .defaultService(home.id())
///             .defaultRouteAction(RegionUrlMapDefaultRouteActionArgs.builder()
///                 .requestMirrorPolicy(RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                     .backendService(mirror.id())
///                     .mirrorPercent(50.0)
///                     .build())
///                 .build())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: Test for default route action mirror percent
///       defaultService: ${home.id}
///       defaultRouteAction:
///         requestMirrorPolicy:
///           backendService: ${mirror.id}
///           mirrorPercent: 50
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map Path Matcher Default Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.RegionBackendService("mirror", {
///     region: "us-central1",
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "Test for default route action mirror percent",
///     defaultService: home.id,
///     defaultRouteAction: {
///         requestMirrorPolicy: {
///             backendService: mirror.id,
///             mirrorPercent: 50,
///         },
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.RegionBackendService("mirror",
///     region="us-central1",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="Test for default route action mirror percent",
///     default_service=home.id,
///     default_route_action={
///         "request_mirror_policy": {
///             "backend_service": mirror.id,
///             "mirror_percent": 50,
///         },
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.RegionBackendService("mirror", new()
///     {
///         Region = "us-central1",
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "Test for default route action mirror percent",
///         DefaultService = home.Id,
///         DefaultRouteAction = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionArgs
///         {
///             RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs
///             {
///                 BackendService = mirror.Id,
///                 MirrorPercent = 50,
///             },
///         },
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
///                 DefaultService = home.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewRegionBackendService(ctx, "mirror", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("Test for default route action mirror percent"),
/// 			DefaultService: home.ID(),
/// 			DefaultRouteAction: &compute.RegionUrlMapDefaultRouteActionArgs{
/// 				RequestMirrorPolicy: &compute.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs{
/// 					BackendService: mirror.ID(),
/// 					MirrorPercent:  pulumi.Float64(50),
/// 				},
/// 			},
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
/// 					DefaultService: home.ID(),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionUrlMap;
/// import com.pulumi.gcp.compute.RegionUrlMapArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new RegionBackendService("mirror", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("Test for default route action mirror percent")
///             .defaultService(home.id())
///             .defaultRouteAction(RegionUrlMapDefaultRouteActionArgs.builder()
///                 .requestMirrorPolicy(RegionUrlMapDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                     .backendService(mirror.id())
///                     .mirrorPercent(50.0)
///                     .build())
///                 .build())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: Test for default route action mirror percent
///       defaultService: ${home.id}
///       defaultRouteAction:
///         requestMirrorPolicy:
///           backendService: ${mirror.id}
///           mirrorPercent: 50
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map Path Rule Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.RegionBackendService("mirror", {
///     region: "us-central1",
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "Test for path matcher default route action mirror percent",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         defaultRouteAction: {
///             requestMirrorPolicy: {
///                 backendService: mirror.id,
///                 mirrorPercent: 75,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.RegionBackendService("mirror",
///     region="us-central1",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="Test for path matcher default route action mirror percent",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "default_route_action": {
///             "request_mirror_policy": {
///                 "backend_service": mirror.id,
///                 "mirror_percent": 75,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.RegionBackendService("mirror", new()
///     {
///         Region = "us-central1",
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "Test for path matcher default route action mirror percent",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 DefaultRouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionArgs
///                 {
///                     RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs
///                     {
///                         BackendService = mirror.Id,
///                         MirrorPercent = 75,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewRegionBackendService(ctx, "mirror", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("Test for path matcher default route action mirror percent"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					DefaultRouteAction: &compute.RegionUrlMapPathMatcherDefaultRouteActionArgs{
/// 						RequestMirrorPolicy: &compute.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs{
/// 							BackendService: mirror.ID(),
/// 							MirrorPercent:  pulumi.Float64(75),
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
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs;
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new RegionBackendService("mirror", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("Test for path matcher default route action mirror percent")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .defaultRouteAction(RegionUrlMapPathMatcherDefaultRouteActionArgs.builder()
///                     .requestMirrorPolicy(RegionUrlMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                         .backendService(mirror.id())
///                         .mirrorPercent(75.0)
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
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: Test for path matcher default route action mirror percent
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           defaultRouteAction:
///             requestMirrorPolicy:
///               backendService: ${mirror.id}
///               mirrorPercent: 75
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Url Map Route Rule Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.RegionBackendService("home", {
///     region: "us-central1",
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.RegionBackendService("mirror", {
///     region: "us-central1",
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const regionurlmap = new gcp.compute.RegionUrlMap("regionurlmap", {
///     region: "us-central1",
///     name: "regionurlmap",
///     description: "Test for path rule route action mirror percent",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [{
///             paths: ["/home"],
///             service: home.id,
///             routeAction: {
///                 requestMirrorPolicy: {
///                     backendService: mirror.id,
///                     mirrorPercent: 25,
///                 },
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.RegionBackendService("home",
///     region="us-central1",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.RegionBackendService("mirror",
///     region="us-central1",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=default.id)
/// regionurlmap = gcp.compute.RegionUrlMap("regionurlmap",
///     region="us-central1",
///     name="regionurlmap",
///     description="Test for path rule route action mirror percent",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [{
///             "paths": ["/home"],
///             "service": home.id,
///             "route_action": {
///                 "request_mirror_policy": {
///                     "backend_service": mirror.id,
///                     "mirror_percent": 25,
///                 },
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.RegionBackendService("home", new()
///     {
///         Region = "us-central1",
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.RegionBackendService("mirror", new()
///     {
///         Region = "us-central1",
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var regionurlmap = new Gcp.Compute.RegionUrlMap("regionurlmap", new()
///     {
///         Region = "us-central1",
///         Name = "regionurlmap",
///         Description = "Test for path rule route action mirror percent",
///         DefaultService = home.Id,
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
///                 DefaultService = home.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = home.Id,
///                         RouteAction = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             RequestMirrorPolicy = new Gcp.Compute.Inputs.RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs
///                             {
///                                 BackendService = mirror.Id,
///                                 MirrorPercent = 25,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewRegionBackendService(ctx, "home", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewRegionBackendService(ctx, "mirror", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionUrlMap(ctx, "regionurlmap", &compute.RegionUrlMapArgs{
/// 			Region:         pulumi.String("us-central1"),
/// 			Name:           pulumi.String("regionurlmap"),
/// 			Description:    pulumi.String("Test for path rule route action mirror percent"),
/// 			DefaultService: home.ID(),
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
/// 					DefaultService: home.ID(),
/// 					PathRules: compute.RegionUrlMapPathMatcherPathRuleArray{
/// 						&compute.RegionUrlMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: home.ID(),
/// 							RouteAction: &compute.RegionUrlMapPathMatcherPathRuleRouteActionArgs{
/// 								RequestMirrorPolicy: &compute.RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs{
/// 									BackendService: mirror.ID(),
/// 									MirrorPercent:  pulumi.Float64(25),
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
///         var default_ = new RegionHealthCheck("default", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new RegionBackendService("home", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new RegionBackendService("mirror", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var regionurlmap = new RegionUrlMap("regionurlmap", RegionUrlMapArgs.builder()
///             .region("us-central1")
///             .name("regionurlmap")
///             .description("Test for path rule route action mirror percent")
///             .defaultService(home.id())
///             .hostRules(RegionUrlMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(RegionUrlMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(RegionUrlMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .service(home.id())
///                     .routeAction(RegionUrlMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .requestMirrorPolicy(RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs.builder()
///                             .backendService(mirror.id())
///                             .mirrorPercent(25.0)
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
///   regionurlmap:
///     type: gcp:compute:RegionUrlMap
///     properties:
///       region: us-central1
///       name: regionurlmap
///       description: Test for path rule route action mirror percent
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               service: ${home.id}
///               routeAction:
///                 requestMirrorPolicy:
///                   backendService: ${mirror.id}
///                   mirrorPercent: 25
///   home:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       region: us-central1
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
///
/// ## Import
///
/// RegionUrlMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/urlMaps/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionUrlMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default projects/{{project}}/regions/{{region}}/urlMaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{name}}
/// ```
class RegionUrlMap extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// URL maps for Classic external HTTP(S) load balancers only support the urlRewrite action within defaultRouteAction.
  /// defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// Structure is documented below.
  late final pulumi.Output<RegionUrlMapDefaultRouteAction?> defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if
  /// none of the hostRules match. If defaultRouteAction is additionally specified, advanced
  /// routing actions like URL Rewrites, etc. take effect prior to sending the request to the
  /// backend. However, if defaultService is specified, defaultRouteAction cannot contain any
  /// weightedBackendServices. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified.  Only one of defaultService,
  /// defaultUrlRedirect or defaultRouteAction.weightedBackendService must be set.
  late final pulumi.Output<String?> defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionUrlMapDefaultUrlRedirect?> defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  late final pulumi.Output<RegionUrlMapHeaderAction?> headerAction;

  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> hostRules;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> mapId;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> pathMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the url map should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The list of expected URL mappings. Requests to update this UrlMap will
  /// succeed only if all of the test cases pass.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> tests;

  /// Creates a new [RegionUrlMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionUrlMap]. {@macro pulumi_compute_region_url_map_region_url_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionUrlMap(
    String name, {
    RegionUrlMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionUrlMap:RegionUrlMap',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    defaultRouteAction = registerOutput<RegionUrlMapDefaultRouteAction?>(
      'defaultRouteAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapDefaultRouteAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultService = registerOutput<String?>('defaultService');
    defaultUrlRedirect = registerOutput<RegionUrlMapDefaultUrlRedirect?>(
      'defaultUrlRedirect',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapDefaultUrlRedirect.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    headerAction = registerOutput<RegionUrlMapHeaderAction?>(
      'headerAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapHeaderAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hostRules = registerOutput<List<Map<String, dynamic>>?>('hostRules');
    mapId = registerOutput<int>('mapId');
    this.name = registerOutput<String>('name');
    pathMatchers = registerOutput<List<Map<String, dynamic>>?>('pathMatchers');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    tests = registerOutput<List<Map<String, dynamic>>?>('tests');
  }

  /// Gets an existing [RegionUrlMap] resource's state with the given [name] and [id].
  static RegionUrlMap get(
    String name,
    pulumi.Input<String> id, {
    RegionUrlMapState? state,
  }) {
    return RegionUrlMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionUrlMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionUrlMap:RegionUrlMap',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    defaultRouteAction = registerOutput<RegionUrlMapDefaultRouteAction?>(
      'defaultRouteAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapDefaultRouteAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultService = registerOutput<String?>('defaultService');
    defaultUrlRedirect = registerOutput<RegionUrlMapDefaultUrlRedirect?>(
      'defaultUrlRedirect',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapDefaultUrlRedirect.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    headerAction = registerOutput<RegionUrlMapHeaderAction?>(
      'headerAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionUrlMapHeaderAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hostRules = registerOutput<List<Map<String, dynamic>>?>('hostRules');
    mapId = registerOutput<int>('mapId');
    this.name = registerOutput<String>('name');
    pathMatchers = registerOutput<List<Map<String, dynamic>>?>('pathMatchers');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    tests = registerOutput<List<Map<String, dynamic>>?>('tests');
  }
}
