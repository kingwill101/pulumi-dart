import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_http_proxy_args.dart';
import 'target_http_proxy_state.dart';

/// Represents a TargetHttpProxy resource, which is used by one or more global
/// forwarding rule to route incoming HTTP requests to a URL map.
///
///
/// To get more information about TargetHttpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetHttpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Target Http Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "http-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     defaultService: defaultBackendService.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultBackendService.id,
///         }],
///     }],
/// });
/// const _default = new gcp.compute.TargetHttpProxy("default", {
///     name: "test-proxy",
///     urlMap: defaultURLMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="http-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     default_service=default_backend_service.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_backend_service.id,
///         }],
///     }])
/// default = gcp.compute.TargetHttpProxy("default",
///     name="test-proxy",
///     url_map=default_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "http-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         DefaultService = defaultBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
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
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetHttpProxy("default", new()
///     {
///         Name = "test-proxy",
///         UrlMap = defaultURLMap.Id,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			DefaultService: defaultBackendService.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultBackendService.ID(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// 			Name:   pulumi.String("test-proxy"),
/// 			UrlMap: defaultURLMap.ID(),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("http-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .defaultService(defaultBackendService.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultBackendService.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new TargetHttpProxy("default", TargetHttpProxyArgs.builder()
///             .name("test-proxy")
///             .urlMap(defaultURLMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpProxy
///     properties:
///       name: test-proxy
///       urlMap: ${defaultURLMap.id}
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       defaultService: ${defaultBackendService.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: http-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Target Http Proxy Http Keep Alive Timeout
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "http-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     defaultService: defaultBackendService.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultBackendService.id,
///         }],
///     }],
/// });
/// const _default = new gcp.compute.TargetHttpProxy("default", {
///     name: "test-http-keep-alive-timeout-proxy",
///     httpKeepAliveTimeoutSec: 610,
///     urlMap: defaultURLMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="http-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default_http_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     default_service=default_backend_service.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_backend_service.id,
///         }],
///     }])
/// default = gcp.compute.TargetHttpProxy("default",
///     name="test-http-keep-alive-timeout-proxy",
///     http_keep_alive_timeout_sec=610,
///     url_map=default_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "http-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         DefaultService = defaultBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
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
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetHttpProxy("default", new()
///     {
///         Name = "test-http-keep-alive-timeout-proxy",
///         HttpKeepAliveTimeoutSec = 610,
///         UrlMap = defaultURLMap.Id,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			DefaultService: defaultBackendService.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultBackendService.ID(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// 			Name:                    pulumi.String("test-http-keep-alive-timeout-proxy"),
/// 			HttpKeepAliveTimeoutSec: pulumi.Int(610),
/// 			UrlMap:                  defaultURLMap.ID(),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("http-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .defaultService(defaultBackendService.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultBackendService.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new TargetHttpProxy("default", TargetHttpProxyArgs.builder()
///             .name("test-http-keep-alive-timeout-proxy")
///             .httpKeepAliveTimeoutSec(610)
///             .urlMap(defaultURLMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpProxy
///     properties:
///       name: test-http-keep-alive-timeout-proxy
///       httpKeepAliveTimeoutSec: 610
///       urlMap: ${defaultURLMap.id}
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       defaultService: ${defaultBackendService.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: http-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Target Http Proxy Https Redirect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     defaultUrlRedirect: {
///         httpsRedirect: true,
///         stripQuery: false,
///     },
/// });
/// const _default = new gcp.compute.TargetHttpProxy("default", {
///     name: "test-https-redirect-proxy",
///     urlMap: defaultURLMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     default_url_redirect={
///         "https_redirect": True,
///         "strip_query": False,
///     })
/// default = gcp.compute.TargetHttpProxy("default",
///     name="test-https-redirect-proxy",
///     url_map=default_url_map.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         DefaultUrlRedirect = new Gcp.Compute.Inputs.URLMapDefaultUrlRedirectArgs
///         {
///             HttpsRedirect = true,
///             StripQuery = false,
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetHttpProxy("default", new()
///     {
///         Name = "test-https-redirect-proxy",
///         UrlMap = defaultURLMap.Id,
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
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name: pulumi.String("url-map"),
/// 			DefaultUrlRedirect: &compute.URLMapDefaultUrlRedirectArgs{
/// 				HttpsRedirect: pulumi.Bool(true),
/// 				StripQuery:    pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// 			Name:   pulumi.String("test-https-redirect-proxy"),
/// 			UrlMap: defaultURLMap.ID(),
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
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultUrlRedirectArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
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
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .defaultUrlRedirect(URLMapDefaultUrlRedirectArgs.builder()
///                 .httpsRedirect(true)
///                 .stripQuery(false)
///                 .build())
///             .build());
///
///         var default_ = new TargetHttpProxy("default", TargetHttpProxyArgs.builder()
///             .name("test-https-redirect-proxy")
///             .urlMap(defaultURLMap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpProxy
///     properties:
///       name: test-https-redirect-proxy
///       urlMap: ${defaultURLMap.id}
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       defaultUrlRedirect:
///         httpsRedirect: true
///         stripQuery: false
/// ```
///
/// ### Target Http Proxy Fingerprint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "http-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     defaultService: defaultBackendService.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultBackendService.id,
///         }],
///     }],
/// });
/// const _default = new gcp.compute.TargetHttpProxy("default", {
///     name: "test-fingerprint-proxy",
///     urlMap: defaultURLMap.id,
/// });
/// export const targetHttpProxyFingerprint = _default.fingerprint;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="http-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     default_service=default_backend_service.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_backend_service.id,
///         }],
///     }])
/// default = gcp.compute.TargetHttpProxy("default",
///     name="test-fingerprint-proxy",
///     url_map=default_url_map.id)
/// pulumi.export("targetHttpProxyFingerprint", default.fingerprint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "http-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         DefaultService = defaultBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
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
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetHttpProxy("default", new()
///     {
///         Name = "test-fingerprint-proxy",
///         UrlMap = defaultURLMap.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["targetHttpProxyFingerprint"] = @default.Fingerprint,
///     };
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			DefaultService: defaultBackendService.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultBackendService.ID(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewTargetHttpProxy(ctx, "default", &compute.TargetHttpProxyArgs{
/// 			Name:   pulumi.String("test-fingerprint-proxy"),
/// 			UrlMap: defaultURLMap.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("targetHttpProxyFingerprint", _default.Fingerprint)
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("http-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .defaultService(defaultBackendService.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultBackendService.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new TargetHttpProxy("default", TargetHttpProxyArgs.builder()
///             .name("test-fingerprint-proxy")
///             .urlMap(defaultURLMap.id())
///             .build());
///
///         ctx.export("targetHttpProxyFingerprint", default_.fingerprint());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpProxy
///     properties:
///       name: test-fingerprint-proxy
///       urlMap: ${defaultURLMap.id}
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       defaultService: ${defaultBackendService.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: http-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// outputs:
///   targetHttpProxyFingerprint: ${default.fingerprint}
/// ```
///
///
/// ## Import
///
/// TargetHttpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetHttpProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetHttpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default projects/{{project}}/global/targetHttpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default {{name}}
/// ```
class TargetHttpProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking.
  /// This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to
  /// patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet.
  /// To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  /// A base64-encoded string.
  late final pulumi.Output<String> fingerprint;
  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value will be used. For Global
  /// external HTTP(S) load balancer, the default value is 610 seconds, the
  /// minimum allowed value is 5 seconds and the maximum allowed value is 1200
  /// seconds. For cross-region internal HTTP(S) load balancer, the default
  /// value is 600 seconds, the minimum allowed value is 5 seconds, and the
  /// maximum allowed value is 600 seconds. For Global external HTTP(S) load
  /// balancer (classic), this option is not available publicly.
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
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<bool> proxyBind;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  late final pulumi.Output<String> urlMap;

  /// Creates a new [TargetHttpProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetHttpProxy]. {@macro pulumi_compute_target_http_proxy_target_http_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetHttpProxy(
    String name, {
    TargetHttpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetHttpProxy:TargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyId = registerOutput<int>('proxyId');
    this.selfLink = registerOutput<String>('selfLink');
    this.urlMap = registerOutput<String>('urlMap');
  }

  /// Gets an existing [TargetHttpProxy] resource's state with the given [name] and [id].
  static TargetHttpProxy get(
    String name,
    pulumi.Input<String> id, {
    TargetHttpProxyState? state,
  }) {
    return TargetHttpProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetHttpProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetHttpProxy:TargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyId = registerOutput<int>('proxyId');
    this.selfLink = registerOutput<String>('selfLink');
    this.urlMap = registerOutput<String>('urlMap');
  }
}
