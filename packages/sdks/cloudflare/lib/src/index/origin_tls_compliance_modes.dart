import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_tls_compliance_modes_args.dart';
import 'origin_tls_compliance_modes_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleOriginTlsComplianceModes = new cloudflare.OriginTlsComplianceModes("example_origin_tls_compliance_modes", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     values: [
///         "fips",
///         "pqh",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_origin_tls_compliance_modes = cloudflare.OriginTlsComplianceModes("example_origin_tls_compliance_modes",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     values=[
///         "fips",
///         "pqh",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOriginTlsComplianceModes = new Cloudflare.OriginTlsComplianceModes("example_origin_tls_compliance_modes", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Values = new[]
///         {
///             "fips",
///             "pqh",
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
/// 		_, err := cloudflare.NewOriginTlsComplianceModes(ctx, "example_origin_tls_compliance_modes", &cloudflare.OriginTlsComplianceModesArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("fips"),
/// 				pulumi.String("pqh"),
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
/// resource "cloudflare_origintlscompliancemodes" "example_origin_tls_compliance_modes" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   values  = ["fips", "pqh"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.OriginTlsComplianceModes;
/// import com.pulumi.cloudflare.OriginTlsComplianceModesArgs;
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
///         var exampleOriginTlsComplianceModes = new OriginTlsComplianceModes("exampleOriginTlsComplianceModes", OriginTlsComplianceModesArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .values(
///                 "fips",
///                 "pqh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOriginTlsComplianceModes:
///     type: cloudflare:OriginTlsComplianceModes
///     name: example_origin_tls_compliance_modes
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       values:
///         - fips
///         - pqh
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/originTlsComplianceModes:OriginTlsComplianceModes example '<zone_id>'
/// ```
class OriginTlsComplianceModes extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// List of TLS compliance modes that constrain the key-exchange algorithms Cloudflare may use when establishing the TLS connection to the zone's origin. Currently supported values are `fips` (FIPS-approved curves) and `pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be added; clients should treat unknown values as opaque strings. Multiple modes are combined as the intersection of their permitted algorithm lists; selections whose intersection is empty are rejected. An empty list clears the constraint.
  late final pulumi.Output<List<String>> values;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [OriginTlsComplianceModes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginTlsComplianceModes]. {@macro pulumi_index_origin_tls_compliance_modes_origin_tls_compliance_modes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginTlsComplianceModes(
    String name, {
    OriginTlsComplianceModesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/originTlsComplianceModes:OriginTlsComplianceModes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    values = registerOutput<List<String>>('values', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [OriginTlsComplianceModes] resource's state with the given [name] and [id].
  static OriginTlsComplianceModes get(
    String name,
    pulumi.Input<String> id, {
    OriginTlsComplianceModesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OriginTlsComplianceModes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OriginTlsComplianceModes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/originTlsComplianceModes:OriginTlsComplianceModes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    values = registerOutput<List<String>>('values', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [OriginTlsComplianceModes] resource.
  OriginTlsComplianceModes.reference(String urn)
    : super(
        'cloudflare:index/originTlsComplianceModes:OriginTlsComplianceModes',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    values = registerOutput<List<String>>('values', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }
}
