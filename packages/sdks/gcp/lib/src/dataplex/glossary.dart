import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_args.dart';
import 'glossary_state.dart';

/// Represents a collection of categories and terms defined by the user. Glossary is a top level resource and is the GCP parent resource of all the categories and terms within it.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const glossaryTestId = new gcp.dataplex.Glossary("glossary_test_id", {
///     glossaryId: "glossary-basic",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// glossary_test_id = gcp.dataplex.Glossary("glossary_test_id",
///     glossary_id="glossary-basic",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var glossaryTestId = new Gcp.DataPlex.Glossary("glossary_test_id", new()
///     {
///         GlossaryId = "glossary-basic",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewGlossary(ctx, "glossary_test_id", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("glossary-basic"),
/// 			Location:   pulumi.String("us-central1"),
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
/// resource "gcp_dataplex_glossary" "glossary_test_id" {
///   glossary_id = "glossary-basic"
///   location    = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
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
///         var glossaryTestId = new Glossary("glossaryTestId", GlossaryArgs.builder()
///             .glossaryId("glossary-basic")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   glossaryTestId:
///     type: gcp:dataplex:Glossary
///     name: glossary_test_id
///     properties:
///       glossaryId: glossary-basic
///       location: us-central1
/// ```
///
/// ### Dataplex Glossary Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const glossaryTestIdFull = new gcp.dataplex.Glossary("glossary_test_id_full", {
///     glossaryId: "glossary-full",
///     location: "us-central1",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform glossary",
///     description: "glossary created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// glossary_test_id_full = gcp.dataplex.Glossary("glossary_test_id_full",
///     glossary_id="glossary-full",
///     location="us-central1",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform glossary",
///     description="glossary created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var glossaryTestIdFull = new Gcp.DataPlex.Glossary("glossary_test_id_full", new()
///     {
///         GlossaryId = "glossary-full",
///         Location = "us-central1",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform glossary",
///         Description = "glossary created by Terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewGlossary(ctx, "glossary_test_id_full", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("glossary-full"),
/// 			Location:   pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform glossary"),
/// 			Description: pulumi.String("glossary created by Terraform"),
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
/// resource "gcp_dataplex_glossary" "glossary_test_id_full" {
///   glossary_id = "glossary-full"
///   location    = "us-central1"
///   labels = {
///     "tag" = "test-tf"
///   }
///   display_name = "terraform glossary"
///   description  = "glossary created by Terraform"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
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
///         var glossaryTestIdFull = new Glossary("glossaryTestIdFull", GlossaryArgs.builder()
///             .glossaryId("glossary-full")
///             .location("us-central1")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform glossary")
///             .description("glossary created by Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   glossaryTestIdFull:
///     type: gcp:dataplex:Glossary
///     name: glossary_test_id_full
///     properties:
///       glossaryId: glossary-full
///       location: us-central1
///       labels:
///         tag: test-tf
///       displayName: terraform glossary
///       description: glossary created by Terraform
/// ```
///
///
/// ## Import
///
/// Glossary can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}`
/// * `{{project}}/{{location}}/{{glossary_id}}`
/// * `{{location}}/{{glossary_id}}`
///
///
/// When using the `pulumi import` command, Glossary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{project}}/{{location}}/{{glossary_id}}
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{location}}/{{glossary_id}}
/// ```
class Glossary extends pulumi.CustomResource {
  /// The number of categories in the glossary.
  late final pulumi.Output<int> categoryCount;
  /// The time at which the glossary was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-mutable description of the glossary.
  late final pulumi.Output<String?> description;
  /// User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The glossary id for creation.
  late final pulumi.Output<String> glossaryId;
  /// User-defined labels for the Glossary.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the glossary should reside.
  late final pulumi.Output<String> location;
  /// The resource name of the Glossary. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The number of terms in the glossary.
  late final pulumi.Output<int> termCount;
  /// System generated unique id for the Glossary. This ID will be different if the Glossary is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time at which the glossary was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Glossary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Glossary]. {@macro pulumi_dataplex_glossary_glossary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Glossary(
    String name, {
    GlossaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossary:Glossary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categoryCount = registerOutput<int>('categoryCount');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    glossaryId = registerOutput<String>('glossaryId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    termCount = registerOutput<int>('termCount');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Glossary] resource's state with the given [name] and [id].
  static Glossary get(
    String name,
    pulumi.Input<String> id, {
    GlossaryState? state,
  }) {
    return Glossary._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Glossary._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossary:Glossary',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categoryCount = registerOutput<int>('categoryCount');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    glossaryId = registerOutput<String>('glossaryId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    termCount = registerOutput<int>('termCount');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
