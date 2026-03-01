import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_args.dart';
import 'backend_service_backend.dart';
import 'backend_service_cdn_policy.dart';
import 'backend_service_circuit_breakers.dart';
import 'backend_service_consistent_hash.dart';
import 'backend_service_custom_metric.dart';
import 'backend_service_dynamic_forwarding.dart';
import 'backend_service_iap.dart';
import 'backend_service_locality_lb_policy.dart';
import 'backend_service_log_config.dart';
import 'backend_service_max_stream_duration.dart';
import 'backend_service_network_pass_through_lb_traffic_policy.dart';
import 'backend_service_outlier_detection.dart';
import 'backend_service_params.dart';
import 'backend_service_security_settings.dart';
import 'backend_service_state.dart';
import 'backend_service_strong_session_affinity_cookie.dart';
import 'backend_service_tls_settings.dart';

/// A Backend Service defines a group of virtual machines that will serve
/// traffic for load balancing. This resource is a global backend service,
/// appropriate for external load balancing or self-managed internal load balancing.
/// For managed internal load balancing, use a regional backend service instead.
///
/// Currently self-managed internal load balancing is only available in beta.
///
/// > **Note:** Recreating a `gcp.compute.BackendService` that references other dependent resources like `gcp.compute.URLMap` will give a `resourceInUseByAnotherResource` error, when modifying the number of other dependent resources.
/// Use `lifecycle.create_before_destroy` on the dependent resources to avoid this type of error as shown in the Dynamic Backends example.
///
///
/// To get more information about BackendService, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/backendServices)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/backend-service)
///
/// > **Warning:** All arguments including the following potentially sensitive
/// values will be stored in the raw state as plain text: `iap.oauth2_client_secret`, `iap.oauth2_client_secret_sha256`, `security_settings.aws_v4_authentication.access_key`.
///
/// ## Example Usage
///
/// ### Backend Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_http_health_check.id)
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
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
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
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
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
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Backend Service External Iap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.BackendService("default", {
///     name: "tf-test-backend-service-external",
///     protocol: "HTTP",
///     loadBalancingScheme: "EXTERNAL",
///     iap: {
///         enabled: true,
///         oauth2ClientId: "abc",
///         oauth2ClientSecret: "xyz",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.BackendService("default",
///     name="tf-test-backend-service-external",
///     protocol="HTTP",
///     load_balancing_scheme="EXTERNAL",
///     iap={
///         "enabled": True,
///         "oauth2_client_id": "abc",
///         "oauth2_client_secret": "xyz",
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
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "tf-test-backend-service-external",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "EXTERNAL",
///         Iap = new Gcp.Compute.Inputs.BackendServiceIapArgs
///         {
///             Enabled = true,
///             Oauth2ClientId = "abc",
///             Oauth2ClientSecret = "xyz",
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
/// 		_, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("tf-test-backend-service-external"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			Iap: &compute.BackendServiceIapArgs{
/// 				Enabled:            pulumi.Bool(true),
/// 				Oauth2ClientId:     pulumi.String("abc"),
/// 				Oauth2ClientSecret: pulumi.String("xyz"),
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
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceIapArgs;
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
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("tf-test-backend-service-external")
///             .protocol("HTTP")
///             .loadBalancingScheme("EXTERNAL")
///             .iap(BackendServiceIapArgs.builder()
///                 .enabled(true)
///                 .oauth2ClientId("abc")
///                 .oauth2ClientSecret("xyz")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: tf-test-backend-service-external
///       protocol: HTTP
///       loadBalancingScheme: EXTERNAL
///       iap:
///         enabled: true
///         oauth2ClientId: abc
///         oauth2ClientSecret: xyz
/// ```
///
/// ### Backend Service Cache Simple
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
///     enableCdn: true,
///     cdnPolicy: {
///         signedUrlCacheMaxAgeSec: 7200,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_http_health_check.id,
///     enable_cdn=True,
///     cdn_policy={
///         "signed_url_cache_max_age_sec": 7200,
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyArgs
///         {
///             SignedUrlCacheMaxAgeSec = 7200,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 			EnableCdn:    pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendServiceCdnPolicyArgs{
/// 				SignedUrlCacheMaxAgeSec: pulumi.Int(7200),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyArgs;
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
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .enableCdn(true)
///             .cdnPolicy(BackendServiceCdnPolicyArgs.builder()
///                 .signedUrlCacheMaxAgeSec(7200)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHttpHealthCheck.id}
///       enableCdn: true
///       cdnPolicy:
///         signedUrlCacheMaxAgeSec: 7200
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Backend Service Cache Include Http Headers
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     enableCdn: true,
///     cdnPolicy: {
///         cacheMode: "USE_ORIGIN_HEADERS",
///         cacheKeyPolicy: {
///             includeHost: true,
///             includeProtocol: true,
///             includeQueryString: true,
///             includeHttpHeaders: ["X-My-Header-Field"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     enable_cdn=True,
///     cdn_policy={
///         "cache_mode": "USE_ORIGIN_HEADERS",
///         "cache_key_policy": {
///             "include_host": True,
///             "include_protocol": True,
///             "include_query_string": True,
///             "include_http_headers": ["X-My-Header-Field"],
///         },
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
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyArgs
///         {
///             CacheMode = "USE_ORIGIN_HEADERS",
///             CacheKeyPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyCacheKeyPolicyArgs
///             {
///                 IncludeHost = true,
///                 IncludeProtocol = true,
///                 IncludeQueryString = true,
///                 IncludeHttpHeaders = new[]
///                 {
///                     "X-My-Header-Field",
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
/// 		_, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:      pulumi.String("backend-service"),
/// 			EnableCdn: pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendServiceCdnPolicyArgs{
/// 				CacheMode: pulumi.String("USE_ORIGIN_HEADERS"),
/// 				CacheKeyPolicy: &compute.BackendServiceCdnPolicyCacheKeyPolicyArgs{
/// 					IncludeHost:        pulumi.Bool(true),
/// 					IncludeProtocol:    pulumi.Bool(true),
/// 					IncludeQueryString: pulumi.Bool(true),
/// 					IncludeHttpHeaders: pulumi.StringArray{
/// 						pulumi.String("X-My-Header-Field"),
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
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyCacheKeyPolicyArgs;
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
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .enableCdn(true)
///             .cdnPolicy(BackendServiceCdnPolicyArgs.builder()
///                 .cacheMode("USE_ORIGIN_HEADERS")
///                 .cacheKeyPolicy(BackendServiceCdnPolicyCacheKeyPolicyArgs.builder()
///                     .includeHost(true)
///                     .includeProtocol(true)
///                     .includeQueryString(true)
///                     .includeHttpHeaders("X-My-Header-Field")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       enableCdn: true
///       cdnPolicy:
///         cacheMode: USE_ORIGIN_HEADERS
///         cacheKeyPolicy:
///           includeHost: true
///           includeProtocol: true
///           includeQueryString: true
///           includeHttpHeaders:
///             - X-My-Header-Field
/// ```
///
/// ### Backend Service Cache Include Named Cookies
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     enableCdn: true,
///     cdnPolicy: {
///         cacheMode: "CACHE_ALL_STATIC",
///         defaultTtl: 3600,
///         clientTtl: 7200,
///         maxTtl: 10800,
///         cacheKeyPolicy: {
///             includeHost: true,
///             includeProtocol: true,
///             includeQueryString: true,
///             includeNamedCookies: [
///                 "__next_preview_data",
///                 "__prerender_bypass",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     enable_cdn=True,
///     cdn_policy={
///         "cache_mode": "CACHE_ALL_STATIC",
///         "default_ttl": 3600,
///         "client_ttl": 7200,
///         "max_ttl": 10800,
///         "cache_key_policy": {
///             "include_host": True,
///             "include_protocol": True,
///             "include_query_string": True,
///             "include_named_cookies": [
///                 "__next_preview_data",
///                 "__prerender_bypass",
///             ],
///         },
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
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyArgs
///         {
///             CacheMode = "CACHE_ALL_STATIC",
///             DefaultTtl = 3600,
///             ClientTtl = 7200,
///             MaxTtl = 10800,
///             CacheKeyPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyCacheKeyPolicyArgs
///             {
///                 IncludeHost = true,
///                 IncludeProtocol = true,
///                 IncludeQueryString = true,
///                 IncludeNamedCookies = new[]
///                 {
///                     "__next_preview_data",
///                     "__prerender_bypass",
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
/// 		_, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:      pulumi.String("backend-service"),
/// 			EnableCdn: pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendServiceCdnPolicyArgs{
/// 				CacheMode:  pulumi.String("CACHE_ALL_STATIC"),
/// 				DefaultTtl: pulumi.Int(3600),
/// 				ClientTtl:  pulumi.Int(7200),
/// 				MaxTtl:     pulumi.Int(10800),
/// 				CacheKeyPolicy: &compute.BackendServiceCdnPolicyCacheKeyPolicyArgs{
/// 					IncludeHost:        pulumi.Bool(true),
/// 					IncludeProtocol:    pulumi.Bool(true),
/// 					IncludeQueryString: pulumi.Bool(true),
/// 					IncludeNamedCookies: pulumi.StringArray{
/// 						pulumi.String("__next_preview_data"),
/// 						pulumi.String("__prerender_bypass"),
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
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyCacheKeyPolicyArgs;
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
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .enableCdn(true)
///             .cdnPolicy(BackendServiceCdnPolicyArgs.builder()
///                 .cacheMode("CACHE_ALL_STATIC")
///                 .defaultTtl(3600)
///                 .clientTtl(7200)
///                 .maxTtl(10800)
///                 .cacheKeyPolicy(BackendServiceCdnPolicyCacheKeyPolicyArgs.builder()
///                     .includeHost(true)
///                     .includeProtocol(true)
///                     .includeQueryString(true)
///                     .includeNamedCookies(
///                         "__next_preview_data",
///                         "__prerender_bypass")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       enableCdn: true
///       cdnPolicy:
///         cacheMode: CACHE_ALL_STATIC
///         defaultTtl: 3600
///         clientTtl: 7200
///         maxTtl: 10800
///         cacheKeyPolicy:
///           includeHost: true
///           includeProtocol: true
///           includeQueryString: true
///           includeNamedCookies:
///             - __next_preview_data
///             - __prerender_bypass
/// ```
///
/// ### Backend Service Cache
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
///     enableCdn: true,
///     cdnPolicy: {
///         cacheMode: "CACHE_ALL_STATIC",
///         defaultTtl: 3600,
///         clientTtl: 7200,
///         maxTtl: 10800,
///         negativeCaching: true,
///         signedUrlCacheMaxAgeSec: 7200,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_http_health_check.id,
///     enable_cdn=True,
///     cdn_policy={
///         "cache_mode": "CACHE_ALL_STATIC",
///         "default_ttl": 3600,
///         "client_ttl": 7200,
///         "max_ttl": 10800,
///         "negative_caching": True,
///         "signed_url_cache_max_age_sec": 7200,
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyArgs
///         {
///             CacheMode = "CACHE_ALL_STATIC",
///             DefaultTtl = 3600,
///             ClientTtl = 7200,
///             MaxTtl = 10800,
///             NegativeCaching = true,
///             SignedUrlCacheMaxAgeSec = 7200,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 			EnableCdn:    pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendServiceCdnPolicyArgs{
/// 				CacheMode:               pulumi.String("CACHE_ALL_STATIC"),
/// 				DefaultTtl:              pulumi.Int(3600),
/// 				ClientTtl:               pulumi.Int(7200),
/// 				MaxTtl:                  pulumi.Int(10800),
/// 				NegativeCaching:         pulumi.Bool(true),
/// 				SignedUrlCacheMaxAgeSec: pulumi.Int(7200),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyArgs;
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
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .enableCdn(true)
///             .cdnPolicy(BackendServiceCdnPolicyArgs.builder()
///                 .cacheMode("CACHE_ALL_STATIC")
///                 .defaultTtl(3600)
///                 .clientTtl(7200)
///                 .maxTtl(10800)
///                 .negativeCaching(true)
///                 .signedUrlCacheMaxAgeSec(7200)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHttpHealthCheck.id}
///       enableCdn: true
///       cdnPolicy:
///         cacheMode: CACHE_ALL_STATIC
///         defaultTtl: 3600
///         clientTtl: 7200
///         maxTtl: 10800
///         negativeCaching: true
///         signedUrlCacheMaxAgeSec: 7200
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Backend Service Cache Bypass Cache On Request Headers
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
///     enableCdn: true,
///     cdnPolicy: {
///         cacheMode: "CACHE_ALL_STATIC",
///         defaultTtl: 3600,
///         clientTtl: 7200,
///         maxTtl: 10800,
///         negativeCaching: true,
///         signedUrlCacheMaxAgeSec: 7200,
///         bypassCacheOnRequestHeaders: [
///             {
///                 headerName: "Authorization",
///             },
///             {
///                 headerName: "Proxy-Authorization",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_http_health_check.id,
///     enable_cdn=True,
///     cdn_policy={
///         "cache_mode": "CACHE_ALL_STATIC",
///         "default_ttl": 3600,
///         "client_ttl": 7200,
///         "max_ttl": 10800,
///         "negative_caching": True,
///         "signed_url_cache_max_age_sec": 7200,
///         "bypass_cache_on_request_headers": [
///             {
///                 "header_name": "Authorization",
///             },
///             {
///                 "header_name": "Proxy-Authorization",
///             },
///         ],
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendServiceCdnPolicyArgs
///         {
///             CacheMode = "CACHE_ALL_STATIC",
///             DefaultTtl = 3600,
///             ClientTtl = 7200,
///             MaxTtl = 10800,
///             NegativeCaching = true,
///             SignedUrlCacheMaxAgeSec = 7200,
///             BypassCacheOnRequestHeaders = new[]
///             {
///                 new Gcp.Compute.Inputs.BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs
///                 {
///                     HeaderName = "Authorization",
///                 },
///                 new Gcp.Compute.Inputs.BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs
///                 {
///                     HeaderName = "Proxy-Authorization",
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 			EnableCdn:    pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendServiceCdnPolicyArgs{
/// 				CacheMode:               pulumi.String("CACHE_ALL_STATIC"),
/// 				DefaultTtl:              pulumi.Int(3600),
/// 				ClientTtl:               pulumi.Int(7200),
/// 				MaxTtl:                  pulumi.Int(10800),
/// 				NegativeCaching:         pulumi.Bool(true),
/// 				SignedUrlCacheMaxAgeSec: pulumi.Int(7200),
/// 				BypassCacheOnRequestHeaders: compute.BackendServiceCdnPolicyBypassCacheOnRequestHeaderArray{
/// 					&compute.BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs{
/// 						HeaderName: pulumi.String("Authorization"),
/// 					},
/// 					&compute.BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs{
/// 						HeaderName: pulumi.String("Proxy-Authorization"),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCdnPolicyArgs;
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
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .enableCdn(true)
///             .cdnPolicy(BackendServiceCdnPolicyArgs.builder()
///                 .cacheMode("CACHE_ALL_STATIC")
///                 .defaultTtl(3600)
///                 .clientTtl(7200)
///                 .maxTtl(10800)
///                 .negativeCaching(true)
///                 .signedUrlCacheMaxAgeSec(7200)
///                 .bypassCacheOnRequestHeaders(
///                     BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs.builder()
///                         .headerName("Authorization")
///                         .build(),
///                     BackendServiceCdnPolicyBypassCacheOnRequestHeaderArgs.builder()
///                         .headerName("Proxy-Authorization")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHttpHealthCheck.id}
///       enableCdn: true
///       cdnPolicy:
///         cacheMode: CACHE_ALL_STATIC
///         defaultTtl: 3600
///         clientTtl: 7200
///         maxTtl: 10800
///         negativeCaching: true
///         signedUrlCacheMaxAgeSec: 7200
///         bypassCacheOnRequestHeaders:
///           - headerName: Authorization
///           - headerName: Proxy-Authorization
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Backend Service Traffic Director Round Robin
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     localityLbPolicy: "ROUND_ROBIN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     locality_lb_policy="ROUND_ROBIN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         LocalityLbPolicy = "ROUND_ROBIN",
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
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("ROUND_ROBIN"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .localityLbPolicy("ROUND_ROBIN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       localityLbPolicy: ROUND_ROBIN
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Backend Service Traffic Director Ring Hash
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     localityLbPolicy: "RING_HASH",
///     sessionAffinity: "HTTP_COOKIE",
///     circuitBreakers: {
///         maxConnections: 10,
///     },
///     consistentHash: {
///         httpCookie: {
///             ttl: {
///                 seconds: 11,
///                 nanos: 1111,
///             },
///             name: "mycookie",
///         },
///     },
///     outlierDetection: {
///         consecutiveErrors: 2,
///         consecutiveGatewayFailure: 5,
///         enforcingConsecutiveErrors: 100,
///         enforcingConsecutiveGatewayFailure: 0,
///         enforcingSuccessRate: 100,
///         maxEjectionPercent: 10,
///         successRateMinimumHosts: 5,
///         successRateRequestVolume: 100,
///         successRateStdevFactor: 1900,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     locality_lb_policy="RING_HASH",
///     session_affinity="HTTP_COOKIE",
///     circuit_breakers={
///         "max_connections": 10,
///     },
///     consistent_hash={
///         "http_cookie": {
///             "ttl": {
///                 "seconds": 11,
///                 "nanos": 1111,
///             },
///             "name": "mycookie",
///         },
///     },
///     outlier_detection={
///         "consecutive_errors": 2,
///         "consecutive_gateway_failure": 5,
///         "enforcing_consecutive_errors": 100,
///         "enforcing_consecutive_gateway_failure": 0,
///         "enforcing_success_rate": 100,
///         "max_ejection_percent": 10,
///         "success_rate_minimum_hosts": 5,
///         "success_rate_request_volume": 100,
///         "success_rate_stdev_factor": 1900,
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
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         LocalityLbPolicy = "RING_HASH",
///         SessionAffinity = "HTTP_COOKIE",
///         CircuitBreakers = new Gcp.Compute.Inputs.BackendServiceCircuitBreakersArgs
///         {
///             MaxConnections = 10,
///         },
///         ConsistentHash = new Gcp.Compute.Inputs.BackendServiceConsistentHashArgs
///         {
///             HttpCookie = new Gcp.Compute.Inputs.BackendServiceConsistentHashHttpCookieArgs
///             {
///                 Ttl = new Gcp.Compute.Inputs.BackendServiceConsistentHashHttpCookieTtlArgs
///                 {
///                     Seconds = 11,
///                     Nanos = 1111,
///                 },
///                 Name = "mycookie",
///             },
///         },
///         OutlierDetection = new Gcp.Compute.Inputs.BackendServiceOutlierDetectionArgs
///         {
///             ConsecutiveErrors = 2,
///             ConsecutiveGatewayFailure = 5,
///             EnforcingConsecutiveErrors = 100,
///             EnforcingConsecutiveGatewayFailure = 0,
///             EnforcingSuccessRate = 100,
///             MaxEjectionPercent = 10,
///             SuccessRateMinimumHosts = 5,
///             SuccessRateRequestVolume = 100,
///             SuccessRateStdevFactor = 1900,
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
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("RING_HASH"),
/// 			SessionAffinity:     pulumi.String("HTTP_COOKIE"),
/// 			CircuitBreakers: &compute.BackendServiceCircuitBreakersArgs{
/// 				MaxConnections: pulumi.Int(10),
/// 			},
/// 			ConsistentHash: &compute.BackendServiceConsistentHashArgs{
/// 				HttpCookie: &compute.BackendServiceConsistentHashHttpCookieArgs{
/// 					Ttl: &compute.BackendServiceConsistentHashHttpCookieTtlArgs{
/// 						Seconds: pulumi.Int(11),
/// 						Nanos:   pulumi.Int(1111),
/// 					},
/// 					Name: pulumi.String("mycookie"),
/// 				},
/// 			},
/// 			OutlierDetection: &compute.BackendServiceOutlierDetectionArgs{
/// 				ConsecutiveErrors:                  pulumi.Int(2),
/// 				ConsecutiveGatewayFailure:          pulumi.Int(5),
/// 				EnforcingConsecutiveErrors:         pulumi.Int(100),
/// 				EnforcingConsecutiveGatewayFailure: pulumi.Int(0),
/// 				EnforcingSuccessRate:               pulumi.Int(100),
/// 				MaxEjectionPercent:                 pulumi.Int(10),
/// 				SuccessRateMinimumHosts:            pulumi.Int(5),
/// 				SuccessRateRequestVolume:           pulumi.Int(100),
/// 				SuccessRateStdevFactor:             pulumi.Int(1900),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCircuitBreakersArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceConsistentHashArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceConsistentHashHttpCookieArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceConsistentHashHttpCookieTtlArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceOutlierDetectionArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .localityLbPolicy("RING_HASH")
///             .sessionAffinity("HTTP_COOKIE")
///             .circuitBreakers(BackendServiceCircuitBreakersArgs.builder()
///                 .maxConnections(10)
///                 .build())
///             .consistentHash(BackendServiceConsistentHashArgs.builder()
///                 .httpCookie(BackendServiceConsistentHashHttpCookieArgs.builder()
///                     .ttl(BackendServiceConsistentHashHttpCookieTtlArgs.builder()
///                         .seconds(11)
///                         .nanos(1111)
///                         .build())
///                     .name("mycookie")
///                     .build())
///                 .build())
///             .outlierDetection(BackendServiceOutlierDetectionArgs.builder()
///                 .consecutiveErrors(2)
///                 .consecutiveGatewayFailure(5)
///                 .enforcingConsecutiveErrors(100)
///                 .enforcingConsecutiveGatewayFailure(0)
///                 .enforcingSuccessRate(100)
///                 .maxEjectionPercent(10)
///                 .successRateMinimumHosts(5)
///                 .successRateRequestVolume(100)
///                 .successRateStdevFactor(1900)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       localityLbPolicy: RING_HASH
///       sessionAffinity: HTTP_COOKIE
///       circuitBreakers:
///         maxConnections: 10
///       consistentHash:
///         httpCookie:
///           ttl:
///             seconds: 11
///             nanos: 1111
///           name: mycookie
///       outlierDetection:
///         consecutiveErrors: 2
///         consecutiveGatewayFailure: 5
///         enforcingConsecutiveErrors: 100
///         enforcingConsecutiveGatewayFailure: 0
///         enforcingSuccessRate: 100
///         maxEjectionPercent: 10
///         successRateMinimumHosts: 5
///         successRateRequestVolume: 100
///         successRateStdevFactor: 1900
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Backend Service Stateful Session Affinity
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     localityLbPolicy: "RING_HASH",
///     sessionAffinity: "STRONG_COOKIE_AFFINITY",
///     strongSessionAffinityCookie: {
///         ttl: {
///             seconds: 11,
///             nanos: 1111,
///         },
///         name: "mycookie",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     locality_lb_policy="RING_HASH",
///     session_affinity="STRONG_COOKIE_AFFINITY",
///     strong_session_affinity_cookie={
///         "ttl": {
///             "seconds": 11,
///             "nanos": 1111,
///         },
///         "name": "mycookie",
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
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         LocalityLbPolicy = "RING_HASH",
///         SessionAffinity = "STRONG_COOKIE_AFFINITY",
///         StrongSessionAffinityCookie = new Gcp.Compute.Inputs.BackendServiceStrongSessionAffinityCookieArgs
///         {
///             Ttl = new Gcp.Compute.Inputs.BackendServiceStrongSessionAffinityCookieTtlArgs
///             {
///                 Seconds = 11,
///                 Nanos = 1111,
///             },
///             Name = "mycookie",
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
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("RING_HASH"),
/// 			SessionAffinity:     pulumi.String("STRONG_COOKIE_AFFINITY"),
/// 			StrongSessionAffinityCookie: &compute.BackendServiceStrongSessionAffinityCookieArgs{
/// 				Ttl: &compute.BackendServiceStrongSessionAffinityCookieTtlArgs{
/// 					Seconds: pulumi.Int(11),
/// 					Nanos:   pulumi.Int(1111),
/// 				},
/// 				Name: pulumi.String("mycookie"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceStrongSessionAffinityCookieArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceStrongSessionAffinityCookieTtlArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .localityLbPolicy("RING_HASH")
///             .sessionAffinity("STRONG_COOKIE_AFFINITY")
///             .strongSessionAffinityCookie(BackendServiceStrongSessionAffinityCookieArgs.builder()
///                 .ttl(BackendServiceStrongSessionAffinityCookieTtlArgs.builder()
///                     .seconds(11)
///                     .nanos(1111)
///                     .build())
///                 .name("mycookie")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       localityLbPolicy: RING_HASH
///       sessionAffinity: STRONG_COOKIE_AFFINITY
///       strongSessionAffinityCookie:
///         ttl:
///           seconds: 11
///           nanos: 1111
///         name: mycookie
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Backend Service Network Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const externalProxy = new gcp.compute.GlobalNetworkEndpointGroup("external_proxy", {
///     name: "network-endpoint",
///     networkEndpointType: "INTERNET_FQDN_PORT",
///     defaultPort: 443,
/// });
/// const proxy = new gcp.compute.GlobalNetworkEndpoint("proxy", {
///     globalNetworkEndpointGroup: externalProxy.id,
///     fqdn: "test.example.com",
///     port: externalProxy.defaultPort,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     enableCdn: true,
///     timeoutSec: 10,
///     connectionDrainingTimeoutSec: 10,
///     customRequestHeaders: [proxy.fqdn.apply(fqdn => `host: ${fqdn}`)],
///     customResponseHeaders: ["X-Cache-Hit: {cdn_cache_status}"],
///     backends: [{
///         group: externalProxy.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_proxy = gcp.compute.GlobalNetworkEndpointGroup("external_proxy",
///     name="network-endpoint",
///     network_endpoint_type="INTERNET_FQDN_PORT",
///     default_port=443)
/// proxy = gcp.compute.GlobalNetworkEndpoint("proxy",
///     global_network_endpoint_group=external_proxy.id,
///     fqdn="test.example.com",
///     port=external_proxy.default_port)
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     enable_cdn=True,
///     timeout_sec=10,
///     connection_draining_timeout_sec=10,
///     custom_request_headers=[proxy.fqdn.apply(lambda fqdn: f"host: {fqdn}")],
///     custom_response_headers=["X-Cache-Hit: {cdn_cache_status}"],
///     backends=[{
///         "group": external_proxy.id,
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
///     var externalProxy = new Gcp.Compute.GlobalNetworkEndpointGroup("external_proxy", new()
///     {
///         Name = "network-endpoint",
///         NetworkEndpointType = "INTERNET_FQDN_PORT",
///         DefaultPort = 443,
///     });
///
///     var proxy = new Gcp.Compute.GlobalNetworkEndpoint("proxy", new()
///     {
///         GlobalNetworkEndpointGroup = externalProxy.Id,
///         Fqdn = "test.example.com",
///         Port = externalProxy.DefaultPort,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         EnableCdn = true,
///         TimeoutSec = 10,
///         ConnectionDrainingTimeoutSec = 10,
///         CustomRequestHeaders = new[]
///         {
///             proxy.Fqdn.Apply(fqdn => $"host: {fqdn}"),
///         },
///         CustomResponseHeaders = new[]
///         {
///             "X-Cache-Hit: {cdn_cache_status}",
///         },
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceBackendArgs
///             {
///                 Group = externalProxy.Id,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		externalProxy, err := compute.NewGlobalNetworkEndpointGroup(ctx, "external_proxy", &compute.GlobalNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("network-endpoint"),
/// 			NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
/// 			DefaultPort:         pulumi.Int(443),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxy, err := compute.NewGlobalNetworkEndpoint(ctx, "proxy", &compute.GlobalNetworkEndpointArgs{
/// 			GlobalNetworkEndpointGroup: externalProxy.ID(),
/// 			Fqdn:                       pulumi.String("test.example.com"),
/// 			Port:                       externalProxy.DefaultPort,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                         pulumi.String("backend-service"),
/// 			EnableCdn:                    pulumi.Bool(true),
/// 			TimeoutSec:                   pulumi.Int(10),
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(10),
/// 			CustomRequestHeaders: pulumi.StringArray{
/// 				proxy.Fqdn.ApplyT(func(fqdn *string) (string, error) {
/// 					return fmt.Sprintf("host: %v", fqdn), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			CustomResponseHeaders: pulumi.StringArray{
/// 				pulumi.String("X-Cache-Hit: {cdn_cache_status}"),
/// 			},
/// 			Backends: compute.BackendServiceBackendArray{
/// 				&compute.BackendServiceBackendArgs{
/// 					Group: externalProxy.ID(),
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
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpoint;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
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
///         var externalProxy = new GlobalNetworkEndpointGroup("externalProxy", GlobalNetworkEndpointGroupArgs.builder()
///             .name("network-endpoint")
///             .networkEndpointType("INTERNET_FQDN_PORT")
///             .defaultPort(443)
///             .build());
///
///         var proxy = new GlobalNetworkEndpoint("proxy", GlobalNetworkEndpointArgs.builder()
///             .globalNetworkEndpointGroup(externalProxy.id())
///             .fqdn("test.example.com")
///             .port(externalProxy.defaultPort())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .enableCdn(true)
///             .timeoutSec(10)
///             .connectionDrainingTimeoutSec(10)
///             .customRequestHeaders(proxy.fqdn().applyValue(_fqdn -> String.format("host: %s", _fqdn)))
///             .customResponseHeaders("X-Cache-Hit: {cdn_cache_status}")
///             .backends(BackendServiceBackendArgs.builder()
///                 .group(externalProxy.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   externalProxy:
///     type: gcp:compute:GlobalNetworkEndpointGroup
///     name: external_proxy
///     properties:
///       name: network-endpoint
///       networkEndpointType: INTERNET_FQDN_PORT
///       defaultPort: '443'
///   proxy:
///     type: gcp:compute:GlobalNetworkEndpoint
///     properties:
///       globalNetworkEndpointGroup: ${externalProxy.id}
///       fqdn: test.example.com
///       port: ${externalProxy.defaultPort}
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       enableCdn: true
///       timeoutSec: 10
///       connectionDrainingTimeoutSec: 10
///       customRequestHeaders:
///         - 'host: ${proxy.fqdn}'
///       customResponseHeaders:
///         - 'X-Cache-Hit: {cdn_cache_status}'
///       backends:
///         - group: ${externalProxy.id}
/// ```
///
/// ### Backend Service In Flight
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom = new gcp.compute.Network("custom", {
///     name: "custom-vpc",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.Subnetwork("default", {
///     name: "custom-subnet",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: custom.id,
/// });
/// const defaultInstanceTemplate = new gcp.compute.InstanceTemplate("default", {
///     name: "instance-template",
///     machineType: "e2-micro",
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///         autoDelete: true,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: custom.id,
///         subnetwork: _default.id,
///     }],
///     metadata: {
///         "startup-script": `#!/bin/bash
/// echo \\"Hello World from MIG VM\\" > /var/www/html/index.html
/// apt-get update -y
/// apt-get install -y apache2
/// systemctl start apache2
/// `,
///     },
/// });
/// const foobar = new gcp.compute.RegionInstanceGroupManager("foobar", {
///     name: "instance-group-manager",
///     baseInstanceName: "vm",
///     region: "us-central1",
///     versions: [{
///         instanceTemplate: defaultInstanceTemplate.id,
///     }],
///     targetSize: 1,
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     description: "Hello World 1234",
///     portName: "http",
///     protocol: "TCP",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     backends: [{
///         group: foobar.instanceGroup,
///         balancingMode: "IN_FLIGHT",
///         maxInFlightRequests: 1000,
///         trafficDuration: "LONG",
///     }],
///     healthChecks: defaultHealthCheck.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom = gcp.compute.Network("custom",
///     name="custom-vpc",
///     auto_create_subnetworks=False)
/// default = gcp.compute.Subnetwork("default",
///     name="custom-subnet",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=custom.id)
/// default_instance_template = gcp.compute.InstanceTemplate("default",
///     name="instance-template",
///     machine_type="e2-micro",
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
///         "auto_delete": True,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": custom.id,
///         "subnetwork": default.id,
///     }],
///     metadata={
///         "startup-script": """#!/bin/bash
/// echo \"Hello World from MIG VM\" > /var/www/html/index.html
/// apt-get update -y
/// apt-get install -y apache2
/// systemctl start apache2
/// """,
///     })
/// foobar = gcp.compute.RegionInstanceGroupManager("foobar",
///     name="instance-group-manager",
///     base_instance_name="vm",
///     region="us-central1",
///     versions=[{
///         "instance_template": default_instance_template.id,
///     }],
///     target_size=1)
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     description="Hello World 1234",
///     port_name="http",
///     protocol="TCP",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     backends=[{
///         "group": foobar.instance_group,
///         "balancing_mode": "IN_FLIGHT",
///         "max_in_flight_requests": 1000,
///         "traffic_duration": "LONG",
///     }],
///     health_checks=default_health_check.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom = new Gcp.Compute.Network("custom", new()
///     {
///         Name = "custom-vpc",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "custom-subnet",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = custom.Id,
///     });
///
///     var defaultInstanceTemplate = new Gcp.Compute.InstanceTemplate("default", new()
///     {
///         Name = "instance-template",
///         MachineType = "e2-micro",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = custom.Id,
///                 Subnetwork = @default.Id,
///             },
///         },
///         Metadata =
///         {
///             { "startup-script", @"#!/bin/bash
/// echo \""Hello World from MIG VM\"" > /var/www/html/index.html
/// apt-get update -y
/// apt-get install -y apache2
/// systemctl start apache2
/// " },
///         },
///     });
///
///     var foobar = new Gcp.Compute.RegionInstanceGroupManager("foobar", new()
///     {
///         Name = "instance-group-manager",
///         BaseInstanceName = "vm",
///         Region = "us-central1",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = defaultInstanceTemplate.Id,
///             },
///         },
///         TargetSize = 1,
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         Description = "Hello World 1234",
///         PortName = "http",
///         Protocol = "TCP",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceBackendArgs
///             {
///                 Group = foobar.InstanceGroup,
///                 BalancingMode = "IN_FLIGHT",
///                 MaxInFlightRequests = 1000,
///                 TrafficDuration = "LONG",
///             },
///         },
///         HealthChecks = defaultHealthCheck.SelfLink,
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
/// 		custom, err := compute.NewNetwork(ctx, "custom", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("custom-vpc"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("custom-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     custom.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceTemplate, err := compute.NewInstanceTemplate(ctx, "default", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("instance-template"),
/// 			MachineType: pulumi.String("e2-micro"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("debian-cloud/debian-11"),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network:    custom.ID(),
/// 					Subnetwork: _default.ID(),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"startup-script": pulumi.String(`#!/bin/bash
/// echo \"Hello World from MIG VM\" > /var/www/html/index.html
/// apt-get update -y
/// apt-get install -y apache2
/// systemctl start apache2
/// `),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := compute.NewRegionInstanceGroupManager(ctx, "foobar", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("instance-group-manager"),
/// 			BaseInstanceName: pulumi.String("vm"),
/// 			Region:           pulumi.String("us-central1"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: defaultInstanceTemplate.ID(),
/// 				},
/// 			},
/// 			TargetSize: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Description:         pulumi.String("Hello World 1234"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Backends: compute.BackendServiceBackendArray{
/// 				&compute.BackendServiceBackendArgs{
/// 					Group:               foobar.InstanceGroup,
/// 					BalancingMode:       pulumi.String("IN_FLIGHT"),
/// 					MaxInFlightRequests: pulumi.Int(1000),
/// 					TrafficDuration:     pulumi.String("LONG"),
/// 				},
/// 			},
/// 			HealthChecks: defaultHealthCheck.SelfLink,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
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
///         var custom = new Network("custom", NetworkArgs.builder()
///             .name("custom-vpc")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new Subnetwork("default", SubnetworkArgs.builder()
///             .name("custom-subnet")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(custom.id())
///             .build());
///
///         var defaultInstanceTemplate = new InstanceTemplate("defaultInstanceTemplate", InstanceTemplateArgs.builder()
///             .name("instance-template")
///             .machineType("e2-micro")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("debian-cloud/debian-11")
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network(custom.id())
///                 .subnetwork(default_.id())
///                 .build())
///             .metadata(Map.of("startup-script", """
/// #!/bin/bash
/// echo \"Hello World from MIG VM\" > /var/www/html/index.html
/// apt-get update -y
/// apt-get install -y apache2
/// systemctl start apache2
///             """))
///             .build());
///
///         var foobar = new RegionInstanceGroupManager("foobar", RegionInstanceGroupManagerArgs.builder()
///             .name("instance-group-manager")
///             .baseInstanceName("vm")
///             .region("us-central1")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(defaultInstanceTemplate.id())
///                 .build())
///             .targetSize(1)
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .description("Hello World 1234")
///             .portName("http")
///             .protocol("TCP")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .backends(BackendServiceBackendArgs.builder()
///                 .group(foobar.instanceGroup())
///                 .balancingMode("IN_FLIGHT")
///                 .maxInFlightRequests(1000)
///                 .trafficDuration("LONG")
///                 .build())
///             .healthChecks(defaultHealthCheck.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom:
///     type: gcp:compute:Network
///     properties:
///       name: custom-vpc
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: custom-subnet
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${custom.id}
///   defaultInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: default
///     properties:
///       name: instance-template
///       machineType: e2-micro
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           autoDelete: true
///           boot: true
///       networkInterfaces:
///         - network: ${custom.id}
///           subnetwork: ${default.id}
///       metadata:
///         startup-script: |
///           #!/bin/bash
///           echo \"Hello World from MIG VM\" > /var/www/html/index.html
///           apt-get update -y
///           apt-get install -y apache2
///           systemctl start apache2
///   foobar:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       name: instance-group-manager
///       baseInstanceName: vm
///       region: us-central1
///       versions:
///         - instanceTemplate: ${defaultInstanceTemplate.id}
///       targetSize: 1
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       description: Hello World 1234
///       portName: http
///       protocol: TCP
///       loadBalancingScheme: EXTERNAL_MANAGED
///       backends:
///         - group: ${foobar.instanceGroup}
///           balancingMode: IN_FLIGHT
///           maxInFlightRequests: 1000
///           trafficDuration: LONG
///       healthChecks: ${defaultHealthCheck.selfLink}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Backend Service External Managed
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     protocol: "H2C",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     protocol="H2C")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Protocol = "H2C",
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("H2C"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .protocol("H2C")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       protocol: H2C
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Backend Service Ip Address Selection Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     ipAddressSelectionPolicy: "IPV6_ONLY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     ip_address_selection_policy="IPV6_ONLY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         IpAddressSelectionPolicy = "IPV6_ONLY",
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
/// 		_, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                     pulumi.String("backend-service"),
/// 			LoadBalancingScheme:      pulumi.String("EXTERNAL_MANAGED"),
/// 			IpAddressSelectionPolicy: pulumi.String("IPV6_ONLY"),
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
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .ipAddressSelectionPolicy("IPV6_ONLY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       loadBalancingScheme: EXTERNAL_MANAGED
///       ipAddressSelectionPolicy: IPV6_ONLY
/// ```
///
/// ### Backend Service Custom Metrics
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "network"});
/// // Zonal NEG with GCE_VM_IP_PORT
/// const defaultNetworkEndpointGroup = new gcp.compute.NetworkEndpointGroup("default", {
///     name: "network-endpoint",
///     network: _default.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
///     networkEndpointType: "GCE_VM_IP_PORT",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     localityLbPolicy: "WEIGHTED_ROUND_ROBIN",
///     customMetrics: [{
///         name: "orca.application_utilization",
///         dryRun: false,
///     }],
///     backends: [{
///         group: defaultNetworkEndpointGroup.id,
///         balancingMode: "CUSTOM_METRICS",
///         customMetrics: [
///             {
///                 name: "orca.cpu_utilization",
///                 maxUtilization: 0.9,
///                 dryRun: true,
///             },
///             {
///                 name: "orca.named_metrics.foo",
///                 dryRun: false,
///             },
///         ],
///     }],
///     logConfig: {
///         enable: true,
///         optionalMode: "CUSTOM",
///         optionalFields: [
///             "orca_load_report",
///             "tls.protocol",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="network")
/// # Zonal NEG with GCE_VM_IP_PORT
/// default_network_endpoint_group = gcp.compute.NetworkEndpointGroup("default",
///     name="network-endpoint",
///     network=default.id,
///     default_port=90,
///     zone="us-central1-a",
///     network_endpoint_type="GCE_VM_IP_PORT")
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     locality_lb_policy="WEIGHTED_ROUND_ROBIN",
///     custom_metrics=[{
///         "name": "orca.application_utilization",
///         "dry_run": False,
///     }],
///     backends=[{
///         "group": default_network_endpoint_group.id,
///         "balancing_mode": "CUSTOM_METRICS",
///         "custom_metrics": [
///             {
///                 "name": "orca.cpu_utilization",
///                 "max_utilization": 0.9,
///                 "dry_run": True,
///             },
///             {
///                 "name": "orca.named_metrics.foo",
///                 "dry_run": False,
///             },
///         ],
///     }],
///     log_config={
///         "enable": True,
///         "optional_mode": "CUSTOM",
///         "optional_fields": [
///             "orca_load_report",
///             "tls.protocol",
///         ],
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network",
///     });
///
///     // Zonal NEG with GCE_VM_IP_PORT
///     var defaultNetworkEndpointGroup = new Gcp.Compute.NetworkEndpointGroup("default", new()
///     {
///         Name = "network-endpoint",
///         Network = @default.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
///         NetworkEndpointType = "GCE_VM_IP_PORT",
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         LocalityLbPolicy = "WEIGHTED_ROUND_ROBIN",
///         CustomMetrics = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceCustomMetricArgs
///             {
///                 Name = "orca.application_utilization",
///                 DryRun = false,
///             },
///         },
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceBackendArgs
///             {
///                 Group = defaultNetworkEndpointGroup.Id,
///                 BalancingMode = "CUSTOM_METRICS",
///                 CustomMetrics = new[]
///                 {
///                     new Gcp.Compute.Inputs.BackendServiceBackendCustomMetricArgs
///                     {
///                         Name = "orca.cpu_utilization",
///                         MaxUtilization = 0.9,
///                         DryRun = true,
///                     },
///                     new Gcp.Compute.Inputs.BackendServiceBackendCustomMetricArgs
///                     {
///                         Name = "orca.named_metrics.foo",
///                         DryRun = false,
///                     },
///                 },
///             },
///         },
///         LogConfig = new Gcp.Compute.Inputs.BackendServiceLogConfigArgs
///         {
///             Enable = true,
///             OptionalMode = "CUSTOM",
///             OptionalFields = new[]
///             {
///                 "orca_load_report",
///                 "tls.protocol",
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Zonal NEG with GCE_VM_IP_PORT
/// 		defaultNetworkEndpointGroup, err := compute.NewNetworkEndpointGroup(ctx, "default", &compute.NetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("network-endpoint"),
/// 			Network:             _default.ID(),
/// 			DefaultPort:         pulumi.Int(90),
/// 			Zone:                pulumi.String("us-central1-a"),
/// 			NetworkEndpointType: pulumi.String("GCE_VM_IP_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("WEIGHTED_ROUND_ROBIN"),
/// 			CustomMetrics: compute.BackendServiceCustomMetricArray{
/// 				&compute.BackendServiceCustomMetricArgs{
/// 					Name:   pulumi.String("orca.application_utilization"),
/// 					DryRun: pulumi.Bool(false),
/// 				},
/// 			},
/// 			Backends: compute.BackendServiceBackendArray{
/// 				&compute.BackendServiceBackendArgs{
/// 					Group:         defaultNetworkEndpointGroup.ID(),
/// 					BalancingMode: pulumi.String("CUSTOM_METRICS"),
/// 					CustomMetrics: compute.BackendServiceBackendCustomMetricArray{
/// 						&compute.BackendServiceBackendCustomMetricArgs{
/// 							Name:           pulumi.String("orca.cpu_utilization"),
/// 							MaxUtilization: pulumi.Float64(0.9),
/// 							DryRun:         pulumi.Bool(true),
/// 						},
/// 						&compute.BackendServiceBackendCustomMetricArgs{
/// 							Name:   pulumi.String("orca.named_metrics.foo"),
/// 							DryRun: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LogConfig: &compute.BackendServiceLogConfigArgs{
/// 				Enable:       pulumi.Bool(true),
/// 				OptionalMode: pulumi.String("CUSTOM"),
/// 				OptionalFields: pulumi.StringArray{
/// 					pulumi.String("orca_load_report"),
/// 					pulumi.String("tls.protocol"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceCustomMetricArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceLogConfigArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         // Zonal NEG with GCE_VM_IP_PORT
///         var defaultNetworkEndpointGroup = new NetworkEndpointGroup("defaultNetworkEndpointGroup", NetworkEndpointGroupArgs.builder()
///             .name("network-endpoint")
///             .network(default_.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .networkEndpointType("GCE_VM_IP_PORT")
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .localityLbPolicy("WEIGHTED_ROUND_ROBIN")
///             .customMetrics(BackendServiceCustomMetricArgs.builder()
///                 .name("orca.application_utilization")
///                 .dryRun(false)
///                 .build())
///             .backends(BackendServiceBackendArgs.builder()
///                 .group(defaultNetworkEndpointGroup.id())
///                 .balancingMode("CUSTOM_METRICS")
///                 .customMetrics(
///                     BackendServiceBackendCustomMetricArgs.builder()
///                         .name("orca.cpu_utilization")
///                         .maxUtilization(0.9)
///                         .dryRun(true)
///                         .build(),
///                     BackendServiceBackendCustomMetricArgs.builder()
///                         .name("orca.named_metrics.foo")
///                         .dryRun(false)
///                         .build())
///                 .build())
///             .logConfig(BackendServiceLogConfigArgs.builder()
///                 .enable(true)
///                 .optionalMode("CUSTOM")
///                 .optionalFields(
///                     "orca_load_report",
///                     "tls.protocol")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///   # Zonal NEG with GCE_VM_IP_PORT
///   defaultNetworkEndpointGroup:
///     type: gcp:compute:NetworkEndpointGroup
///     name: default
///     properties:
///       name: network-endpoint
///       network: ${default.id}
///       defaultPort: '90'
///       zone: us-central1-a
///       networkEndpointType: GCE_VM_IP_PORT
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       localityLbPolicy: WEIGHTED_ROUND_ROBIN
///       customMetrics:
///         - name: orca.application_utilization
///           dryRun: false
///       backends:
///         - group: ${defaultNetworkEndpointGroup.id}
///           balancingMode: CUSTOM_METRICS
///           customMetrics:
///             - name: orca.cpu_utilization
///               maxUtilization: 0.9
///               dryRun: true
///             - name: orca.named_metrics.foo
///               dryRun: false
///       logConfig:
///         enable: true
///         optionalMode: CUSTOM
///         optionalFields:
///           - orca_load_report
///           - tls.protocol
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Backend Service Tls Settings
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultBackendAuthenticationConfig = new gcp.networksecurity.BackendAuthenticationConfig("default", {
///     name: "authentication",
///     wellKnownRoots: "PUBLIC_ROOTS",
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: defaultHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     protocol: "HTTPS",
///     tlsSettings: {
///         sni: "example.com",
///         subjectAltNames: [
///             {
///                 dnsName: "example.com",
///             },
///             {
///                 uniformResourceIdentifier: "https://example.com",
///             },
///         ],
///         authenticationConfig: pulumi.interpolate`//networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_backend_authentication_config = gcp.networksecurity.BackendAuthenticationConfig("default",
///     name="authentication",
///     well_known_roots="PUBLIC_ROOTS")
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=default_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     protocol="HTTPS",
///     tls_settings={
///         "sni": "example.com",
///         "subject_alt_names": [
///             {
///                 "dns_name": "example.com",
///             },
///             {
///                 "uniform_resource_identifier": "https://example.com",
///             },
///         ],
///         "authentication_config": default_backend_authentication_config.id.apply(lambda id: f"//networksecurity.googleapis.com/{id}"),
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
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultBackendAuthenticationConfig = new Gcp.NetworkSecurity.BackendAuthenticationConfig("default", new()
///     {
///         Name = "authentication",
///         WellKnownRoots = "PUBLIC_ROOTS",
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = defaultHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Protocol = "HTTPS",
///         TlsSettings = new Gcp.Compute.Inputs.BackendServiceTlsSettingsArgs
///         {
///             Sni = "example.com",
///             SubjectAltNames = new[]
///             {
///                 new Gcp.Compute.Inputs.BackendServiceTlsSettingsSubjectAltNameArgs
///                 {
///                     DnsName = "example.com",
///                 },
///                 new Gcp.Compute.Inputs.BackendServiceTlsSettingsSubjectAltNameArgs
///                 {
///                     UniformResourceIdentifier = "https://example.com",
///                 },
///             },
///             AuthenticationConfig = defaultBackendAuthenticationConfig.Id.Apply(id => $"//networksecurity.googleapis.com/{id}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendAuthenticationConfig, err := networksecurity.NewBackendAuthenticationConfig(ctx, "default", &networksecurity.BackendAuthenticationConfigArgs{
/// 			Name:           pulumi.String("authentication"),
/// 			WellKnownRoots: pulumi.String("PUBLIC_ROOTS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("HTTPS"),
/// 			TlsSettings: &compute.BackendServiceTlsSettingsArgs{
/// 				Sni: pulumi.String("example.com"),
/// 				SubjectAltNames: compute.BackendServiceTlsSettingsSubjectAltNameArray{
/// 					&compute.BackendServiceTlsSettingsSubjectAltNameArgs{
/// 						DnsName: pulumi.String("example.com"),
/// 					},
/// 					&compute.BackendServiceTlsSettingsSubjectAltNameArgs{
/// 						UniformResourceIdentifier: pulumi.String("https://example.com"),
/// 					},
/// 				},
/// 				AuthenticationConfig: defaultBackendAuthenticationConfig.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("//networksecurity.googleapis.com/%v", id), nil
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfig;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfigArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceTlsSettingsArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultBackendAuthenticationConfig = new BackendAuthenticationConfig("defaultBackendAuthenticationConfig", BackendAuthenticationConfigArgs.builder()
///             .name("authentication")
///             .wellKnownRoots("PUBLIC_ROOTS")
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(defaultHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .protocol("HTTPS")
///             .tlsSettings(BackendServiceTlsSettingsArgs.builder()
///                 .sni("example.com")
///                 .subjectAltNames(
///                     BackendServiceTlsSettingsSubjectAltNameArgs.builder()
///                         .dnsName("example.com")
///                         .build(),
///                     BackendServiceTlsSettingsSubjectAltNameArgs.builder()
///                         .uniformResourceIdentifier("https://example.com")
///                         .build())
///                 .authenticationConfig(defaultBackendAuthenticationConfig.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${defaultHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       protocol: HTTPS
///       tlsSettings:
///         sni: example.com
///         subjectAltNames:
///           - dnsName: example.com
///           - uniformResourceIdentifier: https://example.com
///         authenticationConfig: //networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
///   defaultBackendAuthenticationConfig:
///     type: gcp:networksecurity:BackendAuthenticationConfig
///     name: default
///     properties:
///       name: authentication
///       wellKnownRoots: PUBLIC_ROOTS
/// ```
///
/// ### Backend Service Dynamic Forwarding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     dynamicForwarding: {
///         ipPortSelection: {
///             enabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     dynamic_forwarding={
///         "ip_port_selection": {
///             "enabled": True,
///         },
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
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         DynamicForwarding = new Gcp.Compute.Inputs.BackendServiceDynamicForwardingArgs
///         {
///             IpPortSelection = new Gcp.Compute.Inputs.BackendServiceDynamicForwardingIpPortSelectionArgs
///             {
///                 Enabled = true,
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
/// 		_, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			DynamicForwarding: &compute.BackendServiceDynamicForwardingArgs{
/// 				IpPortSelection: &compute.BackendServiceDynamicForwardingIpPortSelectionArgs{
/// 					Enabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceDynamicForwardingArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceDynamicForwardingIpPortSelectionArgs;
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
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .dynamicForwarding(BackendServiceDynamicForwardingArgs.builder()
///                 .ipPortSelection(BackendServiceDynamicForwardingIpPortSelectionArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       loadBalancingScheme: INTERNAL_MANAGED
///       dynamicForwarding:
///         ipPortSelection:
///           enabled: true
/// ```
///
///
/// ## Import
///
/// BackendService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/backendServices/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, BackendService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default projects/{{project}}/global/backendServices/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default {{name}}
/// ```
class BackendService extends pulumi.CustomResource {
  /// Lifetime of cookies in seconds if session_affinity is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  late final pulumi.Output<int?> affinityCookieTtlSec;
  /// The set of backends that serve this BackendService.
  /// Structure is documented below.
  late final pulumi.Output<List<BackendServiceBackend>?> backends;
  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceCdnPolicy> cdnPolicy;
  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the load_balancing_scheme is set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceCircuitBreakers?> circuitBreakers;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  late final pulumi.Output<String?> compressionMode;
  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  late final pulumi.Output<int?> connectionDrainingTimeoutSec;
  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing. This field only applies if the load_balancing_scheme is set to
  /// INTERNAL_SELF_MANAGED. This field is only applicable when locality_lb_policy is
  /// set to MAGLEV or RING_HASH.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceConsistentHash?> consistentHash;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  late final pulumi.Output<List<BackendServiceCustomMetric>?> customMetrics;
  /// Headers that the HTTP/S load balancer should add to proxied
  /// requests.
  late final pulumi.Output<List<String>?> customRequestHeaders;
  /// Headers that the HTTP/S load balancer should add to proxied
  /// responses.
  late final pulumi.Output<List<String>?> customResponseHeaders;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceDynamicForwarding?> dynamicForwarding;
  /// The resource URL for the edge security policy associated with this backend service.
  late final pulumi.Output<String?> edgeSecurityPolicy;
  /// If true, enable Cloud CDN for this BackendService.
  late final pulumi.Output<bool?> enableCdn;
  /// Specifies the canary migration state. Possible values are PREPARE, TEST_BY_PERCENTAGE, and
  /// TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic by percentage using externalManagedMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  late final pulumi.Output<String?> externalManagedMigrationState;
  /// Determines the fraction of requests that should be processed by the Global external
  /// Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// Session affinity options will slightly affect this routing behavior, for more details,
  /// see: Session Affinity.
  /// This value can only be set if the loadBalancingScheme in the backend service is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  late final pulumi.Output<double?> externalManagedMigrationTestingPercentage;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> generatedId;
  /// The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
  /// for health checking this BackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  /// For internal load balancing, a URL to a HealthCheck resource must be specified instead.
  late final pulumi.Output<String?> healthChecks;
  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, the Google-managed OAuth client is used.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceIap> iap;
  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String?> ipAddressSelectionPolicy;
  /// Indicates whether the backend service will be used with internal or
  /// external load balancing. A backend service created for one type of
  /// load balancing cannot be used with the other. For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL_SELF_MANAGED`, `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;
  /// A list of locality load balancing policies to be used in order of
  /// preference. Either the policy or the customPolicy field should be set.
  /// Overrides any value set in the localityLbPolicy field.
  /// localityLbPolicies is only supported when the BackendService is referenced
  /// by a URL Map that is referenced by a target gRPC proxy that has the
  /// validateForProxyless field set to true.
  /// Structure is documented below.
  late final pulumi.Output<List<BackendServiceLocalityLbPolicy>?> localityLbPolicies;
  /// The load balancing algorithm used within the scope of the locality.
  /// The possible values are:
  /// * `ROUND_ROBIN`: This is a simple policy in which each healthy backend
  /// is selected in round robin order.
  /// * `LEAST_REQUEST`: An O(1) algorithm which selects two random healthy
  /// hosts and picks the host which has fewer active requests.
  /// * `RING_HASH`: The ring/modulo hash load balancer implements consistent
  /// hashing to backends. The algorithm has the property that the
  /// addition/removal of a host from a set of N hosts only affects
  /// 1/N of the requests.
  /// * `RANDOM`: The load balancer selects a random healthy host.
  /// * `ORIGINAL_DESTINATION`: Backend host is selected based on the client
  /// connection metadata, i.e., connections are opened
  /// to the same address as the destination address of
  /// the incoming connection before the connection
  /// was redirected to the load balancer.
  /// * `MAGLEV`: used as a drop in replacement for the ring hash load balancer.
  /// Maglev is not as stable as ring hash but has faster table lookup
  /// build times and host selection times. For more information about
  /// Maglev, refer to https://ai.google/research/pubs/pub44824
  /// * `WEIGHTED_MAGLEV`: Per-instance weighted Load Balancing via health check
  /// reported weights. Only applicable to loadBalancingScheme
  /// EXTERNAL. If set, the Backend Service must
  /// configure a non legacy HTTP-based Health Check, and
  /// health check replies are expected to contain
  /// non-standard HTTP response header field
  /// X-Load-Balancing-Endpoint-Weight to specify the
  /// per-instance weights. If set, Load Balancing is weight
  /// based on the per-instance weights reported in the last
  /// processed health check replies, as long as every
  /// instance either reported a valid weight or had
  /// UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
  /// equal-weight.
  /// * `WEIGHTED_ROUND_ROBIN`: Per-endpoint weighted round-robin Load Balancing using weights computed
  /// from Backend reported Custom Metrics. If set, the Backend Service
  /// responses are expected to contain non-standard HTTP response header field
  /// X-Endpoint-Load-Metrics. The reported metrics
  /// to use for computing the weights are specified via the
  /// backends[].customMetrics fields.
  /// locality_lb_policy is applicable to either:
  /// * A regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C,
  /// and loadBalancingScheme set to INTERNAL_MANAGED.
  /// * A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// * A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  /// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  /// Network Load Balancing. The default is MAGLEV.
  /// If session_affinity is not NONE, and locality_lb_policy is not set to MAGLEV, WEIGHTED_MAGLEV,
  /// or RING_HASH, session affinity settings will not take effect.
  /// Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
  /// field set to true.
  /// Possible values are: `ROUND_ROBIN`, `LEAST_REQUEST`, `RING_HASH`, `RANDOM`, `ORIGINAL_DESTINATION`, `MAGLEV`, `WEIGHTED_MAGLEV`, `WEIGHTED_ROUND_ROBIN`.
  late final pulumi.Output<String?> localityLbPolicy;
  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceLogConfig> logConfig;
  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the
  /// beginning of the stream until the response has been completely processed, including all retries. A stream that
  /// does not complete in this duration is closed.
  /// If not specified, there will be no timeout limit, i.e. the maximum duration is infinite.
  /// This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service.
  /// This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceMaxStreamDuration?> maxStreamDuration;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceNetworkPassThroughLbTrafficPolicy?> networkPassThroughLbTrafficPolicy;
  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// Applicable backend service types can be a global backend service with the
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceOutlierDetection?> outlierDetection;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceParams?> params;
  /// Name of backend port. The same name should appear in the instance
  /// groups referenced by this service. Required when the load balancing
  /// scheme is EXTERNAL.
  late final pulumi.Output<String> portName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information. Must be set to GRPC when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  late final pulumi.Output<String> protocol;
  /// The security policy associated with this backend service.
  late final pulumi.Output<String?> securityPolicy;
  /// The security settings that apply to this backend service. This field is applicable to either
  /// a regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C, and
  /// load_balancing_scheme set to INTERNAL_MANAGED; or a global backend service with the
  /// load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceSecuritySettings?> securitySettings;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// URL to networkservices.ServiceLbPolicy resource.
  /// Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  late final pulumi.Output<String?> serviceLbPolicy;
  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `STRONG_COOKIE_AFFINITY`.
  late final pulumi.Output<String> sessionAffinity;
  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceStrongSessionAffinityCookie?> strongSessionAffinityCookie;
  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  late final pulumi.Output<int> timeoutSec;
  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  late final pulumi.Output<BackendServiceTlsSettings?> tlsSettings;

  /// Creates a new [BackendService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendService]. {@macro pulumi_compute_backend_service_backend_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendService(
    String name, {
    BackendServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendService:BackendService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.affinityCookieTtlSec = registerOutput<int?>('affinityCookieTtlSec');
    this.backends = registerOutput<List<BackendServiceBackend>?>('backends');
    this.cdnPolicy = registerOutput<BackendServiceCdnPolicy>('cdnPolicy');
    this.circuitBreakers = registerOutput<BackendServiceCircuitBreakers?>('circuitBreakers');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.connectionDrainingTimeoutSec = registerOutput<int?>('connectionDrainingTimeoutSec');
    this.consistentHash = registerOutput<BackendServiceConsistentHash?>('consistentHash');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customMetrics = registerOutput<List<BackendServiceCustomMetric>?>('customMetrics');
    this.customRequestHeaders = registerOutput<List<String>?>('customRequestHeaders');
    this.customResponseHeaders = registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.dynamicForwarding = registerOutput<BackendServiceDynamicForwarding?>('dynamicForwarding');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.externalManagedMigrationState = registerOutput<String?>('externalManagedMigrationState');
    this.externalManagedMigrationTestingPercentage = registerOutput<double?>('externalManagedMigrationTestingPercentage');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.generatedId = registerOutput<int>('generatedId');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.iap = registerOutput<BackendServiceIap>('iap');
    this.ipAddressSelectionPolicy = registerOutput<String?>('ipAddressSelectionPolicy');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.localityLbPolicies = registerOutput<List<BackendServiceLocalityLbPolicy>?>('localityLbPolicies');
    this.localityLbPolicy = registerOutput<String?>('localityLbPolicy');
    this.logConfig = registerOutput<BackendServiceLogConfig>('logConfig');
    this.maxStreamDuration = registerOutput<BackendServiceMaxStreamDuration?>('maxStreamDuration');
    this.name = registerOutput<String>('name');
    this.networkPassThroughLbTrafficPolicy = registerOutput<BackendServiceNetworkPassThroughLbTrafficPolicy?>('networkPassThroughLbTrafficPolicy');
    this.outlierDetection = registerOutput<BackendServiceOutlierDetection?>('outlierDetection');
    this.params = registerOutput<BackendServiceParams?>('params');
    this.portName = registerOutput<String>('portName');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.securitySettings = registerOutput<BackendServiceSecuritySettings?>('securitySettings');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceLbPolicy = registerOutput<String?>('serviceLbPolicy');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.strongSessionAffinityCookie = registerOutput<BackendServiceStrongSessionAffinityCookie?>('strongSessionAffinityCookie');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.tlsSettings = registerOutput<BackendServiceTlsSettings?>('tlsSettings');
  }

  /// Gets an existing [BackendService] resource's state with the given [name] and [id].
  static BackendService get(
    String name,
    pulumi.Input<String> id, {
    BackendServiceState? state,
  }) {
    return BackendService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendService:BackendService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.affinityCookieTtlSec = registerOutput<int?>('affinityCookieTtlSec');
    this.backends = registerOutput<List<BackendServiceBackend>?>('backends');
    this.cdnPolicy = registerOutput<BackendServiceCdnPolicy>('cdnPolicy');
    this.circuitBreakers = registerOutput<BackendServiceCircuitBreakers?>('circuitBreakers');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.connectionDrainingTimeoutSec = registerOutput<int?>('connectionDrainingTimeoutSec');
    this.consistentHash = registerOutput<BackendServiceConsistentHash?>('consistentHash');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customMetrics = registerOutput<List<BackendServiceCustomMetric>?>('customMetrics');
    this.customRequestHeaders = registerOutput<List<String>?>('customRequestHeaders');
    this.customResponseHeaders = registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.dynamicForwarding = registerOutput<BackendServiceDynamicForwarding?>('dynamicForwarding');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.externalManagedMigrationState = registerOutput<String?>('externalManagedMigrationState');
    this.externalManagedMigrationTestingPercentage = registerOutput<double?>('externalManagedMigrationTestingPercentage');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.generatedId = registerOutput<int>('generatedId');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.iap = registerOutput<BackendServiceIap>('iap');
    this.ipAddressSelectionPolicy = registerOutput<String?>('ipAddressSelectionPolicy');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.localityLbPolicies = registerOutput<List<BackendServiceLocalityLbPolicy>?>('localityLbPolicies');
    this.localityLbPolicy = registerOutput<String?>('localityLbPolicy');
    this.logConfig = registerOutput<BackendServiceLogConfig>('logConfig');
    this.maxStreamDuration = registerOutput<BackendServiceMaxStreamDuration?>('maxStreamDuration');
    this.name = registerOutput<String>('name');
    this.networkPassThroughLbTrafficPolicy = registerOutput<BackendServiceNetworkPassThroughLbTrafficPolicy?>('networkPassThroughLbTrafficPolicy');
    this.outlierDetection = registerOutput<BackendServiceOutlierDetection?>('outlierDetection');
    this.params = registerOutput<BackendServiceParams?>('params');
    this.portName = registerOutput<String>('portName');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.securitySettings = registerOutput<BackendServiceSecuritySettings?>('securitySettings');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceLbPolicy = registerOutput<String?>('serviceLbPolicy');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.strongSessionAffinityCookie = registerOutput<BackendServiceStrongSessionAffinityCookie?>('strongSessionAffinityCookie');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.tlsSettings = registerOutput<BackendServiceTlsSettings?>('tlsSettings');
  }
}
