import 'package:pulumi/pulumi.dart' as pulumi;
import 'precursor_args.dart';
import 'precursor_enforcement_rule.dart';
import 'precursor_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const examplePrecursor = new cloudflare.Precursor("example_precursor", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     defaultMode: "min-friction",
///     enforcementRules: [{
///         expression: "http.request.uri.path eq \"/login\"",
///         mode: "max-security",
///         description: "Ease friction on the login path",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_precursor = cloudflare.Precursor("example_precursor",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     default_mode="min-friction",
///     enforcement_rules=[{
///         "expression": "http.request.uri.path eq \"/login\"",
///         "mode": "max-security",
///         "description": "Ease friction on the login path",
///         "enabled": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePrecursor = new Cloudflare.Precursor("example_precursor", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         DefaultMode = "min-friction",
///         EnforcementRules = new[]
///         {
///             new Cloudflare.Inputs.PrecursorEnforcementRuleArgs
///             {
///                 Expression = "http.request.uri.path eq \"/login\"",
///                 Mode = "max-security",
///                 Description = "Ease friction on the login path",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewPrecursor(ctx, "example_precursor", &cloudflare.PrecursorArgs{
/// 			ZoneId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			DefaultMode: pulumi.String("min-friction"),
/// 			EnforcementRules: cloudflare.PrecursorEnforcementRuleArray{
/// 				&cloudflare.PrecursorEnforcementRuleArgs{
/// 					Expression:  pulumi.String("http.request.uri.path eq \"/login\""),
/// 					Mode:        pulumi.String("max-security"),
/// 					Description: pulumi.String("Ease friction on the login path"),
/// 					Enabled:     pulumi.Bool(true),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_precursor" "example_precursor" {
///   zone_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///   default_mode = "min-friction"
///   enforcement_rules {
///     expression  = "http.request.uri.path eq \"/login\""
///     mode        = "max-security"
///     description = "Ease friction on the login path"
///     enabled     = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Precursor;
/// import com.pulumi.cloudflare.PrecursorArgs;
/// import com.pulumi.cloudflare.inputs.PrecursorEnforcementRuleArgs;
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
///         var examplePrecursor = new Precursor("examplePrecursor", PrecursorArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .defaultMode("min-friction")
///             .enforcementRules(PrecursorEnforcementRuleArgs.builder()
///                 .expression("http.request.uri.path eq \"/login\"")
///                 .mode("max-security")
///                 .description("Ease friction on the login path")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePrecursor:
///     type: cloudflare:Precursor
///     name: example_precursor
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       defaultMode: min-friction
///       enforcementRules:
///         - expression: http.request.uri.path eq "/login"
///           mode: max-security
///           description: Ease friction on the login path
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/precursor:Precursor example '<zone_id>'
/// ```
class Precursor extends pulumi.CustomResource {
  /// The zone-level Precursor enforcement mode applied to requests that do
  /// not match a more specific enforcement rule.
  /// Available values: "off", "min-friction", "max-security".
  late final pulumi.Output<String> defaultMode;
  /// The ordered list of enforcement rules for the zone.
  late final pulumi.Output<List<PrecursorEnforcementRule>> enforcementRules;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Precursor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Precursor]. {@macro pulumi_index_precursor_precursor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Precursor(
    String name, {
    PrecursorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/precursor:Precursor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    defaultMode = registerOutput<String>('defaultMode');
    enforcementRules = registerOutput<List<PrecursorEnforcementRule>>('enforcementRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrecursorEnforcementRule>(guardedValue, (value) => PrecursorEnforcementRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Precursor] resource's state with the given [name] and [id].
  static Precursor get(
    String name,
    pulumi.Input<String> id, {
    PrecursorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Precursor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Precursor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/precursor:Precursor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultMode = registerOutput<String>('defaultMode');
    enforcementRules = registerOutput<List<PrecursorEnforcementRule>>('enforcementRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrecursorEnforcementRule>(guardedValue, (value) => PrecursorEnforcementRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Precursor] resource.
  Precursor.reference(String urn)
    : super(
        'cloudflare:index/precursor:Precursor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultMode = registerOutput<String>('defaultMode');
    enforcementRules = registerOutput<List<PrecursorEnforcementRule>>('enforcementRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrecursorEnforcementRule>(guardedValue, (value) => PrecursorEnforcementRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
