import 'package:pulumi/pulumi.dart' as pulumi;
import 'healthcheck_args.dart';
import 'healthcheck_http_config.dart';
import 'healthcheck_state.dart';
import 'healthcheck_tcp_config.dart';

/// Accepted Permissions
///
/// - `Health Checks Read`
/// - `Health Checks Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleHealthcheck = new cloudflare.Healthcheck("example_healthcheck", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     address: "www.example.com",
///     name: "server-1",
///     checkRegions: [
///         "WEU",
///         "ENAM",
///     ],
///     consecutiveFails: 0,
///     consecutiveSuccesses: 0,
///     description: "Health check for www.example.com",
///     httpConfig: {
///         allowInsecure: true,
///         expectedBody: "success",
///         expectedCodes: [
///             "2xx",
///             "302",
///         ],
///         followRedirects: true,
///         header: {
///             Host: ["example.com"],
///             "X-App-ID": ["abc123"],
///         },
///         method: "GET",
///         path: "/health",
///         port: 0,
///     },
///     interval: 0,
///     retries: 0,
///     suspended: true,
///     tcpConfig: {
///         method: "connection_established",
///         port: 0,
///     },
///     timeout: 0,
///     type: "HTTPS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_healthcheck = cloudflare.Healthcheck("example_healthcheck",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     address="www.example.com",
///     name="server-1",
///     check_regions=[
///         "WEU",
///         "ENAM",
///     ],
///     consecutive_fails=0,
///     consecutive_successes=0,
///     description="Health check for www.example.com",
///     http_config={
///         "allow_insecure": True,
///         "expected_body": "success",
///         "expected_codes": [
///             "2xx",
///             "302",
///         ],
///         "follow_redirects": True,
///         "header": {
///             "Host": ["example.com"],
///             "X-App-ID": ["abc123"],
///         },
///         "method": "GET",
///         "path": "/health",
///         "port": 0,
///     },
///     interval=0,
///     retries=0,
///     suspended=True,
///     tcp_config={
///         "method": "connection_established",
///         "port": 0,
///     },
///     timeout=0,
///     type="HTTPS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleHealthcheck = new Cloudflare.Healthcheck("example_healthcheck", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Address = "www.example.com",
///         Name = "server-1",
///         CheckRegions = new[]
///         {
///             "WEU",
///             "ENAM",
///         },
///         ConsecutiveFails = 0,
///         ConsecutiveSuccesses = 0,
///         Description = "Health check for www.example.com",
///         HttpConfig = new Cloudflare.Inputs.HealthcheckHttpConfigArgs
///         {
///             AllowInsecure = true,
///             ExpectedBody = "success",
///             ExpectedCodes = new[]
///             {
///                 "2xx",
///                 "302",
///             },
///             FollowRedirects = true,
///             Header =
///             {
///                 { "Host", new[]
///                 {
///                     "example.com",
///                 } },
///                 { "X-App-ID", new[]
///                 {
///                     "abc123",
///                 } },
///             },
///             Method = "GET",
///             Path = "/health",
///             Port = 0,
///         },
///         Interval = 0,
///         Retries = 0,
///         Suspended = true,
///         TcpConfig = new Cloudflare.Inputs.HealthcheckTcpConfigArgs
///         {
///             Method = "connection_established",
///             Port = 0,
///         },
///         Timeout = 0,
///         Type = "HTTPS",
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
/// 		_, err := cloudflare.NewHealthcheck(ctx, "example_healthcheck", &cloudflare.HealthcheckArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Address: pulumi.String("www.example.com"),
/// 			Name:    pulumi.String("server-1"),
/// 			CheckRegions: pulumi.StringArray{
/// 				pulumi.String("WEU"),
/// 				pulumi.String("ENAM"),
/// 			},
/// 			ConsecutiveFails:     pulumi.Int(0),
/// 			ConsecutiveSuccesses: pulumi.Int(0),
/// 			Description:          pulumi.String("Health check for www.example.com"),
/// 			HttpConfig: &cloudflare.HealthcheckHttpConfigArgs{
/// 				AllowInsecure: pulumi.Bool(true),
/// 				ExpectedBody:  pulumi.String("success"),
/// 				ExpectedCodes: pulumi.StringArray{
/// 					pulumi.String("2xx"),
/// 					pulumi.String("302"),
/// 				},
/// 				FollowRedirects: pulumi.Bool(true),
/// 				Header: pulumi.StringArrayMap{
/// 					"Host": pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 					"X-App-ID": pulumi.StringArray{
/// 						pulumi.String("abc123"),
/// 					},
/// 				},
/// 				Method: pulumi.String("GET"),
/// 				Path:   pulumi.String("/health"),
/// 				Port:   pulumi.Int(0),
/// 			},
/// 			Interval:  pulumi.Int(0),
/// 			Retries:   pulumi.Int(0),
/// 			Suspended: pulumi.Bool(true),
/// 			TcpConfig: &cloudflare.HealthcheckTcpConfigArgs{
/// 				Method: pulumi.String("connection_established"),
/// 				Port:   pulumi.Int(0),
/// 			},
/// 			Timeout: pulumi.Int(0),
/// 			Type:    pulumi.String("HTTPS"),
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
/// resource "cloudflare_healthcheck" "example_healthcheck" {
///   zone_id               = "023e105f4ecef8ad9ca31a8372d0c353"
///   address               = "www.example.com"
///   name                  = "server-1"
///   check_regions         = ["WEU", "ENAM"]
///   consecutive_fails     = 0
///   consecutive_successes = 0
///   description           = "Health check for www.example.com"
///   http_config = {
///     allow_insecure   = true
///     expected_body    = "success"
///     expected_codes   = ["2xx", "302"]
///     follow_redirects = true
///     header = {
///       "Host"     = ["example.com"]
///       "X-App-ID" = ["abc123"]
///     }
///     method = "GET"
///     path   = "/health"
///     port   = 0
///   }
///   interval  = 0
///   retries   = 0
///   suspended = true
///   tcp_config = {
///     method = "connection_established"
///     port   = 0
///   }
///   timeout = 0
///   type    = "HTTPS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Healthcheck;
/// import com.pulumi.cloudflare.HealthcheckArgs;
/// import com.pulumi.cloudflare.inputs.HealthcheckHttpConfigArgs;
/// import com.pulumi.cloudflare.inputs.HealthcheckTcpConfigArgs;
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
///         var exampleHealthcheck = new Healthcheck("exampleHealthcheck", HealthcheckArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .address("www.example.com")
///             .name("server-1")
///             .checkRegions(
///                 "WEU",
///                 "ENAM")
///             .consecutiveFails(0)
///             .consecutiveSuccesses(0)
///             .description("Health check for www.example.com")
///             .httpConfig(HealthcheckHttpConfigArgs.builder()
///                 .allowInsecure(true)
///                 .expectedBody("success")
///                 .expectedCodes(
///                     "2xx",
///                     "302")
///                 .followRedirects(true)
///                 .header(Map.ofEntries(
///                     Map.entry("Host", Arrays.asList("example.com")),
///                     Map.entry("X-App-ID", Arrays.asList("abc123"))
///                 ))
///                 .method("GET")
///                 .path("/health")
///                 .port(0)
///                 .build())
///             .interval(0)
///             .retries(0)
///             .suspended(true)
///             .tcpConfig(HealthcheckTcpConfigArgs.builder()
///                 .method("connection_established")
///                 .port(0)
///                 .build())
///             .timeout(0)
///             .type("HTTPS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleHealthcheck:
///     type: cloudflare:Healthcheck
///     name: example_healthcheck
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       address: www.example.com
///       name: server-1
///       checkRegions:
///         - WEU
///         - ENAM
///       consecutiveFails: 0
///       consecutiveSuccesses: 0
///       description: Health check for www.example.com
///       httpConfig:
///         allowInsecure: true
///         expectedBody: success
///         expectedCodes:
///           - 2xx
///           - '302'
///         followRedirects: true
///         header:
///           Host:
///             - example.com
///           X-App-ID:
///             - abc123
///         method: GET
///         path: /health
///         port: 0
///       interval: 0
///       retries: 0
///       suspended: true
///       tcpConfig:
///         method: connection_established
///         port: 0
///       timeout: 0
///       type: HTTPS
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/healthcheck:Healthcheck example '<zone_id>/<healthcheck_id>'
/// ```
class Healthcheck extends pulumi.CustomResource {
  /// The hostname or IP address of the origin server to run health checks on.
  late final pulumi.Output<String> address;
  /// A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  late final pulumi.Output<List<String>?> checkRegions;
  /// The number of consecutive fails required from a health check before changing the health to unhealthy.
  late final pulumi.Output<int> consecutiveFails;
  /// The number of consecutive successes required from a health check before changing the health to healthy.
  late final pulumi.Output<int> consecutiveSuccesses;
  late final pulumi.Output<String> createdOn;
  /// A human-readable description of the health check.
  late final pulumi.Output<String> description;
  /// The current failure reason if status is unhealthy.
  late final pulumi.Output<String> failureReason;
  /// Parameters specific to an HTTP or HTTPS health check.
  late final pulumi.Output<HealthcheckHttpConfig> httpConfig;
  /// The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  late final pulumi.Output<int> interval;
  late final pulumi.Output<String> modifiedOn;
  /// A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  late final pulumi.Output<String> name;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  late final pulumi.Output<int> retries;
  /// The current status of the origin server according to the health check.
  /// Available values: "unknown", "healthy", "unhealthy", "suspended".
  late final pulumi.Output<String> status;
  /// If suspended, no health checks are sent to the origin.
  late final pulumi.Output<bool> suspended;
  /// Parameters specific to TCP health check.
  late final pulumi.Output<HealthcheckTcpConfig> tcpConfig;
  /// The timeout (in seconds) before marking the health check as failed.
  late final pulumi.Output<int> timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  late final pulumi.Output<String> type;
  /// Identifier
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Healthcheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Healthcheck]. {@macro pulumi_index_healthcheck_healthcheck_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Healthcheck(
    String name, {
    HealthcheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/healthcheck:Healthcheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    address = registerOutput<String>('address');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    consecutiveFails = registerOutput<int>('consecutiveFails');
    consecutiveSuccesses = registerOutput<int>('consecutiveSuccesses');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    failureReason = registerOutput<String>('failureReason');
    httpConfig = registerOutput<HealthcheckHttpConfig>('httpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<int>('interval');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    retries = registerOutput<int>('retries');
    status = registerOutput<String>('status');
    suspended = registerOutput<bool>('suspended');
    tcpConfig = registerOutput<HealthcheckTcpConfig>('tcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckTcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Healthcheck] resource's state with the given [name] and [id].
  static Healthcheck get(
    String name,
    pulumi.Input<String> id, {
    HealthcheckState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Healthcheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Healthcheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/healthcheck:Healthcheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    consecutiveFails = registerOutput<int>('consecutiveFails');
    consecutiveSuccesses = registerOutput<int>('consecutiveSuccesses');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    failureReason = registerOutput<String>('failureReason');
    httpConfig = registerOutput<HealthcheckHttpConfig>('httpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<int>('interval');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    retries = registerOutput<int>('retries');
    status = registerOutput<String>('status');
    suspended = registerOutput<bool>('suspended');
    tcpConfig = registerOutput<HealthcheckTcpConfig>('tcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckTcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Healthcheck] resource.
  Healthcheck.reference(String urn)
    : super(
        'cloudflare:index/healthcheck:Healthcheck',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    address = registerOutput<String>('address');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    consecutiveFails = registerOutput<int>('consecutiveFails');
    consecutiveSuccesses = registerOutput<int>('consecutiveSuccesses');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    failureReason = registerOutput<String>('failureReason');
    httpConfig = registerOutput<HealthcheckHttpConfig>('httpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<int>('interval');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    retries = registerOutput<int>('retries');
    status = registerOutput<String>('status');
    suspended = registerOutput<bool>('suspended');
    tcpConfig = registerOutput<HealthcheckTcpConfig>('tcpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthcheckTcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int>('timeout');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }
}
