import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_folder_args.dart';
import 'team_folder_state.dart';

/// A resource represents a Dataform TeamFolder
///
///
/// To get more information about TeamFolder, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1/projects.locations.teamFolders)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
/// ## Example Usage
///
/// ### Dataform Team Folder Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataformTeamFolderBasic = new gcp.dataform.TeamFolder("dataform_team_folder_basic", {
///     region: "us-central1",
///     displayName: "Basic TeamFolder-_11380",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataform_team_folder_basic = gcp.dataform.TeamFolder("dataform_team_folder_basic",
///     region="us-central1",
///     display_name="Basic TeamFolder-_11380")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataformTeamFolderBasic = new Gcp.Dataform.TeamFolder("dataform_team_folder_basic", new()
///     {
///         Region = "us-central1",
///         DisplayName = "Basic TeamFolder-_11380",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataform.NewTeamFolder(ctx, "dataform_team_folder_basic", &dataform.TeamFolderArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Basic TeamFolder-_11380"),
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
/// resource "gcp_dataform_teamfolder" "dataform_team_folder_basic" {
///   region       = "us-central1"
///   display_name = "Basic TeamFolder-_11380"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataform.TeamFolder;
/// import com.pulumi.gcp.dataform.TeamFolderArgs;
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
///         var dataformTeamFolderBasic = new TeamFolder("dataformTeamFolderBasic", TeamFolderArgs.builder()
///             .region("us-central1")
///             .displayName("Basic TeamFolder-_11380")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataformTeamFolderBasic:
///     type: gcp:dataform:TeamFolder
///     name: dataform_team_folder_basic
///     properties:
///       region: us-central1
///       displayName: Basic TeamFolder-_11380
/// ```
///
///
/// ## Import
///
/// TeamFolder can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/teamFolders/{{teamfolder_id}}`
/// * `{{project}}/{{region}}/{{teamfolder_id}}`
/// * `{{region}}/{{teamfolder_id}}`
/// * `{{teamfolder_id}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TeamFolder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/teamFolder:TeamFolder default projects/{{project}}/locations/{{region}}/teamFolders/{{teamfolder_id}}
/// $ pulumi import gcp:dataform/teamFolder:TeamFolder default {{project}}/{{region}}/{{teamfolder_id}}
/// $ pulumi import gcp:dataform/teamFolder:TeamFolder default {{region}}/{{teamfolder_id}}
/// $ pulumi import gcp:dataform/teamFolder:TeamFolder default {{teamfolder_id}}
/// $ pulumi import gcp:dataform/teamFolder:TeamFolder default {{name}}
/// ```
class TeamFolder extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Required. The TeamFolder's user-friendly name.
  late final pulumi.Output<String> displayName;
  /// The TeamFolder's name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region
  late final pulumi.Output<String> region;
  /// The unique identifier for the TeamFolder.
  late final pulumi.Output<String> teamfolderId;

  /// Creates a new [TeamFolder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamFolder]. {@macro pulumi_dataform_team_folder_team_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamFolder(
    String name, {
    TeamFolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/teamFolder:TeamFolder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    teamfolderId = registerOutput<String>('teamfolderId');
  }

  /// Gets an existing [TeamFolder] resource's state with the given [name] and [id].
  static TeamFolder get(
    String name,
    pulumi.Input<String> id, {
    TeamFolderState? state,
  }) {
    return TeamFolder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TeamFolder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/teamFolder:TeamFolder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    teamfolderId = registerOutput<String>('teamfolderId');
  }
}
