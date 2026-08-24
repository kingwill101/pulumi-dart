import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_monitor_args.dart';
import 'load_balancer_monitor_state.dart';

/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read`
/// - `Load Balancing: Monitors and Pools Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLoadBalancerMonitor = new cloudflare.LoadBalancerMonitor("example_load_balancer_monitor", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     allowInsecure: true,
///     consecutiveDown: 0,
///     consecutiveUp: 0,
///     description: "Login page monitor",
///     expectedBody: "alive",
///     expectedCodes: "2xx",
///     followRedirects: true,
///     header: {
///         Host: ["example.com"],
///         "X-App-ID": ["abc123"],
///     },
///     interval: 0,
///     method: "GET",
///     path: "/health",
///     port: 0,
///     probeZone: "example.com",
///     retries: 0,
///     timeout: 0,
///     type: "https",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_load_balancer_monitor = cloudflare.LoadBalancerMonitor("example_load_balancer_monitor",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     allow_insecure=True,
///     consecutive_down=0,
///     consecutive_up=0,
///     description="Login page monitor",
///     expected_body="alive",
///     expected_codes="2xx",
///     follow_redirects=True,
///     header={
///         "Host": ["example.com"],
///         "X-App-ID": ["abc123"],
///     },
///     interval=0,
///     method="GET",
///     path="/health",
///     port=0,
///     probe_zone="example.com",
///     retries=0,
///     timeout=0,
///     type="https")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLoadBalancerMonitor = new Cloudflare.LoadBalancerMonitor("example_load_balancer_monitor", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AllowInsecure = true,
///         ConsecutiveDown = 0,
///         ConsecutiveUp = 0,
///         Description = "Login page monitor",
///         ExpectedBody = "alive",
///         ExpectedCodes = "2xx",
///         FollowRedirects = true,
///         Header =
///         {
///             { "Host", new[]
///             {
///                 "example.com",
///             } },
///             { "X-App-ID", new[]
///             {
///                 "abc123",
///             } },
///         },
///         Interval = 0,
///         Method = "GET",
///         Path = "/health",
///         Port = 0,
///         ProbeZone = "example.com",
///         Retries = 0,
///         Timeout = 0,
///         Type = "https",
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
/// 		_, err := cloudflare.NewLoadBalancerMonitor(ctx, "example_load_balancer_monitor", &cloudflare.LoadBalancerMonitorArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AllowInsecure:   pulumi.Bool(true),
/// 			ConsecutiveDown: pulumi.Int(0),
/// 			ConsecutiveUp:   pulumi.Int(0),
/// 			Description:     pulumi.String("Login page monitor"),
/// 			ExpectedBody:    pulumi.String("alive"),
/// 			ExpectedCodes:   pulumi.String("2xx"),
/// 			FollowRedirects: pulumi.Bool(true),
/// 			Header: pulumi.StringArrayMap{
/// 				"Host": pulumi.StringArray{
/// 					pulumi.String("example.com"),
/// 				},
/// 				"X-App-ID": pulumi.StringArray{
/// 					pulumi.String("abc123"),
/// 				},
/// 			},
/// 			Interval:  pulumi.Int(0),
/// 			Method:    pulumi.String("GET"),
/// 			Path:      pulumi.String("/health"),
/// 			Port:      pulumi.Int(0),
/// 			ProbeZone: pulumi.String("example.com"),
/// 			Retries:   pulumi.Int(0),
/// 			Timeout:   pulumi.Int(0),
/// 			Type:      pulumi.String("https"),
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
/// resource "cloudflare_loadbalancermonitor" "example_load_balancer_monitor" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   allow_insecure   = true
///   consecutive_down = 0
///   consecutive_up   = 0
///   description      = "Login page monitor"
///   expected_body    = "alive"
///   expected_codes   = "2xx"
///   follow_redirects = true
///   header = {
///     "Host"     = ["example.com"]
///     "X-App-ID" = ["abc123"]
///   }
///   interval   = 0
///   method     = "GET"
///   path       = "/health"
///   port       = 0
///   probe_zone = "example.com"
///   retries    = 0
///   timeout    = 0
///   type       = "https"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LoadBalancerMonitor;
/// import com.pulumi.cloudflare.LoadBalancerMonitorArgs;
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
///         var exampleLoadBalancerMonitor = new LoadBalancerMonitor("exampleLoadBalancerMonitor", LoadBalancerMonitorArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .allowInsecure(true)
///             .consecutiveDown(0)
///             .consecutiveUp(0)
///             .description("Login page monitor")
///             .expectedBody("alive")
///             .expectedCodes("2xx")
///             .followRedirects(true)
///             .header(Map.ofEntries(
///                 Map.entry("Host", Arrays.asList("example.com")),
///                 Map.entry("X-App-ID", Arrays.asList("abc123"))
///             ))
///             .interval(0)
///             .method("GET")
///             .path("/health")
///             .port(0)
///             .probeZone("example.com")
///             .retries(0)
///             .timeout(0)
///             .type("https")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLoadBalancerMonitor:
///     type: cloudflare:LoadBalancerMonitor
///     name: example_load_balancer_monitor
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       allowInsecure: true
///       consecutiveDown: 0
///       consecutiveUp: 0
///       description: Login page monitor
///       expectedBody: alive
///       expectedCodes: 2xx
///       followRedirects: true
///       header:
///         Host:
///           - example.com
///         X-App-ID:
///           - abc123
///       interval: 0
///       method: GET
///       path: /health
///       port: 0
///       probeZone: example.com
///       retries: 0
///       timeout: 0
///       type: https
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/loadBalancerMonitor:LoadBalancerMonitor example '<account_id>/<monitor_id>'
/// ```
class LoadBalancerMonitor extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<bool> allowInsecure;
  /// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  late final pulumi.Output<int?> consecutiveDown;
  /// To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  late final pulumi.Output<int?> consecutiveUp;
  late final pulumi.Output<String> createdOn;
  /// Object description.
  late final pulumi.Output<String> description;
  /// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<String> expectedBody;
  /// The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<String> expectedCodes;
  /// Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<bool> followRedirects;
  /// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<Map<String, List<String>>?> header;
  /// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  late final pulumi.Output<int> interval;
  /// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  late final pulumi.Output<String> method;
  late final pulumi.Output<String> modifiedOn;
  /// The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<String> path;
  /// The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  late final pulumi.Output<int?> port;
  /// Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  late final pulumi.Output<String> probeZone;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  late final pulumi.Output<int> retries;
  /// The timeout (in seconds) before marking the health check as failed.
  late final pulumi.Output<int> timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  /// Available values: "http", "https", "tcp", "udp*icmp", "icmp*ping", "smtp".
  late final pulumi.Output<String> type;

  /// Creates a new [LoadBalancerMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerMonitor]. {@macro pulumi_index_load_balancer_monitor_load_balancer_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerMonitor(
    String name, {
    LoadBalancerMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerMonitor:LoadBalancerMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowInsecure = registerOutput<bool>('allowInsecure');
    consecutiveDown = registerOutput<int?>('consecutiveDown');
    consecutiveUp = registerOutput<int?>('consecutiveUp');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    expectedBody = registerOutput<String>('expectedBody');
    expectedCodes = registerOutput<String>('expectedCodes');
    followRedirects = registerOutput<bool>('followRedirects');
    header = registerOutput<Map<String, List<String>>?>('header', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    interval = registerOutput<int>('interval');
    method = registerOutput<String>('method');
    modifiedOn = registerOutput<String>('modifiedOn');
    path = registerOutput<String>('path');
    port = registerOutput<int?>('port');
    probeZone = registerOutput<String>('probeZone');
    retries = registerOutput<int>('retries');
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [LoadBalancerMonitor] resource's state with the given [name] and [id].
  static LoadBalancerMonitor get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerMonitorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoadBalancerMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoadBalancerMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerMonitor:LoadBalancerMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowInsecure = registerOutput<bool>('allowInsecure');
    consecutiveDown = registerOutput<int?>('consecutiveDown');
    consecutiveUp = registerOutput<int?>('consecutiveUp');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    expectedBody = registerOutput<String>('expectedBody');
    expectedCodes = registerOutput<String>('expectedCodes');
    followRedirects = registerOutput<bool>('followRedirects');
    header = registerOutput<Map<String, List<String>>?>('header', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    interval = registerOutput<int>('interval');
    method = registerOutput<String>('method');
    modifiedOn = registerOutput<String>('modifiedOn');
    path = registerOutput<String>('path');
    port = registerOutput<int?>('port');
    probeZone = registerOutput<String>('probeZone');
    retries = registerOutput<int>('retries');
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LoadBalancerMonitor] resource.
  LoadBalancerMonitor.reference(String urn)
    : super(
        'cloudflare:index/loadBalancerMonitor:LoadBalancerMonitor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowInsecure = registerOutput<bool>('allowInsecure');
    consecutiveDown = registerOutput<int?>('consecutiveDown');
    consecutiveUp = registerOutput<int?>('consecutiveUp');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    expectedBody = registerOutput<String>('expectedBody');
    expectedCodes = registerOutput<String>('expectedCodes');
    followRedirects = registerOutput<bool>('followRedirects');
    header = registerOutput<Map<String, List<String>>?>('header', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    interval = registerOutput<int>('interval');
    method = registerOutput<String>('method');
    modifiedOn = registerOutput<String>('modifiedOn');
    path = registerOutput<String>('path');
    port = registerOutput<int?>('port');
    probeZone = registerOutput<String>('probeZone');
    retries = registerOutput<int>('retries');
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
  }
}
