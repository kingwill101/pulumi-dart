import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_hostname_args.dart';
import 'regional_hostname_state.dart';

/// Accepted Permissions
///
/// - `DNS Read`
/// - `DNS Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleRegionalHostname = new cloudflare.RegionalHostname("example_regional_hostname", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     hostname: "foo.example.com",
///     regionKey: "ca",
///     routing: "dns",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_regional_hostname = cloudflare.RegionalHostname("example_regional_hostname",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     hostname="foo.example.com",
///     region_key="ca",
///     routing="dns")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRegionalHostname = new Cloudflare.RegionalHostname("example_regional_hostname", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Hostname = "foo.example.com",
///         RegionKey = "ca",
///         Routing = "dns",
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
/// 		_, err := cloudflare.NewRegionalHostname(ctx, "example_regional_hostname", &cloudflare.RegionalHostnameArgs{
/// 			ZoneId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Hostname:  pulumi.String("foo.example.com"),
/// 			RegionKey: pulumi.String("ca"),
/// 			Routing:   pulumi.String("dns"),
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
/// resource "cloudflare_regionalhostname" "example_regional_hostname" {
///   zone_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   hostname   = "foo.example.com"
///   region_key = "ca"
///   routing    = "dns"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.RegionalHostname;
/// import com.pulumi.cloudflare.RegionalHostnameArgs;
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
///         var exampleRegionalHostname = new RegionalHostname("exampleRegionalHostname", RegionalHostnameArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .hostname("foo.example.com")
///             .regionKey("ca")
///             .routing("dns")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRegionalHostname:
///     type: cloudflare:RegionalHostname
///     name: example_regional_hostname
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       hostname: foo.example.com
///       regionKey: ca
///       routing: dns
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/regionalHostname:RegionalHostname example '<zone_id>/<hostname>'
/// ```
class RegionalHostname extends pulumi.CustomResource {
  /// When the regional hostname was created
  late final pulumi.Output<String> createdOn;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  late final pulumi.Output<String> hostname;
  /// Identifying key for the region
  late final pulumi.Output<String> regionKey;
  /// Configure which routing method to use for the regional hostname
  late final pulumi.Output<String> routing;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [RegionalHostname].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalHostname]. {@macro pulumi_index_regional_hostname_regional_hostname_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalHostname(
    String name, {
    RegionalHostnameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/regionalHostname:RegionalHostname',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<String>('hostname');
    regionKey = registerOutput<String>('regionKey');
    routing = registerOutput<String>('routing');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [RegionalHostname] resource's state with the given [name] and [id].
  static RegionalHostname get(
    String name,
    pulumi.Input<String> id, {
    RegionalHostnameState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionalHostname._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionalHostname._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/regionalHostname:RegionalHostname',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<String>('hostname');
    regionKey = registerOutput<String>('regionKey');
    routing = registerOutput<String>('routing');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [RegionalHostname] resource.
  RegionalHostname.reference(String urn)
    : super(
        'cloudflare:index/regionalHostname:RegionalHostname',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<String>('hostname');
    regionKey = registerOutput<String>('regionKey');
    routing = registerOutput<String>('routing');
    zoneId = registerOutput<String>('zoneId');
  }
}
