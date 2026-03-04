import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_group_args.dart';
import 'repository_group_state.dart';

/// The resource for managing Repository Group for Gemini Code Assist.
///
///
/// To get more information about RepositoryGroup, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.codeRepositoryIndexes.repositoryGroups)
///
/// ## Example Usage
///
/// ### Gemini Repository Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.RepositoryGroup("example", {
///     location: "us-central1",
///     codeRepositoryIndex: "example-cri",
///     repositoryGroupId: "example-repository-group",
///     repositories: [{
///         resource: "projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo",
///         branchPattern: "main",
///     }],
///     labels: {
///         label1: "value1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.RepositoryGroup("example",
///     location="us-central1",
///     code_repository_index="example-cri",
///     repository_group_id="example-repository-group",
///     repositories=[{
///         "resource": "projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo",
///         "branch_pattern": "main",
///     }],
///     labels={
///         "label1": "value1",
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
///     var example = new Gcp.Gemini.RepositoryGroup("example", new()
///     {
///         Location = "us-central1",
///         CodeRepositoryIndex = "example-cri",
///         RepositoryGroupId = "example-repository-group",
///         Repositories = new[]
///         {
///             new Gcp.Gemini.Inputs.RepositoryGroupRepositoryArgs
///             {
///                 Resource = "projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo",
///                 BranchPattern = "main",
///             },
///         },
///         Labels =
///         {
///             { "label1", "value1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewRepositoryGroup(ctx, "example", &gemini.RepositoryGroupArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			CodeRepositoryIndex: pulumi.String("example-cri"),
/// 			RepositoryGroupId:   pulumi.String("example-repository-group"),
/// 			Repositories: gemini.RepositoryGroupRepositoryArray{
/// 				&gemini.RepositoryGroupRepositoryArgs{
/// 					Resource:      pulumi.String("projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo"),
/// 					BranchPattern: pulumi.String("main"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label1": pulumi.String("value1"),
/// 			},
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
/// import com.pulumi.gcp.gemini.RepositoryGroup;
/// import com.pulumi.gcp.gemini.RepositoryGroupArgs;
/// import com.pulumi.gcp.gemini.inputs.RepositoryGroupRepositoryArgs;
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
///         var example = new RepositoryGroup("example", RepositoryGroupArgs.builder()
///             .location("us-central1")
///             .codeRepositoryIndex("example-cri")
///             .repositoryGroupId("example-repository-group")
///             .repositories(RepositoryGroupRepositoryArgs.builder()
///                 .resource("projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo")
///                 .branchPattern("main")
///                 .build())
///             .labels(Map.of("label1", "value1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:RepositoryGroup
///     properties:
///       location: us-central1
///       codeRepositoryIndex: example-cri
///       repositoryGroupId: example-repository-group
///       repositories:
///         - resource: projects/example-project/locations/us-central1/connections/example-connection/gitRepositoryLinks/example-repo
///           branchPattern: main
///       labels:
///         label1: value1
/// ```
///
///
/// ## Import
///
/// RepositoryGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}`
///
/// * `{{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}`
///
/// * `{{location}}/{{code_repository_index}}/{{repository_group_id}}`
///
/// When using the `pulumi import` command, RepositoryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default {{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default {{location}}/{{code_repository_index}}/{{repository_group_id}}
/// ```
class RepositoryGroup extends pulumi.CustomResource {
  /// Required. Id of the Code Repository Index.
  late final pulumi.Output<String> codeRepositoryIndex;

  /// Output only. Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. Name of Repository Group.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Required. List of repositories to group.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> repositories;

  /// Required. Id of the Repository Group.
  late final pulumi.Output<String> repositoryGroupId;

  /// Output only. Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RepositoryGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryGroup]. {@macro pulumi_gemini_repository_group_repository_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryGroup(
    String name, {
    RepositoryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gemini/repositoryGroup:RepositoryGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    codeRepositoryIndex = registerOutput<String>('codeRepositoryIndex');
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    repositories = registerOutput<List<Map<String, dynamic>>>('repositories');
    repositoryGroupId = registerOutput<String>('repositoryGroupId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [RepositoryGroup] resource's state with the given [name] and [id].
  static RepositoryGroup get(
    String name,
    pulumi.Input<String> id, {
    RepositoryGroupState? state,
  }) {
    return RepositoryGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RepositoryGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gemini/repositoryGroup:RepositoryGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    codeRepositoryIndex = registerOutput<String>('codeRepositoryIndex');
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    repositories = registerOutput<List<Map<String, dynamic>>>('repositories');
    repositoryGroupId = registerOutput<String>('repositoryGroupId');
    updateTime = registerOutput<String>('updateTime');
  }
}
