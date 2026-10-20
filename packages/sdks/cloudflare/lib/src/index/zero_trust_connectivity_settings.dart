import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_connectivity_settings_args.dart';
import 'zero_trust_connectivity_settings_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Report`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustConnectivitySettings = new cloudflare.ZeroTrustConnectivitySettings("example_zero_trust_connectivity_settings", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     icmpProxyEnabled: true,
///     offrampWarpEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_connectivity_settings = cloudflare.ZeroTrustConnectivitySettings("example_zero_trust_connectivity_settings",
///     account_id="699d98642c564d2e855e9661899b7252",
///     icmp_proxy_enabled=True,
///     offramp_warp_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustConnectivitySettings = new Cloudflare.ZeroTrustConnectivitySettings("example_zero_trust_connectivity_settings", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         IcmpProxyEnabled = true,
///         OfframpWarpEnabled = true,
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
/// 		_, err := cloudflare.NewZeroTrustConnectivitySettings(ctx, "example_zero_trust_connectivity_settings", &cloudflare.ZeroTrustConnectivitySettingsArgs{
/// 			AccountId:          pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			IcmpProxyEnabled:   pulumi.Bool(true),
/// 			OfframpWarpEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_connectivity_settings" "example_zero_trust_connectivity_settings" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id           = "699d98642c564d2e855e9661899b7252"
///   icmp_proxy_enabled   = true
///   offramp_warp_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustConnectivitySettings;
/// import com.pulumi.cloudflare.ZeroTrustConnectivitySettingsArgs;
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
///         var exampleZeroTrustConnectivitySettings = new ZeroTrustConnectivitySettings("exampleZeroTrustConnectivitySettings", ZeroTrustConnectivitySettingsArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .icmpProxyEnabled(true)
///             .offrampWarpEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustConnectivitySettings:
///     type: cloudflare:ZeroTrustConnectivitySettings
///     name: example_zero_trust_connectivity_settings
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       icmpProxyEnabled: true
///       offrampWarpEnabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustConnectivitySettings:ZeroTrustConnectivitySettings example '<account_id>'
/// ```
class ZeroTrustConnectivitySettings extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// A flag to enable the ICMP proxy for the account network.
  late final pulumi.Output<bool?> icmpProxyEnabled;
  /// A flag to enable WARP to WARP traffic.
  late final pulumi.Output<bool?> offrampWarpEnabled;

  /// Creates a new [ZeroTrustConnectivitySettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustConnectivitySettings]. {@macro pulumi_index_zero_trust_connectivity_settings_zero_trust_connectivity_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustConnectivitySettings(
    String name, {
    ZeroTrustConnectivitySettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustConnectivitySettings:ZeroTrustConnectivitySettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    icmpProxyEnabled = registerOutput<bool?>('icmpProxyEnabled');
    offrampWarpEnabled = registerOutput<bool?>('offrampWarpEnabled');
  }

  /// Gets an existing [ZeroTrustConnectivitySettings] resource's state with the given [name] and [id].
  static ZeroTrustConnectivitySettings get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustConnectivitySettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustConnectivitySettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustConnectivitySettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustConnectivitySettings:ZeroTrustConnectivitySettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    icmpProxyEnabled = registerOutput<bool?>('icmpProxyEnabled');
    offrampWarpEnabled = registerOutput<bool?>('offrampWarpEnabled');
  }

  /// Creates a typed reference to an existing [ZeroTrustConnectivitySettings] resource.
  ZeroTrustConnectivitySettings.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustConnectivitySettings:ZeroTrustConnectivitySettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    icmpProxyEnabled = registerOutput<bool?>('icmpProxyEnabled');
    offrampWarpEnabled = registerOutput<bool?>('offrampWarpEnabled');
  }
}
