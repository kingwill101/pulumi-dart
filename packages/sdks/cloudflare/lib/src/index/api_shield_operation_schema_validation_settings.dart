import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_schema_validation_settings_args.dart';
import 'api_shield_operation_schema_validation_settings_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// &gt; `cloudflare.ApiShieldOperationSchemaValidationSettings` is in a deprecation phase and will be removed in the future.
/// Instead, please utilize the cloudflare.SchemaValidationOperationSettings resource instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShieldOperationSchemaValidationSettings = new cloudflare.ApiShieldOperationSchemaValidationSettings("example_api_shield_operation_schema_validation_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     operationId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     mitigationAction: "block",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield_operation_schema_validation_settings = cloudflare.ApiShieldOperationSchemaValidationSettings("example_api_shield_operation_schema_validation_settings",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     operation_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     mitigation_action="block")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApiShieldOperationSchemaValidationSettings = new Cloudflare.ApiShieldOperationSchemaValidationSettings("example_api_shield_operation_schema_validation_settings", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         OperationId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         MitigationAction = "block",
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
/// 		_, err := cloudflare.NewApiShieldOperationSchemaValidationSettings(ctx, "example_api_shield_operation_schema_validation_settings", &cloudflare.ApiShieldOperationSchemaValidationSettingsArgs{
/// 			ZoneId:           pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			OperationId:      pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			MitigationAction: pulumi.String("block"),
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
/// resource "cloudflare_apishieldoperationschemavalidationsettings" "example_api_shield_operation_schema_validation_settings" {
///   zone_id           = "023e105f4ecef8ad9ca31a8372d0c353"
///   operation_id      = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   mitigation_action = "block"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ApiShieldOperationSchemaValidationSettings;
/// import com.pulumi.cloudflare.ApiShieldOperationSchemaValidationSettingsArgs;
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
///         var exampleApiShieldOperationSchemaValidationSettings = new ApiShieldOperationSchemaValidationSettings("exampleApiShieldOperationSchemaValidationSettings", ApiShieldOperationSchemaValidationSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .operationId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .mitigationAction("block")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiShieldOperationSchemaValidationSettings:
///     type: cloudflare:ApiShieldOperationSchemaValidationSettings
///     name: example_api_shield_operation_schema_validation_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       operationId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       mitigationAction: block
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/apiShieldOperationSchemaValidationSettings:ApiShieldOperationSchemaValidationSettings example '<zone_id>/<operation_id>'
/// ```
class ApiShieldOperationSchemaValidationSettings extends pulumi.CustomResource {
  /// When set, this applies a mitigation action to this operation
  ///
  /// - `log` log request when request does not conform to schema for this operation
  /// - `block` deny access to the site when request does not conform to schema for this operation
  /// - `none` will skip mitigation for this operation
  /// - `null` indicates that no operation level mitigation is in place, see Zone Level Schema Validation Settings for mitigation action that will be applied
  /// Available values: "log", "block", "none".
  late final pulumi.Output<String?> mitigationAction;
  /// UUID.
  late final pulumi.Output<String> operationId;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ApiShieldOperationSchemaValidationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShieldOperationSchemaValidationSettings]. {@macro pulumi_index_api_shield_operation_schema_validation_settings_api_shield_operation_schema_validation_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShieldOperationSchemaValidationSettings(
    String name, {
    ApiShieldOperationSchemaValidationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldOperationSchemaValidationSettings:ApiShieldOperationSchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    mitigationAction = registerOutput<String?>('mitigationAction');
    operationId = registerOutput<String>('operationId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ApiShieldOperationSchemaValidationSettings] resource's state with the given [name] and [id].
  static ApiShieldOperationSchemaValidationSettings get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldOperationSchemaValidationSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShieldOperationSchemaValidationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShieldOperationSchemaValidationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldOperationSchemaValidationSettings:ApiShieldOperationSchemaValidationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    mitigationAction = registerOutput<String?>('mitigationAction');
    operationId = registerOutput<String>('operationId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShieldOperationSchemaValidationSettings] resource.
  ApiShieldOperationSchemaValidationSettings.reference(String urn)
    : super(
        'cloudflare:index/apiShieldOperationSchemaValidationSettings:ApiShieldOperationSchemaValidationSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    mitigationAction = registerOutput<String?>('mitigationAction');
    operationId = registerOutput<String>('operationId');
    zoneId = registerOutput<String>('zoneId');
  }
}
