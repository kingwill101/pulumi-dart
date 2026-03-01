import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// A Google Cloud Firebase instance. This enables Firebase resources on a given Google Project.
/// Since a FirebaseProject is actually also a GCP Project, a FirebaseProject uses underlying GCP
/// identifiers (most importantly, the projectId) as its own for easy interop with GCP APIs.
/// Once Firebase has been added to a Google Project it cannot be removed.
///
/// To get more information about Project, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects)
/// * How-to Guides
/// * Official Documentation
///
/// > **Note:** This resource should usually be used with a provider configuration
/// with `user_project_override = true` unless you wish for your quota
/// project to be different from the Firebase project.
///
/// ## Example Usage
///
/// ### Firebase Project Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.organizations.Project("default", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
///     labels: {
///         firebase: "enabled",
///     },
/// });
/// const defaultProject = new gcp.firebase.Project("default", {project: _default.projectId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.Project("default",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     deletion_policy="DELETE",
///     labels={
///         "firebase": "enabled",
///     })
/// default_project = gcp.firebase.Project("default", project=default.project_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Organizations.Project("default", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///         Labels =
///         {
///             { "firebase", "enabled" },
///         },
///     });
///
///     var defaultProject = new Gcp.Firebase.Project("default", new()
///     {
///         ProjectID = @default.ProjectId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.NewProject(ctx, "default", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 			Labels: pulumi.StringMap{
/// 				"firebase": pulumi.String("enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewProject(ctx, "default", &firebase.ProjectArgs{
/// 			Project: _default.ProjectId,
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
///         var default_ = new com.pulumi.gcp.organizations.Project("default", com.pulumi.gcp.organizations.ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .labels(Map.of("firebase", "enabled"))
///             .build());
///
///         var defaultProject = new com.pulumi.gcp.firebase.Project("defaultProject", com.pulumi.gcp.firebase.ProjectArgs.builder()
///             .project(default_.projectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///       labels:
///         firebase: enabled
///   defaultProject:
///     type: gcp:firebase:Project
///     name: default
///     properties:
///       project: ${default.projectId}
/// ```
///
///
/// ## Import
///
/// Project can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Project can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/project:Project default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/project:Project default {{project}}
/// ```
class Project extends pulumi.CustomResource {
  /// The GCP project display name
  late final pulumi.Output<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The number of the Google Project that Firebase is enabled on.
  late final pulumi.Output<String> projectNumber;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_firebase_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.projectNumber = registerOutput<String>('projectNumber');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.projectNumber = registerOutput<String>('projectNumber');
  }
}
