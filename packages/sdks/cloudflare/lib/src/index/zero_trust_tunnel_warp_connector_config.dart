import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_warp_connector_config_args.dart';
import 'zero_trust_tunnel_warp_connector_config_config.dart';
import 'zero_trust_tunnel_warp_connector_config_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read`
/// - `Cloudflare One Connector: WARP Write`
/// - `Cloudflare One Connectors Read`
/// - `Cloudflare One Connectors Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustTunnelWarpConnectorConfig = new cloudflare.ZeroTrustTunnelWarpConnectorConfig("example_zero_trust_tunnel_warp_connector_config", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     tunnelId: "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     haMode: "aws",
///     config: {
///         fnrId: "eni-0123456789abcdef0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_warp_connector_config = cloudflare.ZeroTrustTunnelWarpConnectorConfig("example_zero_trust_tunnel_warp_connector_config",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     tunnel_id="f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     ha_mode="aws",
///     config={
///         "fnr_id": "eni-0123456789abcdef0",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelWarpConnectorConfig = new Cloudflare.ZeroTrustTunnelWarpConnectorConfig("example_zero_trust_tunnel_warp_connector_config", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         TunnelId = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///         HaMode = "aws",
///         Config = new Cloudflare.Inputs.ZeroTrustTunnelWarpConnectorConfigConfigArgs
///         {
///             FnrId = "eni-0123456789abcdef0",
///         },
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
/// 		_, err := cloudflare.NewZeroTrustTunnelWarpConnectorConfig(ctx, "example_zero_trust_tunnel_warp_connector_config", &cloudflare.ZeroTrustTunnelWarpConnectorConfigArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			TunnelId:  pulumi.String("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
/// 			HaMode:    pulumi.String("aws"),
/// 			Config: &cloudflare.ZeroTrustTunnelWarpConnectorConfigConfigArgs{
/// 				FnrId: pulumi.String("eni-0123456789abcdef0"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrusttunnelwarpconnectorconfig" "example_zero_trust_tunnel_warp_connector_config" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   tunnel_id  = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
///   ha_mode    = "aws"
///   config = {
///     fnr_id = "eni-0123456789abcdef0"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelWarpConnectorConfig;
/// import com.pulumi.cloudflare.ZeroTrustTunnelWarpConnectorConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelWarpConnectorConfigConfigArgs;
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
///         var exampleZeroTrustTunnelWarpConnectorConfig = new ZeroTrustTunnelWarpConnectorConfig("exampleZeroTrustTunnelWarpConnectorConfig", ZeroTrustTunnelWarpConnectorConfigArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .tunnelId("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .haMode("aws")
///             .config(ZeroTrustTunnelWarpConnectorConfigConfigArgs.builder()
///                 .fnrId("eni-0123456789abcdef0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelWarpConnectorConfig:
///     type: cloudflare:ZeroTrustTunnelWarpConnectorConfig
///     name: example_zero_trust_tunnel_warp_connector_config
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       tunnelId: f70ff985-a4ef-4643-bbbc-4a0ed4fc8415
///       haMode: aws
///       config:
///         fnrId: eni-0123456789abcdef0
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustTunnelWarpConnectorConfig:ZeroTrustTunnelWarpConnectorConfig example '<account_id>/<tunnel_id>'
/// ```
class ZeroTrustTunnelWarpConnectorConfig extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Provider-specific configuration. Required shape depends on ha_mode. For `aws`, must contain `fnrId`. For `local`, must contain `vips`. For `none` and `disabled`, must be empty or omitted.
  late final pulumi.Output<ZeroTrustTunnelWarpConnectorConfigConfig?> config;
  /// Monotonically increasing configuration version, incremented on each PUT.
  late final pulumi.Output<int> configurationVersion;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// Available values: "none", "disabled", "aws", "local".
  late final pulumi.Output<String> haMode;
  /// UUID of the tunnel.
  late final pulumi.Output<String> tunnelId;
  /// Timestamp of the last update. Null if never updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustTunnelWarpConnectorConfig]. {@macro pulumi_index_zero_trust_tunnel_warp_connector_config_zero_trust_tunnel_warp_connector_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustTunnelWarpConnectorConfig(
    String name, {
    ZeroTrustTunnelWarpConnectorConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelWarpConnectorConfig:ZeroTrustTunnelWarpConnectorConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelWarpConnectorConfigConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationVersion = registerOutput<int>('configurationVersion');
    createdAt = registerOutput<String>('createdAt');
    haMode = registerOutput<String>('haMode');
    tunnelId = registerOutput<String>('tunnelId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustTunnelWarpConnectorConfig] resource's state with the given [name] and [id].
  static ZeroTrustTunnelWarpConnectorConfig get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustTunnelWarpConnectorConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustTunnelWarpConnectorConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustTunnelWarpConnectorConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelWarpConnectorConfig:ZeroTrustTunnelWarpConnectorConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelWarpConnectorConfigConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationVersion = registerOutput<int>('configurationVersion');
    createdAt = registerOutput<String>('createdAt');
    haMode = registerOutput<String>('haMode');
    tunnelId = registerOutput<String>('tunnelId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustTunnelWarpConnectorConfig] resource.
  ZeroTrustTunnelWarpConnectorConfig.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustTunnelWarpConnectorConfig:ZeroTrustTunnelWarpConnectorConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelWarpConnectorConfigConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationVersion = registerOutput<int>('configurationVersion');
    createdAt = registerOutput<String>('createdAt');
    haMode = registerOutput<String>('haMode');
    tunnelId = registerOutput<String>('tunnelId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
