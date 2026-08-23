import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_service_args.dart';
import 'load_balancer_service_health_check.dart';
import 'load_balancer_service_http.dart';
import 'load_balancer_service_state.dart';

/// Define services for Hetzner Cloud Load Balancers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const loadBalancer = new hcloud.LoadBalancer("load_balancer", {
///     name: "my-load-balancer",
///     loadBalancerType: "lb11",
///     location: "nbg1",
/// });
/// const loadBalancerService = new hcloud.LoadBalancerService("load_balancer_service", {
///     loadBalancerId: loadBalancer.id,
///     protocol: "http",
///     http: {
///         stickySessions: true,
///         cookieName: "EXAMPLE_STICKY",
///     },
///     healthCheck: {
///         protocol: "http",
///         port: 80,
///         interval: 10,
///         timeout: 5,
///         http: {
///             domain: "example.com",
///             path: "/healthz",
///             response: "OK",
///             tls: true,
///             statusCodes: ["200"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// load_balancer = hcloud.LoadBalancer("load_balancer",
///     name="my-load-balancer",
///     load_balancer_type="lb11",
///     location="nbg1")
/// load_balancer_service = hcloud.LoadBalancerService("load_balancer_service",
///     load_balancer_id=load_balancer.id,
///     protocol="http",
///     http={
///         "sticky_sessions": True,
///         "cookie_name": "EXAMPLE_STICKY",
///     },
///     health_check={
///         "protocol": "http",
///         "port": 80,
///         "interval": 10,
///         "timeout": 5,
///         "http": {
///             "domain": "example.com",
///             "path": "/healthz",
///             "response": "OK",
///             "tls": True,
///             "status_codes": ["200"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new HCloud.LoadBalancer("load_balancer", new()
///     {
///         Name = "my-load-balancer",
///         LoadBalancerType = "lb11",
///         Location = "nbg1",
///     });
///
///     var loadBalancerService = new HCloud.LoadBalancerService("load_balancer_service", new()
///     {
///         LoadBalancerId = loadBalancer.Id,
///         Protocol = "http",
///         Http = new HCloud.Inputs.LoadBalancerServiceHttpArgs
///         {
///             StickySessions = true,
///             CookieName = "EXAMPLE_STICKY",
///         },
///         HealthCheck = new HCloud.Inputs.LoadBalancerServiceHealthCheckArgs
///         {
///             Protocol = "http",
///             Port = 80,
///             Interval = 10,
///             Timeout = 5,
///             Http = new HCloud.Inputs.LoadBalancerServiceHealthCheckHttpArgs
///             {
///                 Domain = "example.com",
///                 Path = "/healthz",
///                 Response = "OK",
///                 Tls = true,
///                 StatusCodes = new[]
///                 {
///                     "200",
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
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		loadBalancer, err := hcloud.NewLoadBalancer(ctx, "load_balancer", &hcloud.LoadBalancerArgs{
/// 			Name:             pulumi.String("my-load-balancer"),
/// 			LoadBalancerType: pulumi.String("lb11"),
/// 			Location:         pulumi.String("nbg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewLoadBalancerService(ctx, "load_balancer_service", &hcloud.LoadBalancerServiceArgs{
/// 			LoadBalancerId: loadBalancer.ID(),
/// 			Protocol:       pulumi.String("http"),
/// 			Http: &hcloud.LoadBalancerServiceHttpArgs{
/// 				StickySessions: pulumi.Bool(true),
/// 				CookieName:     pulumi.String("EXAMPLE_STICKY"),
/// 			},
/// 			HealthCheck: &hcloud.LoadBalancerServiceHealthCheckArgs{
/// 				Protocol: pulumi.String("http"),
/// 				Port:     pulumi.Int(80),
/// 				Interval: pulumi.Int(10),
/// 				Timeout:  pulumi.Int(5),
/// 				Http: &hcloud.LoadBalancerServiceHealthCheckHttpArgs{
/// 					Domain:   pulumi.String("example.com"),
/// 					Path:     pulumi.String("/healthz"),
/// 					Response: pulumi.String("OK"),
/// 					Tls:      pulumi.Bool(true),
/// 					StatusCodes: pulumi.StringArray{
/// 						pulumi.String("200"),
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
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_loadbalancer" "load_balancer" {
///   name               = "my-load-balancer"
///   load_balancer_type = "lb11"
///   location           = "nbg1"
/// }
/// resource "hcloud_loadbalancerservice" "load_balancer_service" {
///   load_balancer_id = hcloud_loadbalancer.load_balancer.id
///   protocol         = "http"
///   http = {
///     sticky_sessions = true
///     cookie_name     = "EXAMPLE_STICKY"
///   }
///   health_check = {
///     protocol = "http"
///     port     = 80
///     interval = 10
///     timeout  = 5
///     http = {
///       domain       = "example.com"
///       path         = "/healthz"
///       response     = "OK"
///       tls          = true
///       status_codes = ["200"]
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
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
/// import com.pulumi.hcloud.LoadBalancerService;
/// import com.pulumi.hcloud.LoadBalancerServiceArgs;
/// import com.pulumi.hcloud.inputs.LoadBalancerServiceHttpArgs;
/// import com.pulumi.hcloud.inputs.LoadBalancerServiceHealthCheckArgs;
/// import com.pulumi.hcloud.inputs.LoadBalancerServiceHealthCheckHttpArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .name("my-load-balancer")
///             .loadBalancerType("lb11")
///             .location("nbg1")
///             .build());
///
///         var loadBalancerService = new LoadBalancerService("loadBalancerService", LoadBalancerServiceArgs.builder()
///             .loadBalancerId(loadBalancer.id())
///             .protocol("http")
///             .http(LoadBalancerServiceHttpArgs.builder()
///                 .stickySessions(true)
///                 .cookieName("EXAMPLE_STICKY")
///                 .build())
///             .healthCheck(LoadBalancerServiceHealthCheckArgs.builder()
///                 .protocol("http")
///                 .port(80)
///                 .interval(10)
///                 .timeout(5)
///                 .http(LoadBalancerServiceHealthCheckHttpArgs.builder()
///                     .domain("example.com")
///                     .path("/healthz")
///                     .response("OK")
///                     .tls(true)
///                     .statusCodes("200")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loadBalancer:
///     type: hcloud:LoadBalancer
///     name: load_balancer
///     properties:
///       name: my-load-balancer
///       loadBalancerType: lb11
///       location: nbg1
///   loadBalancerService:
///     type: hcloud:LoadBalancerService
///     name: load_balancer_service
///     properties:
///       loadBalancerId: ${loadBalancer.id}
///       protocol: http
///       http:
///         stickySessions: true
///         cookieName: EXAMPLE_STICKY
///       healthCheck:
///         protocol: http
///         port: 80
///         interval: 10
///         timeout: 5
///         http:
///           domain: example.com
///           path: /healthz
///           response: OK
///           tls: true
///           statusCodes:
///             - '200'
/// ```
///
///
/// ### TLS Termination and Passthrough
///
/// The Hetzner Cloud API has no dedicated "TLS passthrough" option. Whether the Load
/// Balancer terminates TLS or passes it through to the targets is determined by the
/// service `protocol`:
///
/// - **TLS termination** — set `protocol = "https"` and attach one or more
/// `certificates`. The Load Balancer terminates the TLS connection, so it can
/// inspect and modify HTTP traffic (sticky sessions, HTTP-to-HTTPS redirects, HTTP
/// health checks, etc.).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const tlsTermination = new hcloud.LoadBalancerService("tls_termination", {
///     loadBalancerId: loadBalancer.id,
///     protocol: "https",
///     listenPort: 443,
///     destinationPort: 80,
///     http: {
///         certificates: [cert.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// tls_termination = hcloud.LoadBalancerService("tls_termination",
///     load_balancer_id=load_balancer["id"],
///     protocol="https",
///     listen_port=443,
///     destination_port=80,
///     http={
///         "certificates": [cert["id"]],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tlsTermination = new HCloud.LoadBalancerService("tls_termination", new()
///     {
///         LoadBalancerId = loadBalancer.Id,
///         Protocol = "https",
///         ListenPort = 443,
///         DestinationPort = 80,
///         Http = new HCloud.Inputs.LoadBalancerServiceHttpArgs
///         {
///             Certificates = new[]
///             {
///                 cert.Id,
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
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewLoadBalancerService(ctx, "tls_termination", &hcloud.LoadBalancerServiceArgs{
/// 			LoadBalancerId:  pulumi.Any(loadBalancer.Id),
/// 			Protocol:        pulumi.String("https"),
/// 			ListenPort:      pulumi.Int(443),
/// 			DestinationPort: pulumi.Int(80),
/// 			Http: &hcloud.LoadBalancerServiceHttpArgs{
/// 				Certificates: pulumi.IntArray{
/// 					cert.Id,
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
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_loadbalancerservice" "tls_termination" {
///   load_balancer_id = loadBalancer.id
///   protocol         = "https"
///   listen_port      = 443
///   destination_port = 80
///   http = {
///     certificates = [cert.id]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.LoadBalancerService;
/// import com.pulumi.hcloud.LoadBalancerServiceArgs;
/// import com.pulumi.hcloud.inputs.LoadBalancerServiceHttpArgs;
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
///         var tlsTermination = new LoadBalancerService("tlsTermination", LoadBalancerServiceArgs.builder()
///             .loadBalancerId(loadBalancer.id())
///             .protocol("https")
///             .listenPort(443)
///             .destinationPort(80)
///             .http(LoadBalancerServiceHttpArgs.builder()
///                 .certificates(cert.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tlsTermination:
///     type: hcloud:LoadBalancerService
///     name: tls_termination
///     properties:
///       loadBalancerId: ${loadBalancer.id}
///       protocol: https
///       listenPort: 443
///       destinationPort: 80
///       http:
///         certificates:
///           - ${cert.id}
/// ```
///
///
/// - **TLS passthrough** — set `protocol = "tcp"` and forward the TLS port (usually
/// `443`). The Load Balancer forwards the raw TCP stream to the targets, which
/// terminate TLS themselves. No `certificates` are configured on the Load Balancer,
/// and HTTP-level features are unavailable because the traffic stays encrypted.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const tlsPassthrough = new hcloud.LoadBalancerService("tls_passthrough", {
///     loadBalancerId: loadBalancer.id,
///     protocol: "tcp",
///     listenPort: 443,
///     destinationPort: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// tls_passthrough = hcloud.LoadBalancerService("tls_passthrough",
///     load_balancer_id=load_balancer["id"],
///     protocol="tcp",
///     listen_port=443,
///     destination_port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tlsPassthrough = new HCloud.LoadBalancerService("tls_passthrough", new()
///     {
///         LoadBalancerId = loadBalancer.Id,
///         Protocol = "tcp",
///         ListenPort = 443,
///         DestinationPort = 443,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewLoadBalancerService(ctx, "tls_passthrough", &hcloud.LoadBalancerServiceArgs{
/// 			LoadBalancerId:  pulumi.Any(loadBalancer.Id),
/// 			Protocol:        pulumi.String("tcp"),
/// 			ListenPort:      pulumi.Int(443),
/// 			DestinationPort: pulumi.Int(443),
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
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_loadbalancerservice" "tls_passthrough" {
///   load_balancer_id = loadBalancer.id
///   protocol         = "tcp"
///   listen_port      = 443
///   destination_port = 443
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.LoadBalancerService;
/// import com.pulumi.hcloud.LoadBalancerServiceArgs;
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
///         var tlsPassthrough = new LoadBalancerService("tlsPassthrough", LoadBalancerServiceArgs.builder()
///             .loadBalancerId(loadBalancer.id())
///             .protocol("tcp")
///             .listenPort(443)
///             .destinationPort(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tlsPassthrough:
///     type: hcloud:LoadBalancerService
///     name: tls_passthrough
///     properties:
///       loadBalancerId: ${loadBalancer.id}
///       protocol: tcp
///       listenPort: 443
///       destinationPort: 443
/// ```
///
///
/// ## Import
///
/// Load Balancer Service entries can be imported using a compound ID with the following format:
/// `&lt;load-balancer-id&gt;__&lt;listen-port&gt;`
///
/// ```sh
/// $ pulumi import hcloud:index/loadBalancerService:LoadBalancerService example "${LOAD_BALANCER_ID}__${LISTEN_PORT}"
/// ```
class LoadBalancerService extends pulumi.CustomResource {
  /// Port the service connects to the targets on, required if protocol is `tcp`. Can be everything between `1` and `65535`.
  late final pulumi.Output<int> destinationPort;
  /// Health Check configuration when `protocol` is `http` or `https`.
  late final pulumi.Output<LoadBalancerServiceHealthCheck> healthCheck;
  /// HTTP configuration when `protocol` is `http` or `https`.
  late final pulumi.Output<LoadBalancerServiceHttp> http;
  /// Port the service listen on, required if protocol is `tcp`. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  late final pulumi.Output<int> listenPort;
  /// Id of the load balancer this service belongs to.
  late final pulumi.Output<String> loadBalancerId;
  /// Protocol of the service. `http`, `https` or `tcp`
  late final pulumi.Output<String> protocol;
  /// Enable proxyprotocol.
  late final pulumi.Output<bool> proxyprotocol;

  /// Creates a new [LoadBalancerService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerService]. {@macro pulumi_index_load_balancer_service_load_balancer_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerService(
    String name, {
    LoadBalancerServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/loadBalancerService:LoadBalancerService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationPort = registerOutput<int>('destinationPort');
    healthCheck = registerOutput<LoadBalancerServiceHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerServiceHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http = registerOutput<LoadBalancerServiceHttp>('http', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerServiceHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listenPort = registerOutput<int>('listenPort');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    protocol = registerOutput<String>('protocol');
    proxyprotocol = registerOutput<bool>('proxyprotocol');
  }

  /// Gets an existing [LoadBalancerService] resource's state with the given [name] and [id].
  static LoadBalancerService get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerServiceState? state,
  }) {
    return LoadBalancerService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/loadBalancerService:LoadBalancerService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationPort = registerOutput<int>('destinationPort');
    healthCheck = registerOutput<LoadBalancerServiceHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerServiceHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http = registerOutput<LoadBalancerServiceHttp>('http', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerServiceHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listenPort = registerOutput<int>('listenPort');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    protocol = registerOutput<String>('protocol');
    proxyprotocol = registerOutput<bool>('proxyprotocol');
  }
}
