import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_https_proxy_args.dart';
import 'target_https_proxy_state.dart';

/// Represents a TargetHttpsProxy resource, which is used by one or more
/// global forwarding rule to route incoming HTTPS requests to a URL map.
///
///
/// To get more information about TargetHttpsProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetHttpsProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Target Https Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultSSLCertificate = new gcp.compute.SSLCertificate("default", {
///     name: "my-certificate",
///     privateKey: std.file({
///         input: "path/to/private.key",
///     }).then(invoke => invoke.result),
///     certificate: std.file({
///         input: "path/to/certificate.crt",
///     }).then(invoke => invoke.result),
/// });
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
///     description: "a description",
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
/// const _default = new gcp.compute.TargetHttpsProxy("default", {
///     name: "test-proxy",
///     urlMap: defaultURLMap.id,
///     sslCertificates: [defaultSSLCertificate.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_ssl_certificate = gcp.compute.SSLCertificate("default",
///     name="my-certificate",
///     private_key=std.file(input="path/to/private.key").result,
///     certificate=std.file(input="path/to/certificate.crt").result)
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
///     description="a description",
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
/// default = gcp.compute.TargetHttpsProxy("default",
///     name="test-proxy",
///     url_map=default_url_map.id,
///     ssl_certificates=[default_ssl_certificate.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSSLCertificate = new Gcp.Compute.SSLCertificate("default", new()
///     {
///         Name = "my-certificate",
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "path/to/private.key",
///         }).Apply(invoke => invoke.Result),
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "path/to/certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
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
///         Description = "a description",
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
///     var @default = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "test-proxy",
///         UrlMap = defaultURLMap.Id,
///         SslCertificates = new[]
///         {
///             defaultSSLCertificate.Id,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/private.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSSLCertificate, err := compute.NewSSLCertificate(ctx, "default", &compute.SSLCertificateArgs{
/// 			Name:        pulumi.String("my-certificate"),
/// 			PrivateKey:  pulumi.String(invokeFile.Result),
/// 			Certificate: pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			HealthChecks: defaultHttpHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:   pulumi.String("test-proxy"),
/// 			UrlMap: defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID().ToIDOutput().ToStringOutput(),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name             = "test-proxy"
///   url_map          = gcp_compute_urlmap.default.id
///   ssl_certificates = [gcp_compute_sslcertificate.default.id]
/// }
/// resource "gcp_compute_sslcertificate" "default" {
///   name        = "my-certificate"
///   private_key = file("path/to/private.key")
///   certificate = file("path/to/certificate.crt")
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   port_name     = "http"
///   protocol      = "HTTP"
///   timeout_sec   = 10
///   health_checks = gcp_compute_httphealthcheck.default.id
/// }
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "http-health-check"
///   request_path       = "/"
///   check_interval_sec = 1
///   timeout_sec        = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SSLCertificate;
/// import com.pulumi.gcp.compute.SSLCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
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
///         var defaultSSLCertificate = new SSLCertificate("defaultSSLCertificate", SSLCertificateArgs.builder()
///             .name("my-certificate")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/private.key")
///                 .build()).result())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/certificate.crt")
///                 .build()).result())
///             .build());
///
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
///             .description("a description")
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
///         var default_ = new TargetHttpsProxy("default", TargetHttpsProxyArgs.builder()
///             .name("test-proxy")
///             .urlMap(defaultURLMap.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpsProxy
///     properties:
///       name: test-proxy
///       urlMap: ${defaultURLMap.id}
///       sslCertificates:
///         - ${defaultSSLCertificate.id}
///   defaultSSLCertificate:
///     type: gcp:compute:SSLCertificate
///     name: default
///     properties:
///       name: my-certificate
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/private.key
///           return: result
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/certificate.crt
///           return: result
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
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
/// ### Target Https Proxy Http Keep Alive Timeout
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultSSLCertificate = new gcp.compute.SSLCertificate("default", {
///     name: "my-certificate",
///     privateKey: std.file({
///         input: "path/to/private.key",
///     }).then(invoke => invoke.result),
///     certificate: std.file({
///         input: "path/to/certificate.crt",
///     }).then(invoke => invoke.result),
/// });
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
///     description: "a description",
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
/// const _default = new gcp.compute.TargetHttpsProxy("default", {
///     name: "test-http-keep-alive-timeout-proxy",
///     httpKeepAliveTimeoutSec: 610,
///     urlMap: defaultURLMap.id,
///     sslCertificates: [defaultSSLCertificate.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_ssl_certificate = gcp.compute.SSLCertificate("default",
///     name="my-certificate",
///     private_key=std.file(input="path/to/private.key").result,
///     certificate=std.file(input="path/to/certificate.crt").result)
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
///     description="a description",
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
/// default = gcp.compute.TargetHttpsProxy("default",
///     name="test-http-keep-alive-timeout-proxy",
///     http_keep_alive_timeout_sec=610,
///     url_map=default_url_map.id,
///     ssl_certificates=[default_ssl_certificate.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSSLCertificate = new Gcp.Compute.SSLCertificate("default", new()
///     {
///         Name = "my-certificate",
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "path/to/private.key",
///         }).Apply(invoke => invoke.Result),
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "path/to/certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
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
///         Description = "a description",
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
///     var @default = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "test-http-keep-alive-timeout-proxy",
///         HttpKeepAliveTimeoutSec = 610,
///         UrlMap = defaultURLMap.Id,
///         SslCertificates = new[]
///         {
///             defaultSSLCertificate.Id,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/private.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSSLCertificate, err := compute.NewSSLCertificate(ctx, "default", &compute.SSLCertificateArgs{
/// 			Name:        pulumi.String("my-certificate"),
/// 			PrivateKey:  pulumi.String(invokeFile.Result),
/// 			Certificate: pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			HealthChecks:        defaultHttpHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:                    pulumi.String("test-http-keep-alive-timeout-proxy"),
/// 			HttpKeepAliveTimeoutSec: pulumi.Int(610),
/// 			UrlMap:                  defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID().ToIDOutput().ToStringOutput(),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name                        = "test-http-keep-alive-timeout-proxy"
///   http_keep_alive_timeout_sec = 610
///   url_map                     = gcp_compute_urlmap.default.id
///   ssl_certificates            = [gcp_compute_sslcertificate.default.id]
/// }
/// resource "gcp_compute_sslcertificate" "default" {
///   name        = "my-certificate"
///   private_key = file("path/to/private.key")
///   certificate = file("path/to/certificate.crt")
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "backend-service"
///   port_name             = "http"
///   protocol              = "HTTP"
///   timeout_sec           = 10
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   health_checks         = gcp_compute_httphealthcheck.default.id
/// }
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "http-health-check"
///   request_path       = "/"
///   check_interval_sec = 1
///   timeout_sec        = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SSLCertificate;
/// import com.pulumi.gcp.compute.SSLCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
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
///         var defaultSSLCertificate = new SSLCertificate("defaultSSLCertificate", SSLCertificateArgs.builder()
///             .name("my-certificate")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/private.key")
///                 .build()).result())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/certificate.crt")
///                 .build()).result())
///             .build());
///
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
///             .description("a description")
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
///         var default_ = new TargetHttpsProxy("default", TargetHttpsProxyArgs.builder()
///             .name("test-http-keep-alive-timeout-proxy")
///             .httpKeepAliveTimeoutSec(610)
///             .urlMap(defaultURLMap.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpsProxy
///     properties:
///       name: test-http-keep-alive-timeout-proxy
///       httpKeepAliveTimeoutSec: 610
///       urlMap: ${defaultURLMap.id}
///       sslCertificates:
///         - ${defaultSSLCertificate.id}
///   defaultSSLCertificate:
///     type: gcp:compute:SSLCertificate
///     name: default
///     properties:
///       name: my-certificate
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/private.key
///           return: result
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/certificate.crt
///           return: result
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
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
/// ### Target Https Proxy Mtls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const defaultTrustConfig = new gcp.certificatemanager.TrustConfig("default", {
///     name: "my-trust-config",
///     description: "sample description for the trust config",
///     location: "global",
///     trustStores: [{
///         trustAnchors: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///         intermediateCas: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     }],
///     labels: {
///         foo: "bar",
///     },
/// });
/// const defaultServerTlsPolicy = new gcp.networksecurity.ServerTlsPolicy("default", {
///     name: "my-tls-policy",
///     description: "my description",
///     location: "global",
///     allowOpen: false,
///     mtlsPolicy: {
///         clientValidationMode: "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///         clientValidationTrustConfig: pulumi.all([project, defaultTrustConfig.name]).apply(([project, name]) => `projects/${project.number}/locations/global/trustConfigs/${name}`),
///     },
/// });
/// const defaultSSLCertificate = new gcp.compute.SSLCertificate("default", {
///     name: "my-certificate",
///     privateKey: std.file({
///         input: "path/to/private.key",
///     }).then(invoke => invoke.result),
///     certificate: std.file({
///         input: "path/to/certificate.crt",
///     }).then(invoke => invoke.result),
/// });
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
///     description: "a description",
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
/// const _default = new gcp.compute.TargetHttpsProxy("default", {
///     name: "test-mtls-proxy",
///     urlMap: defaultURLMap.id,
///     sslCertificates: [defaultSSLCertificate.id],
///     serverTlsPolicy: defaultServerTlsPolicy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// default_trust_config = gcp.certificatemanager.TrustConfig("default",
///     name="my-trust-config",
///     description="sample description for the trust config",
///     location="global",
///     trust_stores=[{
///         "trust_anchors": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///         "intermediate_cas": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///     }],
///     labels={
///         "foo": "bar",
///     })
/// default_server_tls_policy = gcp.networksecurity.ServerTlsPolicy("default",
///     name="my-tls-policy",
///     description="my description",
///     location="global",
///     allow_open=False,
///     mtls_policy={
///         "client_validation_mode": "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///         "client_validation_trust_config": default_trust_config.name.apply(lambda name: f"projects/{project.number}/locations/global/trustConfigs/{name}"),
///     })
/// default_ssl_certificate = gcp.compute.SSLCertificate("default",
///     name="my-certificate",
///     private_key=std.file(input="path/to/private.key").result,
///     certificate=std.file(input="path/to/certificate.crt").result)
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
///     description="a description",
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
/// default = gcp.compute.TargetHttpsProxy("default",
///     name="test-mtls-proxy",
///     url_map=default_url_map.id,
///     ssl_certificates=[default_ssl_certificate.id],
///     server_tls_policy=default_server_tls_policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var defaultTrustConfig = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "my-trust-config",
///         Description = "sample description for the trust config",
///         Location = "global",
///         TrustStores = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
///             {
///                 TrustAnchors = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 IntermediateCas = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
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
///     var defaultServerTlsPolicy = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
///     {
///         Name = "my-tls-policy",
///         Description = "my description",
///         Location = "global",
///         AllowOpen = false,
///         MtlsPolicy = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyArgs
///         {
///             ClientValidationMode = "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///             ClientValidationTrustConfig = Output.Tuple(project, defaultTrustConfig.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/trustConfigs/{name}";
///             }),
///         },
///     });
///
///     var defaultSSLCertificate = new Gcp.Compute.SSLCertificate("default", new()
///     {
///         Name = "my-certificate",
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "path/to/private.key",
///         }).Apply(invoke => invoke.Result),
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "path/to/certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
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
///         Description = "a description",
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
///     var @default = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "test-mtls-proxy",
///         UrlMap = defaultURLMap.Id,
///         SslCertificates = new[]
///         {
///             defaultSSLCertificate.Id,
///         },
///         ServerTlsPolicy = defaultServerTlsPolicy.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTrustConfig, err := certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:        pulumi.String("my-trust-config"),
/// 			Description: pulumi.String("sample description for the trust config"),
/// 			Location:    pulumi.String("global"),
/// 			TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// 				&certificatemanager.TrustConfigTrustStoreArgs{
/// 					TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// 						&certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// 							PemCertificate: pulumi.String(invokeFile.Result),
/// 						},
/// 					},
/// 					IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// 						&certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// 							PemCertificate: pulumi.String(invokeFile1.Result),
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
/// 		defaultServerTlsPolicy, err := networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// 			Name:        pulumi.String("my-tls-policy"),
/// 			Description: pulumi.String("my description"),
/// 			Location:    pulumi.String("global"),
/// 			AllowOpen:   pulumi.Bool(false),
/// 			MtlsPolicy: &networksecurity.ServerTlsPolicyMtlsPolicyArgs{
/// 				ClientValidationMode: pulumi.String("ALLOW_INVALID_OR_MISSING_CLIENT_CERT"),
/// 				ClientValidationTrustConfig: defaultTrustConfig.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/global/trustConfigs/%v", project.Number, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/private.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile3, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSSLCertificate, err := compute.NewSSLCertificate(ctx, "default", &compute.SSLCertificateArgs{
/// 			Name:        pulumi.String("my-certificate"),
/// 			PrivateKey:  pulumi.String(invokeFile2.Result),
/// 			Certificate: pulumi.String(invokeFile3.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			HealthChecks: defaultHttpHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:   pulumi.String("test-mtls-proxy"),
/// 			UrlMap: defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ServerTlsPolicy: defaultServerTlsPolicy.ID().ToIDOutput().ToStringOutput(),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name              = "test-mtls-proxy"
///   url_map           = gcp_compute_urlmap.default.id
///   ssl_certificates  = [gcp_compute_sslcertificate.default.id]
///   server_tls_policy = gcp_networksecurity_servertlspolicy.default.id
/// }
/// resource "gcp_certificatemanager_trustconfig" "default" {
///   name        = "my-trust-config"
///   description = "sample description for the trust config"
///   location    = "global"
///   trust_stores {
///     trust_anchors {
///       pem_certificate = file("test-fixtures/ca_cert.pem")
///     }
///     intermediate_cas {
///       pem_certificate = file("test-fixtures/ca_cert.pem")
///     }
///   }
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// resource "gcp_networksecurity_servertlspolicy" "default" {
///   name        = "my-tls-policy"
///   description = "my description"
///   location    = "global"
///   allow_open  = "false"
///   mtls_policy = {
///     client_validation_mode         = "ALLOW_INVALID_OR_MISSING_CLIENT_CERT"
///     client_validation_trust_config ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/trustConfigs/${gcp_certificatemanager_trustconfig.default.name}"
///   }
/// }
/// resource "gcp_compute_sslcertificate" "default" {
///   name        = "my-certificate"
///   private_key = file("path/to/private.key")
///   certificate = file("path/to/certificate.crt")
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   port_name     = "http"
///   protocol      = "HTTP"
///   timeout_sec   = 10
///   health_checks = gcp_compute_httphealthcheck.default.id
/// }
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "http-health-check"
///   request_path       = "/"
///   check_interval_sec = 1
///   timeout_sec        = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreTrustAnchorArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreIntermediateCaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyMtlsPolicyArgs;
/// import com.pulumi.gcp.compute.SSLCertificate;
/// import com.pulumi.gcp.compute.SSLCertificateArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var defaultTrustConfig = new TrustConfig("defaultTrustConfig", TrustConfigArgs.builder()
///             .name("my-trust-config")
///             .description("sample description for the trust config")
///             .location("global")
///             .trustStores(TrustConfigTrustStoreArgs.builder()
///                 .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var defaultServerTlsPolicy = new ServerTlsPolicy("defaultServerTlsPolicy", ServerTlsPolicyArgs.builder()
///             .name("my-tls-policy")
///             .description("my description")
///             .location("global")
///             .allowOpen(false)
///             .mtlsPolicy(ServerTlsPolicyMtlsPolicyArgs.builder()
///                 .clientValidationMode("ALLOW_INVALID_OR_MISSING_CLIENT_CERT")
///                 .clientValidationTrustConfig(defaultTrustConfig.name().applyValue(_name -> String.format("projects/%s/locations/global/trustConfigs/%s", project.number(),_name)))
///                 .build())
///             .build());
///
///         var defaultSSLCertificate = new SSLCertificate("defaultSSLCertificate", SSLCertificateArgs.builder()
///             .name("my-certificate")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/private.key")
///                 .build()).result())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/certificate.crt")
///                 .build()).result())
///             .build());
///
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
///             .description("a description")
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
///         var default_ = new TargetHttpsProxy("default", TargetHttpsProxyArgs.builder()
///             .name("test-mtls-proxy")
///             .urlMap(defaultURLMap.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .serverTlsPolicy(defaultServerTlsPolicy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpsProxy
///     properties:
///       name: test-mtls-proxy
///       urlMap: ${defaultURLMap.id}
///       sslCertificates:
///         - ${defaultSSLCertificate.id}
///       serverTlsPolicy: ${defaultServerTlsPolicy.id}
///   defaultTrustConfig:
///     type: gcp:certificatemanager:TrustConfig
///     name: default
///     properties:
///       name: my-trust-config
///       description: sample description for the trust config
///       location: global
///       trustStores:
///         - trustAnchors:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///           intermediateCas:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///       labels:
///         foo: bar
///   defaultServerTlsPolicy:
///     type: gcp:networksecurity:ServerTlsPolicy
///     name: default
///     properties:
///       name: my-tls-policy
///       description: my description
///       location: global
///       allowOpen: 'false'
///       mtlsPolicy:
///         clientValidationMode: ALLOW_INVALID_OR_MISSING_CLIENT_CERT
///         clientValidationTrustConfig: projects/${project.number}/locations/global/trustConfigs/${defaultTrustConfig.name}
///   defaultSSLCertificate:
///     type: gcp:compute:SSLCertificate
///     name: default
///     properties:
///       name: my-certificate
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/private.key
///           return: result
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/certificate.crt
///           return: result
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
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
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Target Https Proxy Certificate Manager Certificate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultCertificate = new gcp.certificatemanager.Certificate("default", {
///     name: "my-certificate",
///     scope: "ALL_REGIONS",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     description: "a description",
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
/// const _default = new gcp.compute.TargetHttpsProxy("default", {
///     name: "target-http-proxy",
///     urlMap: defaultURLMap.id,
///     certificateManagerCertificates: [pulumi.interpolate`//certificatemanager.googleapis.com/${defaultCertificate.id}`],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_certificate = gcp.certificatemanager.Certificate("default",
///     name="my-certificate",
///     scope="ALL_REGIONS",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     description="a description",
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
/// default = gcp.compute.TargetHttpsProxy("default",
///     name="target-http-proxy",
///     url_map=default_url_map.id,
///     certificate_manager_certificates=[default_certificate.id.apply(lambda id: f"//certificatemanager.googleapis.com/{id}")])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultCertificate = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "my-certificate",
///         Scope = "ALL_REGIONS",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         Description = "a description",
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
///     var @default = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "target-http-proxy",
///         UrlMap = defaultURLMap.Id,
///         CertificateManagerCertificates = new[]
///         {
///             defaultCertificate.Id.Apply(id => $"//certificatemanager.googleapis.com/{id}"),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCertificate, err := certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:  pulumi.String("my-certificate"),
/// 			Scope: pulumi.String("ALL_REGIONS"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:   pulumi.String("target-http-proxy"),
/// 			UrlMap: defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			CertificateManagerCertificates: pulumi.StringArray{
/// 				defaultCertificate.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 					return fmt.Sprintf("//certificatemanager.googleapis.com/%v", id), nil
/// 				}).(pulumi.StringOutput),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name                             = "target-http-proxy"
///   url_map                          = gcp_compute_urlmap.default.id
///   certificate_manager_certificates = ["//certificatemanager.googleapis.com/${gcp_certificatemanager_certificate.default.id}"] # [google_certificate_manager_certificate.default.id] is also acceptable
/// }
/// resource "gcp_certificatemanager_certificate" "default" {
///   name  = "my-certificate"
///   scope = "ALL_REGIONS"
///   self_managed = {
///     pem_certificate = file("test-fixtures/cert.pem")
///     pem_private_key = file("test-fixtures/private-key.pem")
///   }
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "backend-service"
///   port_name             = "http"
///   protocol              = "HTTP"
///   timeout_sec           = 10
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
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
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .name("my-certificate")
///             .scope("ALL_REGIONS")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .description("a description")
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
///         var default_ = new TargetHttpsProxy("default", TargetHttpsProxyArgs.builder()
///             .name("target-http-proxy")
///             .urlMap(defaultURLMap.id())
///             .certificateManagerCertificates(defaultCertificate.id().applyValue(_id -> String.format("//certificatemanager.googleapis.com/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpsProxy
///     properties:
///       name: target-http-proxy
///       urlMap: ${defaultURLMap.id}
///       certificateManagerCertificates: # [google_certificate_manager_certificate.default.id] is also acceptable
///         - //certificatemanager.googleapis.com/${defaultCertificate.id}
///   defaultCertificate:
///     type: gcp:certificatemanager:Certificate
///     name: default
///     properties:
///       name: my-certificate
///       scope: ALL_REGIONS
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
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
///       loadBalancingScheme: INTERNAL_MANAGED
/// ```
///
/// ### Target Https Proxy Fingerprint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultSSLCertificate = new gcp.compute.SSLCertificate("default", {
///     name: "my-certificate",
///     privateKey: std.file({
///         input: "path/to/private.key",
///     }).then(invoke => invoke.result),
///     certificate: std.file({
///         input: "path/to/certificate.crt",
///     }).then(invoke => invoke.result),
/// });
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
///     description: "a description",
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
/// const _default = new gcp.compute.TargetHttpsProxy("default", {
///     name: "test-fingerprint-proxy",
///     urlMap: defaultURLMap.id,
///     sslCertificates: [defaultSSLCertificate.id],
/// });
/// export const targetHttpsProxyFingerprint = _default.fingerprint;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_ssl_certificate = gcp.compute.SSLCertificate("default",
///     name="my-certificate",
///     private_key=std.file(input="path/to/private.key").result,
///     certificate=std.file(input="path/to/certificate.crt").result)
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
///     description="a description",
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
/// default = gcp.compute.TargetHttpsProxy("default",
///     name="test-fingerprint-proxy",
///     url_map=default_url_map.id,
///     ssl_certificates=[default_ssl_certificate.id])
/// pulumi.export("targetHttpsProxyFingerprint", default.fingerprint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSSLCertificate = new Gcp.Compute.SSLCertificate("default", new()
///     {
///         Name = "my-certificate",
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "path/to/private.key",
///         }).Apply(invoke => invoke.Result),
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "path/to/certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
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
///         Description = "a description",
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
///     var @default = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "test-fingerprint-proxy",
///         UrlMap = defaultURLMap.Id,
///         SslCertificates = new[]
///         {
///             defaultSSLCertificate.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["targetHttpsProxyFingerprint"] = @default.Fingerprint,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/private.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSSLCertificate, err := compute.NewSSLCertificate(ctx, "default", &compute.SSLCertificateArgs{
/// 			Name:        pulumi.String("my-certificate"),
/// 			PrivateKey:  pulumi.String(invokeFile.Result),
/// 			Certificate: pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			HealthChecks: defaultHttpHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:   pulumi.String("test-fingerprint-proxy"),
/// 			UrlMap: defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("targetHttpsProxyFingerprint", _default.Fingerprint)
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name             = "test-fingerprint-proxy"
///   url_map          = gcp_compute_urlmap.default.id
///   ssl_certificates = [gcp_compute_sslcertificate.default.id]
/// }
/// resource "gcp_compute_sslcertificate" "default" {
///   name        = "my-certificate"
///   private_key = file("path/to/private.key")
///   certificate = file("path/to/certificate.crt")
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["mysite.com"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   port_name     = "http"
///   protocol      = "HTTP"
///   timeout_sec   = 10
///   health_checks = gcp_compute_httphealthcheck.default.id
/// }
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "http-health-check"
///   request_path       = "/"
///   check_interval_sec = 1
///   timeout_sec        = 1
/// }
/// output "targetHttpsProxyFingerprint" {
///   value = gcp_compute_targethttpsproxy.default.fingerprint
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SSLCertificate;
/// import com.pulumi.gcp.compute.SSLCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
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
///         var defaultSSLCertificate = new SSLCertificate("defaultSSLCertificate", SSLCertificateArgs.builder()
///             .name("my-certificate")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/private.key")
///                 .build()).result())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/certificate.crt")
///                 .build()).result())
///             .build());
///
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
///             .description("a description")
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
///         var default_ = new TargetHttpsProxy("default", TargetHttpsProxyArgs.builder()
///             .name("test-fingerprint-proxy")
///             .urlMap(defaultURLMap.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .build());
///
///         ctx.export("targetHttpsProxyFingerprint", default_.fingerprint());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetHttpsProxy
///     properties:
///       name: test-fingerprint-proxy
///       urlMap: ${defaultURLMap.id}
///       sslCertificates:
///         - ${defaultSSLCertificate.id}
///   defaultSSLCertificate:
///     type: gcp:compute:SSLCertificate
///     name: default
///     properties:
///       name: my-certificate
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/private.key
///           return: result
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/certificate.crt
///           return: result
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
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
///   targetHttpsProxyFingerprint: ${default.fingerprint}
/// ```
///
///
/// ## Import
///
/// TargetHttpsProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetHttpsProxies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TargetHttpsProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpsProxy:TargetHttpsProxy default projects/{{project}}/global/targetHttpsProxies/{{name}}
/// $ pulumi import gcp:compute/targetHttpsProxy:TargetHttpsProxy default {{project}}/{{name}}
/// $ pulumi import gcp:compute/targetHttpsProxy:TargetHttpsProxy default {{name}}
/// ```
class TargetHttpsProxy extends pulumi.CustomResource {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// Certificate manager certificates only apply when the load balancing scheme is set to INTERNAL_MANAGED.
  /// For EXTERNAL and EXTERNAL_MANAGED, use certificateMap instead.
  /// sslCertificates and certificateManagerCertificates fields can not be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the selfLink `projects/{project}/locations/{location}/certificates/{resourceName}`
  late final pulumi.Output<List<String>?> certificateManagerCertificates;
  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field is only supported for EXTERNAL and EXTERNAL_MANAGED load balancing schemes.
  /// For INTERNAL_MANAGED, use certificateManagerCertificates instead.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  late final pulumi.Output<String?> certificateMap;
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
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking.
  /// This field will be ignored when inserting a TargetHttpsProxy. An up-to-date fingerprint must be provided in order to
  /// patch the TargetHttpsProxy; otherwise, the request will fail with error 412 conditionNotMet.
  /// To see the latest fingerprint, make a get() request to retrieve the TargetHttpsProxy.
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
  /// Specifies the QUIC override policy for this resource. This determines
  /// whether the load balancer will attempt to negotiate QUIC with clients
  /// or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
  /// specified, Google manages whether QUIC is used.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `ENABLE`, `DISABLE`.
  late final pulumi.Output<String?> quicOverride;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A URL referring to a networksecurity.ServerTlsPolicy
  /// resource that describes how the proxy should authenticate inbound
  /// traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
  /// attached to globalForwardingRules with the loadBalancingScheme
  /// set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
  /// For details which ServerTlsPolicy resources are accepted with
  /// INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
  /// loadBalancingScheme consult ServerTlsPolicy documentation.
  /// If left blank, communications are not encrypted.
  /// If you remove this field from your configuration at the same time as
  /// deleting or recreating a referenced ServerTlsPolicy resource, you will
  /// receive a resourceInUseByAnotherResource error. Use lifecycle.create_before_destroy
  /// within the ServerTlsPolicy resource to avoid this.
  late final pulumi.Output<String?> serverTlsPolicy;
  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  /// sslCertificates and certificateManagerCertificates can not be defined together.
  late final pulumi.Output<List<String>?> sslCertificates;
  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  late final pulumi.Output<String?> sslPolicy;
  /// Specifies whether TLS 1.3 0-RTT Data (“Early Data”) should be accepted for this service.
  /// Early Data allows a TLS resumption handshake to include the initial application payload
  /// (a HTTP request) alongside the handshake, reducing the effective round trips to “zero”.
  /// This applies to TLS 1.3 connections over TCP (HTTP/2) as well as over UDP (QUIC/h3).
  /// Possible values are: `STRICT`, `PERMISSIVE`, `UNRESTRICTED`, `DISABLED`.
  late final pulumi.Output<String> tlsEarlyData;
  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  late final pulumi.Output<String> urlMap;

  /// Creates a new [TargetHttpsProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetHttpsProxy]. {@macro pulumi_compute_target_https_proxy_target_https_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetHttpsProxy(
    String name, {
    TargetHttpsProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetHttpsProxy:TargetHttpsProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateManagerCertificates = registerOutput<List<String>?>('certificateManagerCertificates');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyId = registerOutput<int>('proxyId');
    quicOverride = registerOutput<String?>('quicOverride');
    selfLink = registerOutput<String>('selfLink');
    serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    sslCertificates = registerOutput<List<String>?>('sslCertificates');
    sslPolicy = registerOutput<String?>('sslPolicy');
    tlsEarlyData = registerOutput<String>('tlsEarlyData');
    urlMap = registerOutput<String>('urlMap');
  }

  /// Gets an existing [TargetHttpsProxy] resource's state with the given [name] and [id].
  static TargetHttpsProxy get(
    String name,
    pulumi.Input<String> id, {
    TargetHttpsProxyState? state,
  }) {
    return TargetHttpsProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetHttpsProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetHttpsProxy:TargetHttpsProxy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateManagerCertificates = registerOutput<List<String>?>('certificateManagerCertificates');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    httpKeepAliveTimeoutSec = registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyId = registerOutput<int>('proxyId');
    quicOverride = registerOutput<String?>('quicOverride');
    selfLink = registerOutput<String>('selfLink');
    serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    sslCertificates = registerOutput<List<String>?>('sslCertificates');
    sslPolicy = registerOutput<String?>('sslPolicy');
    tlsEarlyData = registerOutput<String>('tlsEarlyData');
    urlMap = registerOutput<String>('urlMap');
  }
}
