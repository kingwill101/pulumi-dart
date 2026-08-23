import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// NextSchema is a collection of SchemaVersions.
///
///
/// To get more information about Schema, see:
///
/// * [API documentation](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.schemas)
///
/// ## Example Usage
///
/// ### Documentai Schema
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/documentai"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := documentai.NewSchema(ctx, "schema", &documentai.SchemaArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-schema"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_documentai_schema" "schema" {
///   location     = "us"
///   display_name = "my-schema"
///   labels = {
///     "env" = "test"
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
/// ```
///
///
/// ## Import
///
/// Schema can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schemas/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Schema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:documentai/schema:Schema default projects/{{project}}/locations/{{location}}/schemas/{{name}}
/// $ pulumi import gcp:documentai/schema:Schema default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:documentai/schema:Schema default {{location}}/{{name}}
/// ```
class Schema extends pulumi.CustomResource {
  /// The time when the Schema was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-defined name of the Schema.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The Google Cloud labels for the Schema.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the Schema.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The time when the Schema was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_documentai_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:documentai/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:documentai/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }
}
