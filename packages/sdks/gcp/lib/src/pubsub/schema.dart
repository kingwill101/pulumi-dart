import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// A schema is a format that messages must follow,
/// creating a contract between publisher and subscriber that Pub/Sub will enforce.
///
///
/// To get more information about Schema, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.schemas)
/// * How-to Guides
/// * [Creating and managing schemas](https://cloud.google.com/pubsub/docs/schemas)
///
/// ## Example Usage
///
/// ### Pubsub Schema Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Schema("example", {
///     name: "example-schema",
///     type: "AVRO",
///     definition: `{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Schema("example",
///     name="example-schema",
///     type="AVRO",
///     definition="""{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Schema("example", new()
///     {
///         Name = "example-schema",
///         Type = "AVRO",
///         Definition = @"{
///   ""type"" : ""record"",
///   ""name"" : ""Avro"",
///   ""fields"" : [
///     {
///       ""name"" : ""StringField"",
///       ""type"" : ""string""
///     },
///     {
///       ""name"" : ""IntField"",
///       ""type"" : ""int""
///     }
///   ]
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchema(ctx, "example", &pubsub.SchemaArgs{
/// 			Name: pulumi.String("example-schema"),
/// 			Type: pulumi.String("AVRO"),
/// 			Definition: pulumi.String(`{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// `),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_schema" "example" {
///   name       = "example-schema"
///   type       = "AVRO"
///   definition = "{\n  \"type\" : \"record\",\n  \"name\" : \"Avro\",\n  \"fields\" : [\n    {\n      \"name\" : \"StringField\",\n      \"type\" : \"string\"\n    },\n    {\n      \"name\" : \"IntField\",\n      \"type\" : \"int\"\n    }\n  ]\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Schema;
/// import com.pulumi.gcp.pubsub.SchemaArgs;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .name("example-schema")
///             .type("AVRO")
///             .definition("""
/// {
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Schema
///     properties:
///       name: example-schema
///       type: AVRO
///       definition: |
///         {
///           "type" : "record",
///           "name" : "Avro",
///           "fields" : [
///             {
///               "name" : "StringField",
///               "type" : "string"
///             },
///             {
///               "name" : "IntField",
///               "type" : "int"
///             }
///           ]
///         }
/// ```
///
/// ### Pubsub Schema Protobuf
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Schema("example", {
///     name: "example",
///     type: "PROTOCOL_BUFFER",
///     definition: `syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }`,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     schemaSettings: {
///         schema: "projects/my-project-name/schemas/example",
///         encoding: "JSON",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Schema("example",
///     name="example",
///     type="PROTOCOL_BUFFER",
///     definition="""syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }""")
/// example_topic = gcp.pubsub.Topic("example",
///     name="example-topic",
///     schema_settings={
///         "schema": "projects/my-project-name/schemas/example",
///         "encoding": "JSON",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Schema("example", new()
///     {
///         Name = "example",
///         Type = "PROTOCOL_BUFFER",
///         Definition = @"syntax = ""proto3"";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }",
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         SchemaSettings = new Gcp.PubSub.Inputs.TopicSchemaSettingsArgs
///         {
///             Schema = "projects/my-project-name/schemas/example",
///             Encoding = "JSON",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewSchema(ctx, "example", &pubsub.SchemaArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("PROTOCOL_BUFFER"),
/// 			Definition: pulumi.String(`syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }`),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			SchemaSettings: &pubsub.TopicSchemaSettingsArgs{
/// 				Schema:   pulumi.String("projects/my-project-name/schemas/example"),
/// 				Encoding: pulumi.String("JSON"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_schema" "example" {
///   name       = "example"
///   type       = "PROTOCOL_BUFFER"
///   definition = "syntax = \"proto3\";\nmessage Results {\nstring message_request = 1;\nstring message_response = 2;\nstring timestamp_request = 3;\nstring timestamp_response = 4;\n}"
/// }
/// resource "gcp_pubsub_topic" "example" {
///   depends_on = [gcp_pubsub_schema.example]
///   name       = "example-topic"
///   schema_settings = {
///     schema   = "projects/my-project-name/schemas/example"
///     encoding = "JSON"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Schema;
/// import com.pulumi.gcp.pubsub.SchemaArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicSchemaSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .name("example")
///             .type("PROTOCOL_BUFFER")
///             .definition("""
/// syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }            """)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .schemaSettings(TopicSchemaSettingsArgs.builder()
///                 .schema("projects/my-project-name/schemas/example")
///                 .encoding("JSON")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Schema
///     properties:
///       name: example
///       type: PROTOCOL_BUFFER
///       definition: |-
///         syntax = "proto3";
///         message Results {
///         string message_request = 1;
///         string message_response = 2;
///         string timestamp_request = 3;
///         string timestamp_response = 4;
///         }
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///       schemaSettings:
///         schema: projects/my-project-name/schemas/example
///         encoding: JSON
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Schema can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/schemas/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Schema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/schema:Schema default projects/{{project}}/schemas/{{name}}
/// $ pulumi import gcp:pubsub/schema:Schema default {{project}}/{{name}}
/// $ pulumi import gcp:pubsub/schema:Schema default {{name}}
/// ```
class Schema extends pulumi.CustomResource {
  /// The definition of the schema.
  /// This should contain a string representing the full definition of the schema
  /// that is a valid schema definition of the type specified in type. Changes
  /// to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
  /// A schema can only have up to 20 revisions, so updates that fail with an
  /// error indicating that the limit has been reached require manually
  /// [deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision).
  late final pulumi.Output<String?> definition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID to use for the schema, which will become the final component of the schema's resource name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The revision ID of the schema.
  late final pulumi.Output<String> revisionId;
  /// The type of the schema definition
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `PROTOCOL_BUFFER`, `AVRO`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_pubsub_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    definition = registerOutput<String?>('definition');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    revisionId = registerOutput<String>('revisionId');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<String?>('definition');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    revisionId = registerOutput<String>('revisionId');
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [Schema] resource.
  Schema.reference(String urn)
    : super(
        'gcp:pubsub/schema:Schema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    definition = registerOutput<String?>('definition');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    revisionId = registerOutput<String>('revisionId');
    type = registerOutput<String?>('type');
  }
}
