import 'package:pulumi/pulumi.dart' as pulumi;
import 'lien_args.dart';
import 'lien_state.dart';

/// A Lien represents an encumbrance on the actions that can be performed on a resource.
///
///
/// To get more information about Lien, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest)
/// * How-to Guides
/// * [Create a Lien](https://docs.cloud.google.com/resource-manager/docs/project-liens)
///
/// ## Example Usage
///
/// ### Resource Manager Lien
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "staging-project",
///     name: "A very important project!",
///     deletionPolicy: "DELETE",
/// });
/// const lien = new gcp.resourcemanager.Lien("lien", {
///     parent: pulumi.interpolate`projects/${project.number}`,
///     restrictions: ["resourcemanager.projects.delete"],
///     origin: "machine-readable-explanation",
///     reason: "This project is an important environment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="staging-project",
///     name="A very important project!",
///     deletion_policy="DELETE")
/// lien = gcp.resourcemanager.Lien("lien",
///     parent=project.number.apply(lambda number: f"projects/{number}"),
///     restrictions=["resourcemanager.projects.delete"],
///     origin="machine-readable-explanation",
///     reason="This project is an important environment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "staging-project",
///         Name = "A very important project!",
///         DeletionPolicy = "DELETE",
///     });
///
///     var lien = new Gcp.ResourceManager.Lien("lien", new()
///     {
///         Parent = project.Number.Apply(number => $"projects/{number}"),
///         Restrictions = new[]
///         {
///             "resourcemanager.projects.delete",
///         },
///         Origin = "machine-readable-explanation",
///         Reason = "This project is an important environment",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("staging-project"),
/// 			Name:           pulumi.String("A very important project!"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewLien(ctx, "lien", &resourcemanager.LienArgs{
/// 			Parent: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", number), nil
/// 			}).(pulumi.StringOutput),
/// 			Restrictions: pulumi.StringArray{
/// 				pulumi.String("resourcemanager.projects.delete"),
/// 			},
/// 			Origin: pulumi.String("machine-readable-explanation"),
/// 			Reason: pulumi.String("This project is an important environment"),
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
/// resource "gcp_resourcemanager_lien" "lien" {
///   parent       ="projects/${gcp_organizations_project.project.number}"
///   restrictions = ["resourcemanager.projects.delete"]
///   origin       = "machine-readable-explanation"
///   reason       = "This project is an important environment"
/// }
/// resource "gcp_organizations_project" "project" {
///   project_id      = "staging-project"
///   name            = "A very important project!"
///   deletion_policy = "DELETE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.resourcemanager.Lien;
/// import com.pulumi.gcp.resourcemanager.LienArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("staging-project")
///             .name("A very important project!")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var lien = new Lien("lien", LienArgs.builder()
///             .parent(project.number().applyValue(_number -> String.format("projects/%s", _number)))
///             .restrictions("resourcemanager.projects.delete")
///             .origin("machine-readable-explanation")
///             .reason("This project is an important environment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lien:
///     type: gcp:resourcemanager:Lien
///     properties:
///       parent: projects/${project.number}
///       restrictions:
///         - resourcemanager.projects.delete
///       origin: machine-readable-explanation
///       reason: This project is an important environment
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: staging-project
///       name: A very important project!
///       deletionPolicy: DELETE
/// ```
///
///
/// ## Import
///
/// Lien can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, Lien can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/lien:Lien default {{parent}}/{{name}}
/// ```
class Lien extends pulumi.CustomResource {
  /// Time of creation
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A system-generated unique identifier for this Lien.
  late final pulumi.Output<String> name;
  /// A stable, user-visible/meaningful string identifying the origin
  /// of the Lien, intended to be inspected programmatically. Maximum length of
  /// 200 characters.
  late final pulumi.Output<String> origin;
  /// A reference to the resource this Lien is attached to.
  /// The server will validate the parent against those for which Liens are supported.
  /// Since a variety of objects can have Liens against them, you must provide the type
  /// prefix (e.g. "projects/my-project-name").
  late final pulumi.Output<String> parent;
  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource. Maximum length of 200 characters.
  late final pulumi.Output<String> reason;
  /// The types of operations which should be blocked as a result of this Lien.
  /// Each value should correspond to an IAM permission. The server will validate
  /// the permissions against those for which Liens are supported.  An empty
  /// list is meaningless and will be rejected.
  /// e.g. ['resourcemanager.projects.delete']
  late final pulumi.Output<List<String>> restrictions;

  /// Creates a new [Lien].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lien]. {@macro pulumi_resourcemanager_lien_lien_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lien(
    String name, {
    LienArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/lien:Lien',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    origin = registerOutput<String>('origin');
    parent = registerOutput<String>('parent');
    reason = registerOutput<String>('reason');
    restrictions = registerOutput<List<String>>('restrictions');
  }

  /// Gets an existing [Lien] resource's state with the given [name] and [id].
  static Lien get(
    String name,
    pulumi.Input<String> id, {
    LienState? state,
  }) {
    return Lien._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Lien._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/lien:Lien',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    origin = registerOutput<String>('origin');
    parent = registerOutput<String>('parent');
    reason = registerOutput<String>('reason');
    restrictions = registerOutput<List<String>>('restrictions');
  }
}
