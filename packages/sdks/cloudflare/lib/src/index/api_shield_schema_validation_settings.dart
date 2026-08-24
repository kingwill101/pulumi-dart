import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_schema_validation_settings_args.dart';
import 'api_shield_schema_validation_settings_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// &gt; `cloudflare.ApiShieldSchemaValidationSettings` is in a deprecation phase and will be removed in the future.
/// Instead, please utilize the cloudflare.SchemaValidationSettings resource instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShieldSchemaValidationSettings = new cloudflare.ApiShieldSchemaValidationSettings("example_api_shield_schema_validation_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     validationDefaultMitigationAction: "block",
///     validationOverrideMitigationAction: "none",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield_schema_validation_settings = cloudflare.ApiShieldSchemaValidationSettings("example_api_shield_schema_validation_settings",
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
///     var exampleApiShieldSchemaValidationSettings = new Cloudflare.ApiShieldSchemaValidationSettings("example_api_shield_schema_validation_settings", new()
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
/// 		_, err := cloudflare.NewApiShieldSchemaValidationSettings(ctx, "example_api_shield_schema_validation_settings", &cloudflare.ApiShieldSchemaValidationSettingsArgs{
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
/// resource "cloudflare_apishieldschemavalidationsettings" "example_api_shield_schema_validation_settings" {
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
/// import com.pulumi.cloudflare.ApiShieldSchemaValidationSettings;
/// import com.pulumi.cloudflare.ApiShieldSchemaValidationSettingsArgs;
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
///         var exampleApiShieldSchemaValidationSettings = new ApiShieldSchemaValidationSettings("exampleApiShieldSchemaValidationSettings", ApiShieldSchemaValidationSettingsArgs.builder()
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
///   exampleApiShieldSchemaValidationSettings:
///     type: cloudflare:ApiShieldSchemaValidationSettings
///     name: example_api_shield_schema_validation_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       validationDefaultMitigationAction: block
///       validationOverrideMitigationAction: none
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/apiShieldSchemaValidationSettings:ApiShieldSchemaValidationSettings example '<zone_id>'
/// ```
class ApiShieldSchemaValidationSettings extends pulumi.CustomResource {
  /// The default mitigation action used when there is no mitigation action defined on the operation
  late final pulumi.Output<String> validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `none` will skip running schema validation entirely for the request
  /// - `null` indicates that no override is in place
  ///
  /// To clear any override, use the special value `disableOverride` or `null`
  /// Available values: "none", "disableOverride".
  late final pulumi.Output<String?> validationOverrideMitigationAction;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ApiShieldSchemaValidationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShieldSchemaValidationSettings]. {@macro pulumi_index_api_shield_schema_validation_settings_api_shield_schema_validation_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShieldSchemaValidationSettings(
    String name, {
    ApiShieldSchemaValidationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldSchemaValidationSettings:ApiShieldSchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    validationDefaultMitigationAction = registerOutput<String>('validationDefaultMitigationAction');
    validationOverrideMitigationAction = registerOutput<String?>('validationOverrideMitigationAction');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ApiShieldSchemaValidationSettings] resource's state with the given [name] and [id].
  static ApiShieldSchemaValidationSettings get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldSchemaValidationSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShieldSchemaValidationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShieldSchemaValidationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldSchemaValidationSettings:ApiShieldSchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    validationDefaultMitigationAction = registerOutput<String>('validationDefaultMitigationAction');
    validationOverrideMitigationAction = registerOutput<String?>('validationOverrideMitigationAction');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShieldSchemaValidationSettings] resource.
  ApiShieldSchemaValidationSettings.reference(String urn)
    : super(
        'cloudflare:index/apiShieldSchemaValidationSettings:ApiShieldSchemaValidationSettings',
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
