import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_schema_args.dart';
import 'api_shield_schema_schema.dart';
import 'api_shield_schema_state.dart';
import 'api_shield_schema_upload_details.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// &gt; `cloudflare.ApiShieldSchema` is in a deprecation phase and will be removed in the future.
/// Instead, please utilize the cloudflare.SchemaValidationSchemas resource instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShieldSchema = new cloudflare.ApiShieldSchema("example_api_shield_schema", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     file: "Example data",
///     kind: "openapi_v3",
///     name: "petstore schema",
///     validationEnabled: "true",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield_schema = cloudflare.ApiShieldSchema("example_api_shield_schema",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     file="Example data",
///     kind="openapi_v3",
///     name="petstore schema",
///     validation_enabled="true")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApiShieldSchema = new Cloudflare.ApiShieldSchema("example_api_shield_schema", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         File = "Example data",
///         Kind = "openapi_v3",
///         Name = "petstore schema",
///         ValidationEnabled = "true",
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
/// 		_, err := cloudflare.NewApiShieldSchema(ctx, "example_api_shield_schema", &cloudflare.ApiShieldSchemaArgs{
/// 			ZoneId:            pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			File:              pulumi.String("Example data"),
/// 			Kind:              pulumi.String("openapi_v3"),
/// 			Name:              pulumi.String("petstore schema"),
/// 			ValidationEnabled: pulumi.String("true"),
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
/// resource "cloudflare_apishieldschema" "example_api_shield_schema" {
///   zone_id            = "023e105f4ecef8ad9ca31a8372d0c353"
///   file               = "Example data"
///   kind               = "openapi_v3"
///   name               = "petstore schema"
///   validation_enabled = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ApiShieldSchema;
/// import com.pulumi.cloudflare.ApiShieldSchemaArgs;
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
///         var exampleApiShieldSchema = new ApiShieldSchema("exampleApiShieldSchema", ApiShieldSchemaArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .file("Example data")
///             .kind("openapi_v3")
///             .name("petstore schema")
///             .validationEnabled("true")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiShieldSchema:
///     type: cloudflare:ApiShieldSchema
///     name: example_api_shield_schema
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       file: Example data
///       kind: openapi_v3
///       name: petstore schema
///       validationEnabled: 'true'
/// ```
class ApiShieldSchema extends pulumi.CustomResource {
  late final pulumi.Output<String> createdAt;
  /// Schema file bytes
  late final pulumi.Output<String> file;
  /// Kind of schema
  /// Available values: "openapiV3".
  late final pulumi.Output<String> kind;
  /// Name of the schema
  late final pulumi.Output<String?> name;
  late final pulumi.Output<ApiShieldSchemaSchema> schema;
  late final pulumi.Output<String?> schemaId;
  /// Source of the schema
  late final pulumi.Output<String> source;
  late final pulumi.Output<ApiShieldSchemaUploadDetails> uploadDetails;
  /// Flag whether schema is enabled for validation.
  /// Available values: "true", "false".
  late final pulumi.Output<String?> validationEnabled;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ApiShieldSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShieldSchema]. {@macro pulumi_index_api_shield_schema_api_shield_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShieldSchema(
    String name, {
    ApiShieldSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldSchema:ApiShieldSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    file = registerOutput<String>('file');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String?>('name');
    schema = registerOutput<ApiShieldSchemaSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String?>('schemaId');
    source = registerOutput<String>('source');
    uploadDetails = registerOutput<ApiShieldSchemaUploadDetails>('uploadDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaUploadDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationEnabled = registerOutput<String?>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ApiShieldSchema] resource's state with the given [name] and [id].
  static ApiShieldSchema get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldSchemaState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShieldSchema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShieldSchema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldSchema:ApiShieldSchema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    file = registerOutput<String>('file');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String?>('name');
    schema = registerOutput<ApiShieldSchemaSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String?>('schemaId');
    source = registerOutput<String>('source');
    uploadDetails = registerOutput<ApiShieldSchemaUploadDetails>('uploadDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaUploadDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationEnabled = registerOutput<String?>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShieldSchema] resource.
  ApiShieldSchema.reference(String urn)
    : super(
        'cloudflare:index/apiShieldSchema:ApiShieldSchema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    file = registerOutput<String>('file');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String?>('name');
    schema = registerOutput<ApiShieldSchemaSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String?>('schemaId');
    source = registerOutput<String>('source');
    uploadDetails = registerOutput<ApiShieldSchemaUploadDetails>('uploadDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldSchemaUploadDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationEnabled = registerOutput<String?>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
