import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_hold_args.dart';
import 'zone_hold_state.dart';

/// Accepted Permissions
///
/// - `Access: Apps and Policies Read`
/// - `Access: Apps and Policies Revoke`
/// - `Access: Apps and Policies Write`
/// - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write`
/// - `Analytics Read`
/// - `Apps Write`
/// - `Cache Purge`
/// - `DNS Read`
/// - `DNS Write`
/// - `Firewall Services Read`
/// - `Firewall Services Write`
/// - `Load Balancers Read`
/// - `Load Balancers Write`
/// - `Logs Read`
/// - `Logs Write`
/// - `Page Rules Read`
/// - `Page Rules Write`
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
/// - `Stream Read`
/// - `Stream Write`
/// - `Trust and Safety Read`
/// - `Trust and Safety Write`
/// - `Workers Routes Read`
/// - `Workers Routes Write`
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Zaraz Admin`
/// - `Zaraz Edit`
/// - `Zaraz Read`
/// - `Zero Trust: PII Read`
/// - `Zone Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneHold = new cloudflare.ZoneHold("example_zone_hold", {zoneId: "023e105f4ecef8ad9ca31a8372d0c353"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_hold = cloudflare.ZoneHold("example_zone_hold", zone_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneHold = new Cloudflare.ZoneHold("example_zone_hold", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewZoneHold(ctx, "example_zone_hold", &cloudflare.ZoneHoldArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_zonehold" "example_zone_hold" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneHold;
/// import com.pulumi.cloudflare.ZoneHoldArgs;
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
///         var exampleZoneHold = new ZoneHold("exampleZoneHold", ZoneHoldArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneHold:
///     type: cloudflare:ZoneHold
///     name: example_zone_hold
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneHold:ZoneHold example '<zone_id>'
/// ```
class ZoneHold extends pulumi.CustomResource {
  late final pulumi.Output<bool> hold;
  /// If `holdAfter` is provided and future-dated, the hold will be temporarily disabled,
  /// then automatically re-enabled by the system at the time specified
  /// in this RFC3339-formatted timestamp. A past-dated `holdAfter` value will have
  /// no effect on an existing, enabled hold. Providing an empty string will set its value
  /// to the current time. Providing `null` will disable the hold indefinitely.
  late final pulumi.Output<String> holdAfter;
  /// If `true`, the zone hold will extend to block any subdomain of the given zone, as well
  /// as SSL4SaaS Custom Hostnames. For example, a zone hold on a zone with the hostname
  /// 'example.com' and include_subdomains=true will block 'example.com',
  /// 'staging.example.com', 'api.staging.example.com', etc.
  late final pulumi.Output<bool> includeSubdomains;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneHold].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneHold]. {@macro pulumi_index_zone_hold_zone_hold_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneHold(
    String name, {
    ZoneHoldArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneHold:ZoneHold',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    hold = registerOutput<bool>('hold');
    holdAfter = registerOutput<String>('holdAfter');
    includeSubdomains = registerOutput<bool>('includeSubdomains');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneHold] resource's state with the given [name] and [id].
  static ZoneHold get(
    String name,
    pulumi.Input<String> id, {
    ZoneHoldState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneHold._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneHold._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneHold:ZoneHold',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hold = registerOutput<bool>('hold');
    holdAfter = registerOutput<String>('holdAfter');
    includeSubdomains = registerOutput<bool>('includeSubdomains');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneHold] resource.
  ZoneHold.reference(String urn)
    : super(
        'cloudflare:index/zoneHold:ZoneHold',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    hold = registerOutput<bool>('hold');
    holdAfter = registerOutput<String>('holdAfter');
    includeSubdomains = registerOutput<bool>('includeSubdomains');
    zoneId = registerOutput<String>('zoneId');
  }
}
