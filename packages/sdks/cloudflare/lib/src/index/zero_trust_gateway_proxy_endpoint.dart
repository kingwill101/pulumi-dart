import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_proxy_endpoint_args.dart';
import 'zero_trust_gateway_proxy_endpoint_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewayProxyEndpoint = new cloudflare.ZeroTrustGatewayProxyEndpoint("example_zero_trust_gateway_proxy_endpoint", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "Devops team",
///     kind: "ip",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_proxy_endpoint = cloudflare.ZeroTrustGatewayProxyEndpoint("example_zero_trust_gateway_proxy_endpoint",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="Devops team",
///     kind="ip")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustGatewayProxyEndpoint = new Cloudflare.ZeroTrustGatewayProxyEndpoint("example_zero_trust_gateway_proxy_endpoint", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "Devops team",
///         Kind = "ip",
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
/// 		_, err := cloudflare.NewZeroTrustGatewayProxyEndpoint(ctx, "example_zero_trust_gateway_proxy_endpoint", &cloudflare.ZeroTrustGatewayProxyEndpointArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:      pulumi.String("Devops team"),
/// 			Kind:      pulumi.String("ip"),
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
/// resource "cloudflare_zerotrustgatewayproxyendpoint" "example_zero_trust_gateway_proxy_endpoint" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   name       = "Devops team"
///   kind       = "ip"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewayProxyEndpoint;
/// import com.pulumi.cloudflare.ZeroTrustGatewayProxyEndpointArgs;
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
///         var exampleZeroTrustGatewayProxyEndpoint = new ZeroTrustGatewayProxyEndpoint("exampleZeroTrustGatewayProxyEndpoint", ZeroTrustGatewayProxyEndpointArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("Devops team")
///             .kind("ip")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewayProxyEndpoint:
///     type: cloudflare:ZeroTrustGatewayProxyEndpoint
///     name: example_zero_trust_gateway_proxy_endpoint
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: Devops team
///       kind: ip
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustGatewayProxyEndpoint:ZeroTrustGatewayProxyEndpoint example '<account_id>/<proxy_endpoint_id>'
/// ```
class ZeroTrustGatewayProxyEndpoint extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Specify the list of CIDRs to restrict ingress connections.
  late final pulumi.Output<List<String>?> ips;
  /// The proxy endpoint kind
  /// Available values: "ip", "identity".
  late final pulumi.Output<String> kind;
  /// Specify the name of the proxy endpoint.
  late final pulumi.Output<String> name;
  /// Specify the subdomain to use as the destination in the proxy client.
  late final pulumi.Output<String> subdomain;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustGatewayProxyEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustGatewayProxyEndpoint]. {@macro pulumi_index_zero_trust_gateway_proxy_endpoint_zero_trust_gateway_proxy_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustGatewayProxyEndpoint(
    String name, {
    ZeroTrustGatewayProxyEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayProxyEndpoint:ZeroTrustGatewayProxyEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    subdomain = registerOutput<String>('subdomain');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustGatewayProxyEndpoint] resource's state with the given [name] and [id].
  static ZeroTrustGatewayProxyEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustGatewayProxyEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustGatewayProxyEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustGatewayProxyEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayProxyEndpoint:ZeroTrustGatewayProxyEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    subdomain = registerOutput<String>('subdomain');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustGatewayProxyEndpoint] resource.
  ZeroTrustGatewayProxyEndpoint.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustGatewayProxyEndpoint:ZeroTrustGatewayProxyEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    subdomain = registerOutput<String>('subdomain');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
