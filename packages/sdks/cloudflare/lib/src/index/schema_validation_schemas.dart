import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_validation_schemas_args.dart';
import 'schema_validation_schemas_state.dart';

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
/// const exampleSchemaValidationSchemas = new cloudflare.SchemaValidationSchemas("example_schema_validation_schemas", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     kind: "openapi_v3",
///     name: "petstore schema",
///     source: "<schema file contents>",
///     validationEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_schema_validation_schemas = cloudflare.SchemaValidationSchemas("example_schema_validation_schemas",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     kind="openapi_v3",
///     name="petstore schema",
///     source="<schema file contents>",
///     validation_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSchemaValidationSchemas = new Cloudflare.SchemaValidationSchemas("example_schema_validation_schemas", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Kind = "openapi_v3",
///         Name = "petstore schema",
///         Source = "<schema file contents>",
///         ValidationEnabled = true,
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
/// 		_, err := cloudflare.NewSchemaValidationSchemas(ctx, "example_schema_validation_schemas", &cloudflare.SchemaValidationSchemasArgs{
/// 			ZoneId:            pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Kind:              pulumi.String("openapi_v3"),
/// 			Name:              pulumi.String("petstore schema"),
/// 			Source:            pulumi.String("<schema file contents>"),
/// 			ValidationEnabled: pulumi.Bool(true),
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
/// resource "cloudflare_schemavalidationschemas" "example_schema_validation_schemas" {
///   zone_id            = "023e105f4ecef8ad9ca31a8372d0c353"
///   kind               = "openapi_v3"
///   name               = "petstore schema"
///   source             = "<schema file contents>"
///   validation_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SchemaValidationSchemas;
/// import com.pulumi.cloudflare.SchemaValidationSchemasArgs;
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
///         var exampleSchemaValidationSchemas = new SchemaValidationSchemas("exampleSchemaValidationSchemas", SchemaValidationSchemasArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .kind("openapi_v3")
///             .name("petstore schema")
///             .source("<schema file contents>")
///             .validationEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSchemaValidationSchemas:
///     type: cloudflare:SchemaValidationSchemas
///     name: example_schema_validation_schemas
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       kind: openapi_v3
///       name: petstore schema
///       source: <schema file contents>
///       validationEnabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/schemaValidationSchemas:SchemaValidationSchemas example '<zone_id>/<schema_id>'
/// ```
class SchemaValidationSchemas extends pulumi.CustomResource {
  late final pulumi.Output<String> createdAt;
  /// The kind of the schema
  /// Available values: "openapiV3".
  late final pulumi.Output<String> kind;
  /// A human-readable name for the schema
  late final pulumi.Output<String> name;
  /// A unique identifier of this schema
  late final pulumi.Output<String> schemaId;
  /// The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  late final pulumi.Output<String> source;
  /// An indicator if this schema is enabled
  late final pulumi.Output<bool> validationEnabled;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [SchemaValidationSchemas].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaValidationSchemas]. {@macro pulumi_index_schema_validation_schemas_schema_validation_schemas_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaValidationSchemas(
    String name, {
    SchemaValidationSchemasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/schemaValidationSchemas:SchemaValidationSchemas',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    schemaId = registerOutput<String>('schemaId');
    source = registerOutput<String>('source');
    validationEnabled = registerOutput<bool>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [SchemaValidationSchemas] resource's state with the given [name] and [id].
  static SchemaValidationSchemas get(
    String name,
    pulumi.Input<String> id, {
    SchemaValidationSchemasState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SchemaValidationSchemas._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SchemaValidationSchemas._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/schemaValidationSchemas:SchemaValidationSchemas',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    schemaId = registerOutput<String>('schemaId');
    source = registerOutput<String>('source');
    validationEnabled = registerOutput<bool>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [SchemaValidationSchemas] resource.
  SchemaValidationSchemas.reference(String urn)
    : super(
        'cloudflare:index/schemaValidationSchemas:SchemaValidationSchemas',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    schemaId = registerOutput<String>('schemaId');
    source = registerOutput<String>('source');
    validationEnabled = registerOutput<bool>('validationEnabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
