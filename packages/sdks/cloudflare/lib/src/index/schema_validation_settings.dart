import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_validation_settings_args.dart';
import 'schema_validation_settings_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSchemaValidationSettings = new cloudflare.SchemaValidationSettings("example_schema_validation_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     validationDefaultMitigationAction: "block",
///     validationOverrideMitigationAction: "none",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_schema_validation_settings = cloudflare.SchemaValidationSettings("example_schema_validation_settings",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     validation_default_mitigation_action="block",
///     validation_override_mitigation_action="none")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSchemaValidationSettings = new Cloudflare.SchemaValidationSettings("example_schema_validation_settings", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ValidationDefaultMitigationAction = "block",
///         ValidationOverrideMitigationAction = "none",
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
/// 		_, err := cloudflare.NewSchemaValidationSettings(ctx, "example_schema_validation_settings", &cloudflare.SchemaValidationSettingsArgs{
/// 			ZoneId:                             pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ValidationDefaultMitigationAction:  pulumi.String("block"),
/// 			ValidationOverrideMitigationAction: pulumi.String("none"),
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
/// resource "cloudflare_schemavalidationsettings" "example_schema_validation_settings" {
///   zone_id                               = "023e105f4ecef8ad9ca31a8372d0c353"
///   validation_default_mitigation_action  = "block"
///   validation_override_mitigation_action = "none"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SchemaValidationSettings;
/// import com.pulumi.cloudflare.SchemaValidationSettingsArgs;
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
///         var exampleSchemaValidationSettings = new SchemaValidationSettings("exampleSchemaValidationSettings", SchemaValidationSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .validationDefaultMitigationAction("block")
///             .validationOverrideMitigationAction("none")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSchemaValidationSettings:
///     type: cloudflare:SchemaValidationSettings
///     name: example_schema_validation_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       validationDefaultMitigationAction: block
///       validationOverrideMitigationAction: none
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class SchemaValidationSettings extends pulumi.CustomResource {
  /// The default mitigation action used
  /// Mitigation actions are as follows:
  ///
  /// - `"log"` - log request when request does not conform to schema
  /// - `"block"` - deny access to the site when request does not conform to schema
  /// - `"none"` - skip running schema validation
  /// Available values: "none", "log", "block".
  late final pulumi.Output<String> validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `"none"` - skip running schema validation entirely for the request
  /// - `null` - clears any existing override
  /// Available values: "none".
  late final pulumi.Output<String?> validationOverrideMitigationAction;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [SchemaValidationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaValidationSettings]. {@macro pulumi_index_schema_validation_settings_schema_validation_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaValidationSettings(
    String name, {
    SchemaValidationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/schemaValidationSettings:SchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    validationDefaultMitigationAction = registerOutput<String>('validationDefaultMitigationAction');
    validationOverrideMitigationAction = registerOutput<String?>('validationOverrideMitigationAction');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [SchemaValidationSettings] resource's state with the given [name] and [id].
  static SchemaValidationSettings get(
    String name,
    pulumi.Input<String> id, {
    SchemaValidationSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SchemaValidationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SchemaValidationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/schemaValidationSettings:SchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    validationDefaultMitigationAction = registerOutput<String>('validationDefaultMitigationAction');
    validationOverrideMitigationAction = registerOutput<String?>('validationOverrideMitigationAction');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [SchemaValidationSettings] resource.
  SchemaValidationSettings.reference(String urn)
    : super(
        'cloudflare:index/schemaValidationSettings:SchemaValidationSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    validationDefaultMitigationAction = registerOutput<String>('validationDefaultMitigationAction');
    validationOverrideMitigationAction = registerOutput<String?>('validationOverrideMitigationAction');
    zoneId = registerOutput<String>('zoneId');
  }
}
