import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_args.dart';
import 'schema_version_schema.dart';
import 'schema_version_state.dart';

/// SchemaVersion is a version of the Schema which is created in Schema.
///
///
/// To get more information about SchemaVersion, see:
///
/// * [API documentation](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.schemas.schemaVersions)
///
///
/// ## Example Usage
///
/// ### Documentai Schema Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const schema = new gcp.documentai.Schema("schema", {
///     location: "us",
///     displayName: "my-schema",
///     labels: {
///         env: "test",
///     },
/// });
/// const schemaVersion = new gcp.documentai.SchemaVersion("schema_version", {
///     location: "us",
///     schemaId: schema.name,
///     displayName: "my-schema-version",
///     labels: {
///         env: "test",
///     },
///     schema: {
///         displayName: "test-doc-schema",
///         description: "Schema description",
///         documentPrompt: "Document prompt text",
///         metadata: {
///             documentSplitter: true,
///             documentAllowMultipleLabels: true,
///             prefixedNamingOnProperties: false,
///             skipNamingValidation: true,
///         },
///         entityTypes: [
///             {
///                 name: "document",
///                 displayName: "Document Root",
///                 baseTypes: ["document"],
///                 properties: [
///                     {
///                         name: "invoice_id",
///                         displayName: "Invoice ID",
///                         valueType: "invoice_id",
///                         occurrenceType: "OPTIONAL_ONCE",
///                         method: "EXTRACT",
///                     },
///                     {
///                         name: "payment_type",
///                         displayName: "Payment Type",
///                         valueType: "payment_type",
///                         occurrenceType: "OPTIONAL_MULTIPLE",
///                         method: "DERIVE",
///                     },
///                 ],
///             },
///             {
///                 name: "invoice_id",
///                 displayName: "Invoice ID",
///                 baseTypes: ["string"],
///             },
///             {
///                 name: "payment_type",
///                 displayName: "Payment Type",
///                 baseTypes: ["string"],
///                 enumValues: {
///                     values: [
///                         "CREDIT_CARD",
///                         "DEBIT_CARD",
///                         "WIRE",
///                     ],
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// schema = gcp.documentai.Schema("schema",
///     location="us",
///     display_name="my-schema",
///     labels={
///         "env": "test",
///     })
/// schema_version = gcp.documentai.SchemaVersion("schema_version",
///     location="us",
///     schema_id=schema.name,
///     display_name="my-schema-version",
///     labels={
///         "env": "test",
///     },
///     schema={
///         "display_name": "test-doc-schema",
///         "description": "Schema description",
///         "document_prompt": "Document prompt text",
///         "metadata": {
///             "document_splitter": True,
///             "document_allow_multiple_labels": True,
///             "prefixed_naming_on_properties": False,
///             "skip_naming_validation": True,
///         },
///         "entity_types": [
///             {
///                 "name": "document",
///                 "display_name": "Document Root",
///                 "base_types": ["document"],
///                 "properties": [
///                     {
///                         "name": "invoice_id",
///                         "display_name": "Invoice ID",
///                         "value_type": "invoice_id",
///                         "occurrence_type": "OPTIONAL_ONCE",
///                         "method": "EXTRACT",
///                     },
///                     {
///                         "name": "payment_type",
///                         "display_name": "Payment Type",
///                         "value_type": "payment_type",
///                         "occurrence_type": "OPTIONAL_MULTIPLE",
///                         "method": "DERIVE",
///                     },
///                 ],
///             },
///             {
///                 "name": "invoice_id",
///                 "display_name": "Invoice ID",
///                 "base_types": ["string"],
///             },
///             {
///                 "name": "payment_type",
///                 "display_name": "Payment Type",
///                 "base_types": ["string"],
///                 "enum_values": {
///                     "values": [
///                         "CREDIT_CARD",
///                         "DEBIT_CARD",
///                         "WIRE",
///                     ],
///                 },
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schema = new Gcp.DocumentAi.Schema("schema", new()
///     {
///         Location = "us",
///         DisplayName = "my-schema",
///         Labels =
///         {
///             { "env", "test" },
///         },
///     });
///
///     var schemaVersion = new Gcp.DocumentAi.SchemaVersion("schema_version", new()
///     {
///         Location = "us",
///         SchemaId = schema.Name,
///         DisplayName = "my-schema-version",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         Schema = new Gcp.DocumentAi.Inputs.SchemaVersionSchemaArgs
///         {
///             DisplayName = "test-doc-schema",
///             Description = "Schema description",
///             DocumentPrompt = "Document prompt text",
///             Metadata = new Gcp.DocumentAi.Inputs.SchemaVersionSchemaMetadataArgs
///             {
///                 DocumentSplitter = true,
///                 DocumentAllowMultipleLabels = true,
///                 PrefixedNamingOnProperties = false,
///                 SkipNamingValidation = true,
///             },
///             EntityTypes = new[]
///             {
///                 new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypeArgs
///                 {
///                     Name = "document",
///                     DisplayName = "Document Root",
///                     BaseTypes = new[]
///                     {
///                         "document",
///                     },
///                     Properties = new[]
///                     {
///                         new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypePropertyArgs
///                         {
///                             Name = "invoice_id",
///                             DisplayName = "Invoice ID",
///                             ValueType = "invoice_id",
///                             OccurrenceType = "OPTIONAL_ONCE",
///                             Method = "EXTRACT",
///                         },
///                         new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypePropertyArgs
///                         {
///                             Name = "payment_type",
///                             DisplayName = "Payment Type",
///                             ValueType = "payment_type",
///                             OccurrenceType = "OPTIONAL_MULTIPLE",
///                             Method = "DERIVE",
///                         },
///                     },
///                 },
///                 new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypeArgs
///                 {
///                     Name = "invoice_id",
///                     DisplayName = "Invoice ID",
///                     BaseTypes = new[]
///                     {
///                         "string",
///                     },
///                 },
///                 new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypeArgs
///                 {
///                     Name = "payment_type",
///                     DisplayName = "Payment Type",
///                     BaseTypes = new[]
///                     {
///                         "string",
///                     },
///                     EnumValues = new Gcp.DocumentAi.Inputs.SchemaVersionSchemaEntityTypeEnumValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             "CREDIT_CARD",
///                             "DEBIT_CARD",
///                             "WIRE",
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/documentai"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		schema, err := documentai.NewSchema(ctx, "schema", &documentai.SchemaArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-schema"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = documentai.NewSchemaVersion(ctx, "schema_version", &documentai.SchemaVersionArgs{
/// 			Location:    pulumi.String("us"),
/// 			SchemaId:    schema.Name,
/// 			DisplayName: pulumi.String("my-schema-version"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			Schema: &documentai.SchemaVersionSchemaArgs{
/// 				DisplayName:    pulumi.String("test-doc-schema"),
/// 				Description:    pulumi.String("Schema description"),
/// 				DocumentPrompt: pulumi.String("Document prompt text"),
/// 				Metadata: &documentai.SchemaVersionSchemaMetadataArgs{
/// 					DocumentSplitter:            pulumi.Bool(true),
/// 					DocumentAllowMultipleLabels: pulumi.Bool(true),
/// 					PrefixedNamingOnProperties:  pulumi.Bool(false),
/// 					SkipNamingValidation:        pulumi.Bool(true),
/// 				},
/// 				EntityTypes: documentai.SchemaVersionSchemaEntityTypeArray{
/// 					&documentai.SchemaVersionSchemaEntityTypeArgs{
/// 						Name:        pulumi.String("document"),
/// 						DisplayName: pulumi.String("Document Root"),
/// 						BaseTypes: pulumi.StringArray{
/// 							pulumi.String("document"),
/// 						},
/// 						Properties: documentai.SchemaVersionSchemaEntityTypePropertyArray{
/// 							&documentai.SchemaVersionSchemaEntityTypePropertyArgs{
/// 								Name:           pulumi.String("invoice_id"),
/// 								DisplayName:    pulumi.String("Invoice ID"),
/// 								ValueType:      pulumi.String("invoice_id"),
/// 								OccurrenceType: pulumi.String("OPTIONAL_ONCE"),
/// 								Method:         pulumi.String("EXTRACT"),
/// 							},
/// 							&documentai.SchemaVersionSchemaEntityTypePropertyArgs{
/// 								Name:           pulumi.String("payment_type"),
/// 								DisplayName:    pulumi.String("Payment Type"),
/// 								ValueType:      pulumi.String("payment_type"),
/// 								OccurrenceType: pulumi.String("OPTIONAL_MULTIPLE"),
/// 								Method:         pulumi.String("DERIVE"),
/// 							},
/// 						},
/// 					},
/// 					&documentai.SchemaVersionSchemaEntityTypeArgs{
/// 						Name:        pulumi.String("invoice_id"),
/// 						DisplayName: pulumi.String("Invoice ID"),
/// 						BaseTypes: pulumi.StringArray{
/// 							pulumi.String("string"),
/// 						},
/// 					},
/// 					&documentai.SchemaVersionSchemaEntityTypeArgs{
/// 						Name:        pulumi.String("payment_type"),
/// 						DisplayName: pulumi.String("Payment Type"),
/// 						BaseTypes: pulumi.StringArray{
/// 							pulumi.String("string"),
/// 						},
/// 						EnumValues: &documentai.SchemaVersionSchemaEntityTypeEnumValuesArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("CREDIT_CARD"),
/// 								pulumi.String("DEBIT_CARD"),
/// 								pulumi.String("WIRE"),
/// 							},
/// 						},
/// 					},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_documentai_schema" "schema" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us"
///   display_name = "my-schema"
///   labels = {
///     "env" = "test"
///   }
/// }
/// resource "gcp_documentai_schema_version" "schema_version" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us"
///   schema_id    = gcp_documentai_schema.schema.name
///   display_name = "my-schema-version"
///   labels = {
///     "env" = "test"
///   }
///   schema = {
///     display_name    = "test-doc-schema"
///     description     = "Schema description"
///     document_prompt = "Document prompt text"
///     metadata = {
///       document_splitter              = true
///       document_allow_multiple_labels = true
///       prefixed_naming_on_properties  = false
///       skip_naming_validation         = true
///     }
///     entity_types = [{
///       name         = "document"
///       display_name = "Document Root"
///       base_types   = ["document"]
///       properties = [{
///         name            = "invoice_id"
///         display_name    = "Invoice ID"
///         value_type      = "invoice_id"
///         occurrence_type = "OPTIONAL_ONCE"
///         method          = "EXTRACT"
///         }, {
///         name            = "payment_type"
///         display_name    = "Payment Type"
///         value_type      = "payment_type"
///         occurrence_type = "OPTIONAL_MULTIPLE"
///         method          = "DERIVE"
///       }]
///       }, {
///       name         = "invoice_id"
///       display_name = "Invoice ID"
///       base_types   = ["string"]
///       }, {
///       name         = "payment_type"
///       display_name = "Payment Type"
///       base_types   = ["string"]
///       enum_values = {
///         values = ["CREDIT_CARD", "DEBIT_CARD", "WIRE"]
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.documentai.Schema;
/// import com.pulumi.gcp.documentai.SchemaArgs;
/// import com.pulumi.gcp.documentai.SchemaVersion;
/// import com.pulumi.gcp.documentai.SchemaVersionArgs;
/// import com.pulumi.gcp.documentai.inputs.SchemaVersionSchemaArgs;
/// import com.pulumi.gcp.documentai.inputs.SchemaVersionSchemaMetadataArgs;
/// import com.pulumi.gcp.documentai.inputs.SchemaVersionSchemaEntityTypeArgs;
/// import com.pulumi.gcp.documentai.inputs.SchemaVersionSchemaEntityTypePropertyArgs;
/// import com.pulumi.gcp.documentai.inputs.SchemaVersionSchemaEntityTypeEnumValuesArgs;
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
///         var schema = new Schema("schema", SchemaArgs.builder()
///             .location("us")
///             .displayName("my-schema")
///             .labels(Map.of("env", "test"))
///             .build());
///
///         var schemaVersion = new SchemaVersion("schemaVersion", SchemaVersionArgs.builder()
///             .location("us")
///             .schemaId(schema.name())
///             .displayName("my-schema-version")
///             .labels(Map.of("env", "test"))
///             .schema(SchemaVersionSchemaArgs.builder()
///                 .displayName("test-doc-schema")
///                 .description("Schema description")
///                 .documentPrompt("Document prompt text")
///                 .metadata(SchemaVersionSchemaMetadataArgs.builder()
///                     .documentSplitter(true)
///                     .documentAllowMultipleLabels(true)
///                     .prefixedNamingOnProperties(false)
///                     .skipNamingValidation(true)
///                     .build())
///                 .entityTypes(
///                     SchemaVersionSchemaEntityTypeArgs.builder()
///                         .name("document")
///                         .displayName("Document Root")
///                         .baseTypes("document")
///                         .properties(
///                             SchemaVersionSchemaEntityTypePropertyArgs.builder()
///                                 .name("invoice_id")
///                                 .displayName("Invoice ID")
///                                 .valueType("invoice_id")
///                                 .occurrenceType("OPTIONAL_ONCE")
///                                 .method("EXTRACT")
///                                 .build(),
///                             SchemaVersionSchemaEntityTypePropertyArgs.builder()
///                                 .name("payment_type")
///                                 .displayName("Payment Type")
///                                 .valueType("payment_type")
///                                 .occurrenceType("OPTIONAL_MULTIPLE")
///                                 .method("DERIVE")
///                                 .build())
///                         .build(),
///                     SchemaVersionSchemaEntityTypeArgs.builder()
///                         .name("invoice_id")
///                         .displayName("Invoice ID")
///                         .baseTypes("string")
///                         .build(),
///                     SchemaVersionSchemaEntityTypeArgs.builder()
///                         .name("payment_type")
///                         .displayName("Payment Type")
///                         .baseTypes("string")
///                         .enumValues(SchemaVersionSchemaEntityTypeEnumValuesArgs.builder()
///                             .values(
///                                 "CREDIT_CARD",
///                                 "DEBIT_CARD",
///                                 "WIRE")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   schema:
///     type: gcp:documentai:Schema
///     properties:
///       location: us
///       displayName: my-schema
///       labels:
///         env: test
///   schemaVersion:
///     type: gcp:documentai:SchemaVersion
///     name: schema_version
///     properties:
///       location: us
///       schemaId: ${schema.name}
///       displayName: my-schema-version
///       labels:
///         env: test
///       schema:
///         displayName: test-doc-schema
///         description: Schema description
///         documentPrompt: Document prompt text
///         metadata:
///           documentSplitter: true
///           documentAllowMultipleLabels: true
///           prefixedNamingOnProperties: false
///           skipNamingValidation: true
///         entityTypes:
///           - name: document
///             displayName: Document Root
///             baseTypes:
///               - document
///             properties:
///               - name: invoice_id
///                 displayName: Invoice ID
///                 valueType: invoice_id
///                 occurrenceType: OPTIONAL_ONCE
///                 method: EXTRACT
///               - name: payment_type
///                 displayName: Payment Type
///                 valueType: payment_type
///                 occurrenceType: OPTIONAL_MULTIPLE
///                 method: DERIVE
///           - name: invoice_id
///             displayName: Invoice ID
///             baseTypes:
///               - string
///           - name: payment_type
///             displayName: Payment Type
///             baseTypes:
///               - string
///             enumValues:
///               values:
///                 - CREDIT_CARD
///                 - DEBIT_CARD
///                 - WIRE
/// ```
///
///
/// ## Import
///
/// SchemaVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schemas/{{schema_id}}/schemaVersions/{{name}}`
/// * `{{project}}/{{location}}/{{schema_id}}/{{name}}`
/// * `{{location}}/{{schema_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, SchemaVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:documentai/schemaVersion:SchemaVersion default projects/{{project}}/locations/{{location}}/schemas/{{schema_id}}/schemaVersions/{{name}}
/// $ pulumi import gcp:documentai/schemaVersion:SchemaVersion default {{project}}/{{location}}/{{schema_id}}/{{name}}
/// $ pulumi import gcp:documentai/schemaVersion:SchemaVersion default {{location}}/{{schema_id}}/{{name}}
/// ```
class SchemaVersion extends pulumi.CustomResource {
  /// The time when the SchemaVersion was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-defined name of the SchemaVersion.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The Google Cloud labels for the SchemaVersion.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the SchemaVersion.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The schema of the SchemaVersion.
  /// Structure is documented below.
  late final pulumi.Output<SchemaVersionSchema> schema;
  /// The schema id that this schema version belongs to.
  late final pulumi.Output<String> schemaId;

  /// Creates a new [SchemaVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaVersion]. {@macro pulumi_documentai_schema_version_schema_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaVersion(
    String name, {
    SchemaVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:documentai/schemaVersion:SchemaVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    schema = registerOutput<SchemaVersionSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaVersionSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String>('schemaId');
  }

  /// Gets an existing [SchemaVersion] resource's state with the given [name] and [id].
  static SchemaVersion get(
    String name,
    pulumi.Input<String> id, {
    SchemaVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SchemaVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SchemaVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:documentai/schemaVersion:SchemaVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    schema = registerOutput<SchemaVersionSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaVersionSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String>('schemaId');
  }

  /// Creates a typed reference to an existing [SchemaVersion] resource.
  SchemaVersion.reference(String urn)
    : super(
        'gcp:documentai/schemaVersion:SchemaVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    schema = registerOutput<SchemaVersionSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaVersionSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schemaId = registerOutput<String>('schemaId');
  }
}
