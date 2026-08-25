import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_args.dart';
import 'glossary_term_state.dart';

/// Represents a collection of terms within a Glossary that are related to each other.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Term Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const termTestId = new gcp.dataplex.Glossary("term_test_id", {
///     glossaryId: "tf-test-glossary_49547",
///     location: "us-central1",
/// });
/// const termTestIdGlossaryTerm = new gcp.dataplex.GlossaryTerm("term_test_id", {
///     parent: pulumi.interpolate`projects/${termTestId.project}/locations/us-central1/glossaries/${termTestId.glossaryId}`,
///     glossaryId: termTestId.glossaryId,
///     location: "us-central1",
///     termId: "tf-test-term-basic_48675",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// term_test_id = gcp.dataplex.Glossary("term_test_id",
///     glossary_id="tf-test-glossary_49547",
///     location="us-central1")
/// term_test_id_glossary_term = gcp.dataplex.GlossaryTerm("term_test_id",
///     parent=pulumi.Output.all(
///         project=term_test_id.project,
///         glossary_id=term_test_id.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
///     glossary_id=term_test_id.glossary_id,
///     location="us-central1",
///     term_id="tf-test-term-basic_48675")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var termTestId = new Gcp.DataPlex.Glossary("term_test_id", new()
///     {
///         GlossaryId = "tf-test-glossary_49547",
///         Location = "us-central1",
///     });
///
///     var termTestIdGlossaryTerm = new Gcp.DataPlex.GlossaryTerm("term_test_id", new()
///     {
///         Parent = Output.Tuple(termTestId.Project, termTestId.GlossaryId).Apply(values =>
///         {
///             var project = values.Item1;
///             var glossaryId = values.Item2;
///             return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
///         }),
///         GlossaryId = termTestId.GlossaryId,
///         Location = "us-central1",
///         TermId = "tf-test-term-basic_48675",
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
/// 		termTestId, err := dataplex.NewGlossary(ctx, "term_test_id", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("tf-test-glossary_49547"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewGlossaryTerm(ctx, "term_test_id", &dataplex.GlossaryTermArgs{
/// 			Parent: pulumi.All(termTestId.Project, termTestId.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				glossaryId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: termTestId.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			TermId:     pulumi.String("tf-test-term-basic_48675"),
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
/// resource "gcp_dataplex_glossary" "term_test_id" {
///   glossary_id = "tf-test-glossary_49547"
///   location    = "us-central1"
/// }
/// resource "gcp_dataplex_glossaryterm" "term_test_id" {
///   parent      ="projects/${gcp_dataplex_glossary.term_test_id.project}/locations/us-central1/glossaries/${gcp_dataplex_glossary.term_test_id.glossary_id}"
///   glossary_id = gcp_dataplex_glossary.term_test_id.glossary_id
///   location    = "us-central1"
///   term_id     = "tf-test-term-basic_48675"
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
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
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
///         var termTestId = new Glossary("termTestId", GlossaryArgs.builder()
///             .glossaryId("tf-test-glossary_49547")
///             .location("us-central1")
///             .build());
///
///         var termTestIdGlossaryTerm = new GlossaryTerm("termTestIdGlossaryTerm", GlossaryTermArgs.builder()
///             .parent(Output.tuple(termTestId.project(), termTestId.glossaryId()).applyValue(values -> {
///                 var project = values.t1;
///                 var glossaryId = values.t2;
///                 return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
///             }))
///             .glossaryId(termTestId.glossaryId())
///             .location("us-central1")
///             .termId("tf-test-term-basic_48675")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   termTestId:
///     type: gcp:dataplex:Glossary
///     name: term_test_id
///     properties:
///       glossaryId: tf-test-glossary_49547
///       location: us-central1
///   termTestIdGlossaryTerm:
///     type: gcp:dataplex:GlossaryTerm
///     name: term_test_id
///     properties:
///       parent: projects/${termTestId.project}/locations/us-central1/glossaries/${termTestId.glossaryId}
///       glossaryId: ${termTestId.glossaryId}
///       location: us-central1
///       termId: tf-test-term-basic_48675
/// ```
///
/// ### Dataplex Glossary Term Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const termTestIdFull = new gcp.dataplex.Glossary("term_test_id_full", {
///     glossaryId: "tf-test-glossary_42702",
///     location: "us-central1",
/// });
/// const termTestIdFullGlossaryTerm = new gcp.dataplex.GlossaryTerm("term_test_id_full", {
///     parent: pulumi.interpolate`projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}`,
///     glossaryId: termTestIdFull.glossaryId,
///     location: "us-central1",
///     termId: "tf-test-term-full_37426",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform term",
///     description: "term created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// term_test_id_full = gcp.dataplex.Glossary("term_test_id_full",
///     glossary_id="tf-test-glossary_42702",
///     location="us-central1")
/// term_test_id_full_glossary_term = gcp.dataplex.GlossaryTerm("term_test_id_full",
///     parent=pulumi.Output.all(
///         project=term_test_id_full.project,
///         glossary_id=term_test_id_full.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
///     glossary_id=term_test_id_full.glossary_id,
///     location="us-central1",
///     term_id="tf-test-term-full_37426",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform term",
///     description="term created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var termTestIdFull = new Gcp.DataPlex.Glossary("term_test_id_full", new()
///     {
///         GlossaryId = "tf-test-glossary_42702",
///         Location = "us-central1",
///     });
///
///     var termTestIdFullGlossaryTerm = new Gcp.DataPlex.GlossaryTerm("term_test_id_full", new()
///     {
///         Parent = Output.Tuple(termTestIdFull.Project, termTestIdFull.GlossaryId).Apply(values =>
///         {
///             var project = values.Item1;
///             var glossaryId = values.Item2;
///             return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
///         }),
///         GlossaryId = termTestIdFull.GlossaryId,
///         Location = "us-central1",
///         TermId = "tf-test-term-full_37426",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform term",
///         Description = "term created by Terraform",
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
/// 		termTestIdFull, err := dataplex.NewGlossary(ctx, "term_test_id_full", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("tf-test-glossary_42702"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewGlossaryTerm(ctx, "term_test_id_full", &dataplex.GlossaryTermArgs{
/// 			Parent: pulumi.All(termTestIdFull.Project, termTestIdFull.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				glossaryId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: termTestIdFull.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			TermId:     pulumi.String("tf-test-term-full_37426"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform term"),
/// 			Description: pulumi.String("term created by Terraform"),
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
/// resource "gcp_dataplex_glossary" "term_test_id_full" {
///   glossary_id = "tf-test-glossary_42702"
///   location    = "us-central1"
/// }
/// resource "gcp_dataplex_glossaryterm" "term_test_id_full" {
///   parent      ="projects/${gcp_dataplex_glossary.term_test_id_full.project}/locations/us-central1/glossaries/${gcp_dataplex_glossary.term_test_id_full.glossary_id}"
///   glossary_id = gcp_dataplex_glossary.term_test_id_full.glossary_id
///   location    = "us-central1"
///   term_id     = "tf-test-term-full_37426"
///   labels = {
///     "tag" = "test-tf"
///   }
///   display_name = "terraform term"
///   description  = "term created by Terraform"
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
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
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
///         var termTestIdFull = new Glossary("termTestIdFull", GlossaryArgs.builder()
///             .glossaryId("tf-test-glossary_42702")
///             .location("us-central1")
///             .build());
///
///         var termTestIdFullGlossaryTerm = new GlossaryTerm("termTestIdFullGlossaryTerm", GlossaryTermArgs.builder()
///             .parent(Output.tuple(termTestIdFull.project(), termTestIdFull.glossaryId()).applyValue(values -> {
///                 var project = values.t1;
///                 var glossaryId = values.t2;
///                 return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
///             }))
///             .glossaryId(termTestIdFull.glossaryId())
///             .location("us-central1")
///             .termId("tf-test-term-full_37426")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform term")
///             .description("term created by Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   termTestIdFull:
///     type: gcp:dataplex:Glossary
///     name: term_test_id_full
///     properties:
///       glossaryId: tf-test-glossary_42702
///       location: us-central1
///   termTestIdFullGlossaryTerm:
///     type: gcp:dataplex:GlossaryTerm
///     name: term_test_id_full
///     properties:
///       parent: projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}
///       glossaryId: ${termTestIdFull.glossaryId}
///       location: us-central1
///       termId: tf-test-term-full_37426
///       labels:
///         tag: test-tf
///       displayName: terraform term
///       description: term created by Terraform
/// ```
///
///
/// ## Import
///
/// GlossaryTerm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}`
/// * `{{project}}/{{location}}/{{glossary_id}}/{{term_id}}`
/// * `{{location}}/{{glossary_id}}/{{term_id}}`
///
///
/// When using the `pulumi import` command, GlossaryTerm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{project}}/{{location}}/{{glossary_id}}/{{term_id}}
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{location}}/{{glossary_id}}/{{term_id}}
/// ```
class GlossaryTerm extends pulumi.CustomResource {
  /// The time at which the GlossaryTerm was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-mutable description of the GlossaryTerm.
  late final pulumi.Output<String?> description;
  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The glossary id for creation.
  late final pulumi.Output<String?> glossaryId;
  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the glossary term should reside.
  late final pulumi.Output<String> location;
  /// The resource name of the GlossaryTerm. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
  late final pulumi.Output<String> name;
  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  late final pulumi.Output<String> parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The term id for creation.
  late final pulumi.Output<String?> termId;
  /// System generated unique id for the GlossaryTerm. This ID will be different if the GlossaryTerm is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time at which the GlossaryTerm was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GlossaryTerm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryTerm]. {@macro pulumi_dataplex_glossary_term_glossary_term_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryTerm(
    String name, {
    GlossaryTermArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryTerm:GlossaryTerm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    glossaryId = registerOutput<String?>('glossaryId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    termId = registerOutput<String?>('termId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GlossaryTerm] resource's state with the given [name] and [id].
  static GlossaryTerm get(
    String name,
    pulumi.Input<String> id, {
    GlossaryTermState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GlossaryTerm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GlossaryTerm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryTerm:GlossaryTerm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    glossaryId = registerOutput<String?>('glossaryId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    termId = registerOutput<String?>('termId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [GlossaryTerm] resource.
  GlossaryTerm.reference(String urn)
    : super(
        'gcp:dataplex/glossaryTerm:GlossaryTerm',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    glossaryId = registerOutput<String?>('glossaryId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    termId = registerOutput<String?>('termId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
