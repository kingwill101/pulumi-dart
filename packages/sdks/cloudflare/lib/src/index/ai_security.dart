import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_security_args.dart';
import 'ai_security_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAiSecurity = new cloudflare.AiSecurity("example_ai_security", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ai_security = cloudflare.AiSecurity("example_ai_security",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAiSecurity = new Cloudflare.AiSecurity("example_ai_security", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewAiSecurity(ctx, "example_ai_security", &cloudflare.AiSecurityArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_ai_security" "example_ai_security" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AiSecurity;
/// import com.pulumi.cloudflare.AiSecurityArgs;
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
///         var exampleAiSecurity = new AiSecurity("exampleAiSecurity", AiSecurityArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAiSecurity:
///     type: cloudflare:AiSecurity
///     name: example_ai_security
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/aiSecurity:AiSecurity example '<zone_id>'
/// ```
class AiSecurity extends pulumi.CustomResource {
  /// Whether AI Security for Apps is enabled on the zone.
  late final pulumi.Output<bool?> enabled;
  /// Defines the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [AiSecurity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSecurity]. {@macro pulumi_index_ai_security_ai_security_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSecurity(
    String name, {
    AiSecurityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSecurity:AiSecurity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [AiSecurity] resource's state with the given [name] and [id].
  static AiSecurity get(
    String name,
    pulumi.Input<String> id, {
    AiSecurityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSecurity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSecurity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSecurity:AiSecurity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [AiSecurity] resource.
  AiSecurity.reference(String urn)
    : super(
        'cloudflare:index/aiSecurity:AiSecurity',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
