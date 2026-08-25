import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_args.dart';
import 'folder_state.dart';

/// A resource represents a Dataform folder
///
///
/// To get more information about Folder, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1/projects.locations.folders)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
/// ## Example Usage
///
/// ### Dataform Folder Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataformFolderBasic = new gcp.dataform.Folder("dataform_folder_basic", {
///     region: "us-central1",
///     displayName: "Basic Folder-_89313",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataform_folder_basic = gcp.dataform.Folder("dataform_folder_basic",
///     region="us-central1",
///     display_name="Basic Folder-_89313")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataformFolderBasic = new Gcp.Dataform.Folder("dataform_folder_basic", new()
///     {
///         Region = "us-central1",
///         DisplayName = "Basic Folder-_89313",
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
/// 		_, err := dataform.NewFolder(ctx, "dataform_folder_basic", &dataform.FolderArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Basic Folder-_89313"),
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
/// resource "gcp_dataform_folder" "dataform_folder_basic" {
///   region       = "us-central1"
///   display_name = "Basic Folder-_89313"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataform.Folder;
/// import com.pulumi.gcp.dataform.FolderArgs;
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
///         var dataformFolderBasic = new Folder("dataformFolderBasic", FolderArgs.builder()
///             .region("us-central1")
///             .displayName("Basic Folder-_89313")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataformFolderBasic:
///     type: gcp:dataform:Folder
///     name: dataform_folder_basic
///     properties:
///       region: us-central1
///       displayName: Basic Folder-_89313
/// ```
///
/// ### Dataform Folder Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataformFolderRoot = new gcp.dataform.Folder("dataform_folder_root", {
///     region: "us-central1",
///     displayName: "Root Folder-_60646",
/// });
/// const dataformFolderFull = new gcp.dataform.Folder("dataform_folder_full", {
///     region: "us-central1",
///     displayName: "Nested Folder-_9394",
///     containingFolder: dataformFolderRoot.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataform_folder_root = gcp.dataform.Folder("dataform_folder_root",
///     region="us-central1",
///     display_name="Root Folder-_60646")
/// dataform_folder_full = gcp.dataform.Folder("dataform_folder_full",
///     region="us-central1",
///     display_name="Nested Folder-_9394",
///     containing_folder=dataform_folder_root.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataformFolderRoot = new Gcp.Dataform.Folder("dataform_folder_root", new()
///     {
///         Region = "us-central1",
///         DisplayName = "Root Folder-_60646",
///     });
///
///     var dataformFolderFull = new Gcp.Dataform.Folder("dataform_folder_full", new()
///     {
///         Region = "us-central1",
///         DisplayName = "Nested Folder-_9394",
///         ContainingFolder = dataformFolderRoot.Id,
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
/// 		dataformFolderRoot, err := dataform.NewFolder(ctx, "dataform_folder_root", &dataform.FolderArgs{
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Root Folder-_60646"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataform.NewFolder(ctx, "dataform_folder_full", &dataform.FolderArgs{
/// 			Region:           pulumi.String("us-central1"),
/// 			DisplayName:      pulumi.String("Nested Folder-_9394"),
/// 			ContainingFolder: dataformFolderRoot.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_dataform_folder" "dataform_folder_root" {
///   region       = "us-central1"
///   display_name = "Root Folder-_60646"
/// }
/// resource "gcp_dataform_folder" "dataform_folder_full" {
///   region            = "us-central1"
///   display_name      = "Nested Folder-_9394"
///   containing_folder = gcp_dataform_folder.dataform_folder_root.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataform.Folder;
/// import com.pulumi.gcp.dataform.FolderArgs;
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
///         var dataformFolderRoot = new Folder("dataformFolderRoot", FolderArgs.builder()
///             .region("us-central1")
///             .displayName("Root Folder-_60646")
///             .build());
///
///         var dataformFolderFull = new Folder("dataformFolderFull", FolderArgs.builder()
///             .region("us-central1")
///             .displayName("Nested Folder-_9394")
///             .containingFolder(dataformFolderRoot.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataformFolderRoot:
///     type: gcp:dataform:Folder
///     name: dataform_folder_root
///     properties:
///       region: us-central1
///       displayName: Root Folder-_60646
///   dataformFolderFull:
///     type: gcp:dataform:Folder
///     name: dataform_folder_full
///     properties:
///       region: us-central1
///       displayName: Nested Folder-_9394
///       containingFolder: ${dataformFolderRoot.id}
/// ```
///
///
/// ## Import
///
/// Folder can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/folders/{{folder_id}}`
/// * `{{project}}/{{region}}/{{folder_id}}`
/// * `{{region}}/{{folder_id}}`
/// * `{{folder_id}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Folder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/folder:Folder default projects/{{project}}/locations/{{region}}/folders/{{folder_id}}
/// $ pulumi import gcp:dataform/folder:Folder default {{project}}/{{region}}/{{folder_id}}
/// $ pulumi import gcp:dataform/folder:Folder default {{region}}/{{folder_id}}
/// $ pulumi import gcp:dataform/folder:Folder default {{folder_id}}
/// $ pulumi import gcp:dataform/folder:Folder default {{name}}
/// ```
class Folder extends pulumi.CustomResource {
  /// Optional. The containing Folder resource name.
  /// Format: `projects/*/locations/*/folders/*` or `projects/*/locations/*/teamFolders/*`.
  late final pulumi.Output<String?> containingFolder;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Required. The Folder's user-friendly name.
  late final pulumi.Output<String> displayName;
  /// The unique identifier for the Folder.
  late final pulumi.Output<String> folderId;
  /// The Folder's name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region
  late final pulumi.Output<String> region;

  /// Creates a new [Folder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Folder]. {@macro pulumi_dataform_folder_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Folder(
    String name, {
    FolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/folder:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    containingFolder = registerOutput<String?>('containingFolder');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    folderId = registerOutput<String>('folderId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Folder] resource's state with the given [name] and [id].
  static Folder get(
    String name,
    pulumi.Input<String> id, {
    FolderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Folder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Folder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/folder:Folder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containingFolder = registerOutput<String?>('containingFolder');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    folderId = registerOutput<String>('folderId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Folder] resource.
  Folder.reference(String urn)
    : super(
        'gcp:dataform/folder:Folder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    containingFolder = registerOutput<String?>('containingFolder');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    folderId = registerOutput<String>('folderId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
