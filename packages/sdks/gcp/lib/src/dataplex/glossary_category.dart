import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_category_args.dart';
import 'glossary_category_state.dart';

/// Represents a collection of categories and terms within a Glossary that are related to each other.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Category Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const categoryTestId = new gcp.dataplex.Glossary("category_test_id", {
///     glossaryId: "tf-test-glossary_79169",
///     location: "us-central1",
/// });
/// const categoryTestIdGlossaryCategory = new gcp.dataplex.GlossaryCategory("category_test_id", {
///     parent: pulumi.interpolate`projects/${categoryTestId.project}/locations/us-central1/glossaries/${categoryTestId.glossaryId}`,
///     glossaryId: categoryTestId.glossaryId,
///     location: "us-central1",
///     categoryId: "tf-test-category-basic_56529",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// category_test_id = gcp.dataplex.Glossary("category_test_id",
///     glossary_id="tf-test-glossary_79169",
///     location="us-central1")
/// category_test_id_glossary_category = gcp.dataplex.GlossaryCategory("category_test_id",
///     parent=pulumi.Output.all(
///         project=category_test_id.project,
///         glossary_id=category_test_id.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
///     glossary_id=category_test_id.glossary_id,
///     location="us-central1",
///     category_id="tf-test-category-basic_56529")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var categoryTestId = new Gcp.DataPlex.Glossary("category_test_id", new()
///     {
///         GlossaryId = "tf-test-glossary_79169",
///         Location = "us-central1",
///     });
///
///     var categoryTestIdGlossaryCategory = new Gcp.DataPlex.GlossaryCategory("category_test_id", new()
///     {
///         Parent = Output.Tuple(categoryTestId.Project, categoryTestId.GlossaryId).Apply(values =>
///         {
///             var project = values.Item1;
///             var glossaryId = values.Item2;
///             return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
///         }),
///         GlossaryId = categoryTestId.GlossaryId,
///         Location = "us-central1",
///         CategoryId = "tf-test-category-basic_56529",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		categoryTestId, err := dataplex.NewGlossary(ctx, "category_test_id", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("tf-test-glossary_79169"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewGlossaryCategory(ctx, "category_test_id", &dataplex.GlossaryCategoryArgs{
/// 			Parent: pulumi.All(categoryTestId.Project, categoryTestId.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				glossaryId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: categoryTestId.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			CategoryId: pulumi.String("tf-test-category-basic_56529"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.dataplex.GlossaryCategory;
/// import com.pulumi.gcp.dataplex.GlossaryCategoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var categoryTestId = new Glossary("categoryTestId", GlossaryArgs.builder()
///             .glossaryId("tf-test-glossary_79169")
///             .location("us-central1")
///             .build());
///
///         var categoryTestIdGlossaryCategory = new GlossaryCategory("categoryTestIdGlossaryCategory", GlossaryCategoryArgs.builder()
///             .parent(Output.tuple(categoryTestId.project(), categoryTestId.glossaryId()).applyValue(values -> {
///                 var project = values.t1;
///                 var glossaryId = values.t2;
///                 return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
///             }))
///             .glossaryId(categoryTestId.glossaryId())
///             .location("us-central1")
///             .categoryId("tf-test-category-basic_56529")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   categoryTestId:
///     type: gcp:dataplex:Glossary
///     name: category_test_id
///     properties:
///       glossaryId: tf-test-glossary_79169
///       location: us-central1
///   categoryTestIdGlossaryCategory:
///     type: gcp:dataplex:GlossaryCategory
///     name: category_test_id
///     properties:
///       parent: projects/${categoryTestId.project}/locations/us-central1/glossaries/${categoryTestId.glossaryId}
///       glossaryId: ${categoryTestId.glossaryId}
///       location: us-central1
///       categoryId: tf-test-category-basic_56529
/// ```
///
/// ### Dataplex Glossary Category Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const categoryTestIdFull = new gcp.dataplex.Glossary("category_test_id_full", {
///     glossaryId: "tf-test-glossary_75413",
///     location: "us-central1",
/// });
/// const categoryTestIdFullGlossaryCategory = new gcp.dataplex.GlossaryCategory("category_test_id_full", {
///     parent: pulumi.interpolate`projects/${categoryTestIdFull.project}/locations/us-central1/glossaries/${categoryTestIdFull.glossaryId}`,
///     glossaryId: categoryTestIdFull.glossaryId,
///     location: "us-central1",
///     categoryId: "tf-test-category-full_55138",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform category",
///     description: "category created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// category_test_id_full = gcp.dataplex.Glossary("category_test_id_full",
///     glossary_id="tf-test-glossary_75413",
///     location="us-central1")
/// category_test_id_full_glossary_category = gcp.dataplex.GlossaryCategory("category_test_id_full",
///     parent=pulumi.Output.all(
///         project=category_test_id_full.project,
///         glossary_id=category_test_id_full.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
///     glossary_id=category_test_id_full.glossary_id,
///     location="us-central1",
///     category_id="tf-test-category-full_55138",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform category",
///     description="category created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var categoryTestIdFull = new Gcp.DataPlex.Glossary("category_test_id_full", new()
///     {
///         GlossaryId = "tf-test-glossary_75413",
///         Location = "us-central1",
///     });
///
///     var categoryTestIdFullGlossaryCategory = new Gcp.DataPlex.GlossaryCategory("category_test_id_full", new()
///     {
///         Parent = Output.Tuple(categoryTestIdFull.Project, categoryTestIdFull.GlossaryId).Apply(values =>
///         {
///             var project = values.Item1;
///             var glossaryId = values.Item2;
///             return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
///         }),
///         GlossaryId = categoryTestIdFull.GlossaryId,
///         Location = "us-central1",
///         CategoryId = "tf-test-category-full_55138",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform category",
///         Description = "category created by Terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		categoryTestIdFull, err := dataplex.NewGlossary(ctx, "category_test_id_full", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("tf-test-glossary_75413"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewGlossaryCategory(ctx, "category_test_id_full", &dataplex.GlossaryCategoryArgs{
/// 			Parent: pulumi.All(categoryTestIdFull.Project, categoryTestIdFull.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				glossaryId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: categoryTestIdFull.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			CategoryId: pulumi.String("tf-test-category-full_55138"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform category"),
/// 			Description: pulumi.String("category created by Terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.dataplex.GlossaryCategory;
/// import com.pulumi.gcp.dataplex.GlossaryCategoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var categoryTestIdFull = new Glossary("categoryTestIdFull", GlossaryArgs.builder()
///             .glossaryId("tf-test-glossary_75413")
///             .location("us-central1")
///             .build());
///
///         var categoryTestIdFullGlossaryCategory = new GlossaryCategory("categoryTestIdFullGlossaryCategory", GlossaryCategoryArgs.builder()
///             .parent(Output.tuple(categoryTestIdFull.project(), categoryTestIdFull.glossaryId()).applyValue(values -> {
///                 var project = values.t1;
///                 var glossaryId = values.t2;
///                 return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
///             }))
///             .glossaryId(categoryTestIdFull.glossaryId())
///             .location("us-central1")
///             .categoryId("tf-test-category-full_55138")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform category")
///             .description("category created by Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   categoryTestIdFull:
///     type: gcp:dataplex:Glossary
///     name: category_test_id_full
///     properties:
///       glossaryId: tf-test-glossary_75413
///       location: us-central1
///   categoryTestIdFullGlossaryCategory:
///     type: gcp:dataplex:GlossaryCategory
///     name: category_test_id_full
///     properties:
///       parent: projects/${categoryTestIdFull.project}/locations/us-central1/glossaries/${categoryTestIdFull.glossaryId}
///       glossaryId: ${categoryTestIdFull.glossaryId}
///       location: us-central1
///       categoryId: tf-test-category-full_55138
///       labels:
///         tag: test-tf
///       displayName: terraform category
///       description: category created by Terraform
/// ```
///
///
/// ## Import
///
/// GlossaryCategory can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/categories/{{category_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}/{{category_id}}`
///
/// * `{{location}}/{{glossary_id}}/{{category_id}}`
///
/// When using the `pulumi import` command, GlossaryCategory can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/categories/{{category_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default {{project}}/{{location}}/{{glossary_id}}/{{category_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default {{location}}/{{glossary_id}}/{{category_id}}
/// ```
class GlossaryCategory extends pulumi.CustomResource {
  /// The category id for creation.
  late final pulumi.Output<String?> categoryId;
  /// The time at which the GlossaryCategory was created.
  late final pulumi.Output<String> createTime;
  /// The user-mutable description of the GlossaryCategory.
  late final pulumi.Output<String?> description;
  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The glossary id for creation.
  late final pulumi.Output<String?> glossaryId;
  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the glossary category should reside.
  late final pulumi.Output<String> location;
  /// The resource name of the GlossaryCategory. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  late final pulumi.Output<String> name;
  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  late final pulumi.Output<String> parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// System generated unique id for the GlossaryCategory. This ID will be different if the GlossaryCategory is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time at which the GlossaryCategory was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GlossaryCategory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryCategory]. {@macro pulumi_dataplex_glossary_category_glossary_category_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryCategory(
    String name, {
    GlossaryCategoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryCategory:GlossaryCategory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.categoryId = registerOutput<String?>('categoryId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.glossaryId = registerOutput<String?>('glossaryId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GlossaryCategory] resource's state with the given [name] and [id].
  static GlossaryCategory get(
    String name,
    pulumi.Input<String> id, {
    GlossaryCategoryState? state,
  }) {
    return GlossaryCategory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlossaryCategory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryCategory:GlossaryCategory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.categoryId = registerOutput<String?>('categoryId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.glossaryId = registerOutput<String?>('glossaryId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
